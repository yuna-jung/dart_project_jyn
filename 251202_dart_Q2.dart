void main() {
  List<String>cart=["티셔츠","바지","모자","티셔츠","바지"];
  if(cart.isEmpty){
    print("장바구니가 비었습니다.");
    return;
  }

Map<String,int> price={
'티셔츠':10000,
'바지':8000,
'모자':4000
}; //상품별 가격 지정

int totalprice=0; //판매가 총합을 지정할 변수 선언

for(String item in cart){ //판매가 총합 계산을 위한 for-in문 사용
if(price.containsKey(item)){
totalprice+=price[item]!;
} else{
  print("$item 상품의 가격 정보가 없습니다.");
}
}
print("장바구니에 ${totalprice}원 어치를 담으셨네요!"); //판매가 총합


if(totalprice>20000){ //2만원 이상이면, 10%할인 적용
  double discountedprice=totalprice*0.1; //할인율 계산 시 결과값이 소수점으로 나와서 double로 타입 지정
  double total=totalprice-discountedprice;
  print("할인 금액: ${discountedprice.round()}원"); //정수로 결과값 도출을 위해 .round 사용
  print("최종적으로 결제하실 금액은 ${total.round()}원 입니다!");
} else{
  print("");
}
 }