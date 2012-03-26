#include<math.h>
#include<iostream>
#include<stdio.h>
using namespace std;
int main()
{
	long unsigned int n, i,j;
	long unsigned int ca; cin>>ca;
	while(ca>0)
	{
	cin>>n;int flag=0;
	if (n==1) flag=1;
	else
	{
	for(i=1; i<=n/2; i++)
	{
		for(j=1; j<=n/2; j++)
		{
			if(n==(pow(i,2)+pow(j,2)))
			{	flag=1; break;}
		}
	}
	}
	if(flag==1)
		cout<<"YES"<<endl;
	else
		cout<<"NO"<<endl;
	ca-=1;
	}
	return 0;
}
