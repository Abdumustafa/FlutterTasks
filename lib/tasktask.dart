void main() {
  int marks= 100;
  if(marks>100)
  {

    print("Don't Be Smart Enter your Marks Between Limit");
  }
  else
  {
    switch(marks/10)
    {
      case 10 :
      case 9 :

        print(" Your Grade is: A");
        break;
      case 8 :

        print(" Your Grade is: B" );
        break;
      case 7 :

        print(" Your Grade is: C" );
        break;
      case 6 :

        print("Your Grade is: D" );
        break;
      case 5 :

        print(" Your Grade is: E" );
        break;
      case 4 :

        print("Your Grade is: E--");
        break;
      default :

        print("You Grade is: F or Fail");
    }
  }
}
void main(){
  int num1 =5;
  int num2 =5;
  int num3 =10;
  int sum = num1+num2+num3;
  double avri =sum / 3;
  print(avri);
}
