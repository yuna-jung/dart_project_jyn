void main() {
  int score=84; //타입 선언
  
  if(score>=90){ //if 조건문을 통해 등급별 점수 범위 지정
  print("이 학생의 점수는 $score이며, 등급은 A등급입니다!"); //출력값 설정
  } else if(score>=80){ 
  print("이 학생의 점수는 $score이며, 등급은 B등급입니다!");
  } else {
  print("이 학생 점수는 $score이며, 등급은 C등급입니다!");
  }
}