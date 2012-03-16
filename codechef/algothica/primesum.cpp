#include<iostream>
#include<stdio.h>
using namespace std;
int main()
{
int i, j, f, c, s,L;
cin>>c;
while(c>0)
{
	cin>>L;
	s=0;

if(L > 0)
      {
             for(j = 2; j <= L; j++)
             {
                     f = 1;
                     for(i = 2; i <= j/2; i++)
                     {
                           if(j % i == 0)
                           {
                                  f = 0;
                                  break;
                           }
                     }
                     if(f == 1)
                        {
                                   s += j;
                        }
                           
             }
             cout<< s;
             
      }
c--;
}
return 0;
}
