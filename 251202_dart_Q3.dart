import 'dart:math';

void main(){
  Set<int> lotto={}; //내가 랜덤으로 뽑을 숫자가 담기는 Set
  Random random=Random(); //랜덤으로 숫자 발급

  while(lotto.length<6){ //반복문으로 랜덤 발급 숫자 길이가 6 이하가 될 때까지 반복
lotto.add(1+random.nextInt(45)); //nextInt(number)는 0부터 시작하기 때문에 연산식 사용
  }

  print("발급한 로또 번호: $lotto");

  Set<int> win={9,19,29,35,37,38}; //당첨 번호 Set
  Set<int> matched=win.intersection(lotto); //랜덤 번호와 당첨 번호가 겹치는 값들을 모은 Set

  int count=matched.length; //겹치는 숫자의 갯수를 셈
  if(count>=5){ //if 조건문을 통해 조건에 따른 당첨 여부 확인
    print("당첨 여부:1등 당첨");
  } else if(count==4){
      print("당첨 여부: 2등 당첨");
    }else if(count==3){
      print("당첨 여부: 3등 당첨");
    } else{
      print("당첨 여부: 당첨 실패!");
    }

    lotto.clear(); //Set의 값을 초기화
    print("현재 발급한 로또 번호: $lotto");
  }




