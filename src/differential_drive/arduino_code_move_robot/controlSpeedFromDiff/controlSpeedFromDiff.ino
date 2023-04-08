#include <ros.h>
#include <ros/time.h>
#include <std_msgs/Float32.h>
ros::NodeHandle nh;
#define PWM1 11  //left motor
#define PWM2 10 //right motor
#define DR1 13
#define DR2 12
#define LOOPTIME 10

void right_motor(const std_msgs::Float32& right_vel);
void left_motor(const std_msgs::Float32& left_vel);

ros::Subscriber<std_msgs::Float32> right_sub( "rmotor_cmd", right_motor );
ros::Subscriber<std_msgs::Float32>  left_sub( "lmotor_cmd", left_motor );

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
// put your setup code here, to run once:
nh.getHardware()->setBaud(115200);
//Serial.begin(115200);
nh.initNode();
nh.subscribe( right_sub);
nh.subscribe (left_sub) ;
pinMode (DR1 , OUTPUT) ;
pinMode (DR2 , OUTPUT) ;
pinMode (PWM2 , OUTPUT);
pinMode (PWM1 , OUTPUT) ;
}
void loop() {
// put your main code here, to run repeatedly:
nh.spinOnce();
}
