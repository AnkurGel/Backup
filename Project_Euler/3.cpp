#include<iostream>
#include<stdio.h>
using namespace std;
bool prime(long double x)
{
  long double i=2; 
  for(; i<=x/2; i++)
  {
    int res=static_cast<int>(x/i); 
    float mod=x-static_cast<float>(res)*i;
    if (mod==0)
      return false;
  }
  return true;

}

int main()
{
  long double x=600851475143, i;
  for(i=x/2; i>=1; i--)
  {
    int res=static_cast<int>(x/i); 
    float mod=x-static_cast<float>(res)*i;
    if((prime(i)==true)&&(mod==0))
    {
      cout<<i;
      break;
    }
  }
  return 0;
}
