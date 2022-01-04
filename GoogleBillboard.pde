public final static String e = "2.7182818284590452353602874713526624977572470936999595749669676277240766303535475945713821785251664274274663919320030599218174135966290435";  
public String alte;
public void setup()  
{            
    //your code here 
    alte = e.substring(0, 1) + e.substring(2);
    for (int i = 0; i < alte.length()-10; i++){
      double current = Double.parseDouble(alte.substring(i, i+10));
      if (isPrime(current)){
        System.out.println(current);
        break;
      }
  }
}  
public void draw()  
{   
  //not needed for this assignment
}  
public boolean isPrime(double dNum)  
{   
    //your code here   
    if (dNum < 2){
      return false;
    }
    for (int i = 2; i <= Math.sqrt(dNum); i++){
      if (((double)dNum / i)%1 == 0){
        return false;
      }
    }
    return true;  
} 
