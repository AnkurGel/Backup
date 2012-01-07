#include<iostream>
#include<stdio.h>
using namespace std;
void swap(int arr[], int n)
{
	int temp=arr[0], temp2,i;
	for(i=1; i<n; i++)
	{
		if(temp<arr[i])
		{
			temp2=temp; temp=arr[i]; arr[i]=temp2;
		}
	}
	arr[0]=temp;
}
void collect(int arr2[], int arr[], int n)
{
	int i; for(i=0; i<n; i++) {arr2[i]=arr[i]%10;}
}
void push(int sum[], int ctr, int ele)
{ sum[ctr]=ele; }
int max(int arr2[], int n)
{int i, max=0; for(i=0 ;i<n; i++){if(max<arr2[i]) max=arr2[i]; } return max;}

void collect2(int arr[], int n)
{
	int i; for(i=0; i<n; i++) {arr[i]/=10;}
}
int main()
{
	cout<<"\nNumber of numbers? : "; int n; cin>>n;
	int arr2[5], sum[5], ctr=0;
	int c[5], i; 
	for(i=0; i<n; i++)
		cin>>c[i];
	swap(c, n);
	while(c[0]!=0)
	{
		collect(arr2, c,n);
		push(sum,ctr, max(arr2,n)); ctr++;
		collect2(c, n);
	}
	cout<<"\nLucky Sum: "; for(i=ctr-1; i>=0; i--) cout<<sum[i];
	return 0;
}
/*
C++ implementation of https://gist.github.com/1546971
Problem:http://www.codechef.com/JAN12/problems/LUCKY3
*/
