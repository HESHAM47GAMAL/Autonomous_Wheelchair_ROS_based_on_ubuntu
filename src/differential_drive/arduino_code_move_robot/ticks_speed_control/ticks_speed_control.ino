#include <ros.h>
#include <std_msgs/Int16.h>
#include <std_msgs/Float32.h>

ros::NodeHandle nh;

/***************************************************************************************
 *                  Definition 
***************************************************************************************/
/*for Encoder*/
#define RightOutputA 4
#define RightOutputB 5
#define LeftOutputA 2
#define LeftOutputB 3
/*for Power and Direction*/
#define PWM1 11  //left motor
#define PWM2 10 //right motor
#define DR1 13
#define DR2 12

/***************************************************************************************
 *                  Global varaible
***************************************************************************************/
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

/***************************************************************************************
 *                  Function Prototype
***************************************************************************************/
/*for Encoder*/
void RightWheelCount(void);
void LeftWheelCount(void);

/*for Power and Direction*/
void right_motor(const std_msgs::Float32& right_vel);
void left_motor(const std_msgs::Float32& left_vel);

/***************************************************************************************
 *                  Set Publish & Subscribe Nodes 
***************************************************************************************/
/*for Encoder*/
std_msgs::Int16 RightWheelTicks;
ros::Publisher rightPub("rwheel", &RightWheelTicks);
std_msgs::Int16 LeftWheelTicks;
ros::Publisher LeftPub("lwheel", &LeftWheelTicks);

/*for Power and Direction*/
ros::Subscriber<std_msgs::Float32> right_sub( "rmotor_cmd", right_motor );
ros::Subscriber<std_msgs::Float32>  left_sub( "lmotor_cmd", left_motor );

/***************************************************************************************
 *                  Function implementation
***************************************************************************************/
/*for Encoder*/
void RightWheelCount(){
    RightCurrentStateA = digitalRead(RightOutputA);
    RightCurrentStateB = digitalRead(RightOutputB);
  if(RightCurrentStateA!=RightLastStateA || RightCurrentStateB!=RightLastStateB){
    if(RightLastStateA==RightLastStateB)
    {
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

  else
  {
    
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
   
}

void LeftWheelCount(){
  
    LeftCurrentStateA = digitalRead(LeftOutputA);
    LeftCurrentStateB = digitalRead(LeftOutputB);
  if(LeftCurrentStateA!=LeftLastStateA || LeftCurrentStateB!=LeftLastStateB){
    if(LeftLastStateA==LeftLastStateB)
    {
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

  else
  {
    
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
  
}

/*for Power and Direction*/
void right_motor(const std_msgs::Float32& right_vel){
  if( right_vel.data > 0)//move right wheel backword//
  {
//    Serial.println("right forward");
     digitalWrite(DR2,LOW);//clean pin to make direction forward//
  }
  else if(right_vel.data < 0)//move right wheel forward//
  {
//    Serial.println("right back");
    digitalWrite(DR2,HIGH); //set pin to make direction backward//
  }
analogWrite(PWM2, abs(right_vel.data)) ;
}

void left_motor(const std_msgs::Float32& left_vel){
  if( left_vel.data > 0)//move left wheel backword//
  {
//    Serial.println("left forward");
     digitalWrite(DR1,LOW);//clean pin to make direction forward//
  }
  else if(left_vel.data < 0)//move left wheel forward//
  {
//    Serial.println("left back");
    digitalWrite(DR1,HIGH); //set pin to make direction backward//
  }
analogWrite(PWM1,abs(left_vel.data));
}

void setup() {
  //Setup baud rate
  nh.getHardware()->setBaud(115200);
  nh.initNode();
  // Set encoder pins as inputs
  pinMode(RightOutputA,INPUT);
  pinMode(RightOutputB,INPUT);
  pinMode(LeftOutputA,INPUT);
  pinMode(LeftOutputB,INPUT);
  // Set PWM pins for speed
  pinMode (DR1 , OUTPUT) ;
  pinMode (DR2 , OUTPUT) ;
  pinMode (PWM2 , OUTPUT);
  pinMode (PWM1 , OUTPUT) ;
  // start nodes for encoder 
  nh.advertise(rightPub);
  nh.advertise(LeftPub);
  //start nodes for speed control
  nh.subscribe( right_sub);
  nh.subscribe (left_sub) ;

  /*read first value for encoder*/
  RightLastStateA=digitalRead(RightOutputA);
  RightLastStateB=digitalRead(RightOutputB);
  
  LeftLastStateA=digitalRead(LeftOutputA);
  LeftLastStateB=digitalRead(LeftOutputB);
}

void loop() {
  /*call function to handle ticks taken and publish it*/
  RightWheelCount();
  rightPub.publish( &RightWheelTicks );
  LeftWheelCount();
  LeftPub.publish( &LeftWheelTicks );

  nh.spinOnce();

}
