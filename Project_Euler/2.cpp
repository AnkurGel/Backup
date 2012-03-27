#include<iostream>
#include<stdio.h>
using namespace std;

int main()
{
	long unsigned int arr[4000003], i;
	arr[0]=0; arr[1]=1; arr[2]=2;
	long unsigned int sum=2;
	for(i=3; i<=4000001; i++)
	{
		arr[i]=arr[i-1]+arr[i-2];
		if(arr[i]%2==0)sum+=arr[i];
	}
	cout<<sum;
	return 0;
}
