#include<iostream>
#include<stdio.h>
#include<string.h>
#include<math.h>
using namespace std;
int countfours(long unsigned int x)
{
  int fours=0;
  while(x!=0)
  {
    int a=x%10;
    x/=10;
    if(a==4) fours++;
  }
  return fours;
}
int countsevens(long unsigned int x)
{
  int sevens=0;
  while(x!=0) 
  {
    int a=x%10;
    x/=10;
    if(a==7) sevens++;
  }
  return sevens;
}

int testnum(long unsigned int x)
{
  while(x!=0)
  {
    cout<<"\n\tchecking: "<<x;
    int a=x%10;
    x/=10;
    if((a!=4)&&(a!=7)){cout<<"\n\t"<<a<<" is neither 4 nor 7: "; return -1;}
  }
  return 1;
}

int main()
{
  if(testnum(444477)==1)
    cout<<"\nVERIFIED";

  cout<<countfours(444477)<<"\t"<<countsevens(444477);
  long double x; cin>>x;
  cout<<x;
  cout<<"\n"<<x/10;
  return 0;
}
