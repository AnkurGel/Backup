#include<iostream>
#include<stdio.h>
using namespace std;
int main()
{
	long int sum=2;
	long int i,j; int flag;
	for(i=3; i<=2000000; i++)
	{	flag=0;
		for(j=2; j<=i/2; j++)
		{
			if(i%j==0)
			{ flag=1; break;}
		}
		if(flag==0)
			sum+=i;
	}
	cout<<sum;
	return 0;
}
