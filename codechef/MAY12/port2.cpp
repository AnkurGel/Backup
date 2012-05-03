#include<iostream>
#include<stdio.h>
#include<string.h>
#include<math.h>
using namespace std;
bool testnum(long double x)
{
  while(x!=0)
  {
    int a=x%(long double(10));
    x=x/10;
    if((a!=4)&&(a!=7)) return false;
  }
  return true;
}
int countfours(long double x)
{
  int fours=0;
  while(x!=0)
  {
    int a=x%10;
    x=x/10;
    if(a==4) fours++;
  }
  return fours;
}
int countsevens(long double x)
{
  int sevens=0;
  while(x!=0) 
  {
    int a=x%10;
    x=x/10;
    if(a==7) sevens++;
  }
  return sevens;
}
int main()
{
  int n, ans_dig=-1;
  cin>>n;
  long double l,u,i;
  l=pow(10,n-1)*4; u=pow(10,n)-1;
  for(i=l; i<=u; i++)
  {
    //if i is purely made of 4s and 7s:
    cout<<"\n\tTesting: "<<int(i);
    if (testnum(i))
    {
      cout<<"\nFound: "<<i<<endl;
      if((countfours(i)%7==0)&&(countsevens(i)%4==0))
      {
        ans_dig=countfours(i);
        break;
      }
    }
  }
  cout<<ans_dig;
  return 0;
}
