#include <ros.h>
#include <std_msgs/Int16.h>
#include <std_msgs/Float32.h>

ros::NodeHandle nh;


#define RightOutputA 4
#define RightOutputB 5
#define LeftOutputA 2
#define LeftOutputB 3

int RightCurrentStateA;
int RightCurrentStateB;

int LeftCurrentStateA;
int LeftCurrentStateB;

int RightLastStateA;
int RightLastStateB;

int LeftLastStateA;
int LeftLastStateB;

int RightCounter=0; 
int LeftCounter=0; 


std_msgs::Int16 RightWheelTicks;
ros::Publisher rightPub("rwheel", &RightWheelTicks);

std_msgs::Int16 RightWheeldistance;
ros::Publisher rightdis("right_distance", &RightWheeldistance);

std_msgs::Int16 LeftWheelTicks;
ros::Publisher LeftPub("lwheel", &LeftWheelTicks);

std_msgs::Int16 LeftWheeldistance;
ros::Publisher Leftdis("left_distance", &LeftWheeldistance);


void RightWheelCount(){
//  if(RightWheelTicks.data==92){
//    RightWheelTicks.data=0;
//    RightCounter++;
//  }
  
    RightCurrentStateA = digitalRead(RightOutputA);
    RightCurrentStateB = digitalRead(RightOutputB);
  if(RightCurrentStateA!=RightLastStateA || RightCurrentStateB!=RightLastStateB){
    if(RightLastStateA==RightLastStateB){
    if(RightLastStateA==RightCurrentStateA)
    {
      //moving forward 
      RightWheelTicks.data++;
    }
    else {
      //moving backward
      RightWheelTicks.data--;
    }

  }

  else{
    
  if(RightLastStateA !=RightCurrentStateA){
    //moving forward
    RightWheelTicks.data++;

  }
  else{
    //moving backward
   RightWheelTicks.data--;
  }
  }
    RightLastStateA=RightCurrentStateA;
    RightLastStateB=RightCurrentStateB;





}
    RightWheeldistance.data =(2 * 3.14 * 19.5)*(double)(RightCounter+(double)(RightWheelTicks.data/92.0));

}
void LeftWheelCount(){
//  if(LeftWheelTicks.data==92){
//    LeftWheelTicks.data=0;
//    LeftCounter++;
//  }
  
    LeftCurrentStateA = digitalRead(LeftOutputA);
    LeftCurrentStateB = digitalRead(LeftOutputB);
  if(LeftCurrentStateA!=LeftLastStateA || LeftCurrentStateB!=LeftLastStateB){
    if(LeftLastStateA==LeftLastStateB){
    if(LeftLastStateA==LeftCurrentStateA)
    {
      //moving forward 
      LeftWheelTicks.data++;
    }
    else {
      //moving backward
      LeftWheelTicks.data--;
    }

  }

  else{
    
  if(LeftLastStateA !=LeftCurrentStateA){
    //moving forward
    LeftWheelTicks.data++;

  }
  else{
    //moving backward
   LeftWheelTicks.data--;
  }
  }
    LeftLastStateA=LeftCurrentStateA;
    LeftLastStateB=LeftCurrentStateB;

}
    LeftWheeldistance.data =(2 * 3.14 * 19.5)*(double)(LeftCounter+(double)(LeftWheelTicks.data/92.0));
}
  void setup() {
  
  // Set encoder pins as inputs
  pinMode(RightOutputA,INPUT);
  pinMode(RightOutputB,INPUT);
  pinMode(LeftOutputA,INPUT);
  pinMode(LeftOutputB,INPUT);

  // ROS Setup
  nh.getHardware()->setBaud(115200);
  nh.initNode();
  nh.advertise(rightPub);
  nh.advertise(rightdis);
  nh.advertise(LeftPub);
  nh.advertise(Leftdis);
  // Setup Serial Monitor

  RightLastStateA=digitalRead(RightOutputA);
  RightLastStateB=digitalRead(RightOutputB);
  
  LeftLastStateA=digitalRead(LeftOutputA);
  LeftLastStateB=digitalRead(LeftOutputB);
}
 
void loop() {
  RightWheelCount();
  rightPub.publish( &RightWheelTicks );
  rightdis.publish( &RightWheeldistance );
  LeftWheelCount();
  LeftPub.publish( &LeftWheelTicks );
  Leftdis.publish( &LeftWheeldistance );

    delay(2);
    nh.spinOnce();
  }
