#include<iostream>
#include<stdio.h>
using namespace std;
int main()
{
	int dis;
	cin>>dis;
	int arr[10], arr2[10];
	int x, y, i=0, j=0, n=0;
	while(1)
	{
		cin>>x>>y;
		if(x==0&&y==0) break;
		else
		{
			arr[n]=x; arr2[n]=y;
			n+=1;
		}
	}
	//sorting 
	int temp, small;
	for(i=0; i<n-1; i++)
	{
		for(j=0; j<n-1-i; j++)
		{
			if(arr[j]<arr[j+1])
			{
				temp = arr[j];
				small = arr2[j];
				arr[j]=arr[j+1];
				arr2[j]=arr2[j+1];
				arr[j+1]=temp;
				arr2[j+1]=small;
			}
		}
	} int tot_rods=0;
	for(i=0; i<n; i++)
	{
		for(j=0; j<arr2[i]; j++)
		{
			if(dis>arr[i])
			{
				dis-=arr[i];
				tot_rods++;
			}
		}
	}
	tot_rods-=2;
	if(tot_rods<=0)
		cout<<"\nNo solution possible";
	else
		cout<<tot_rods;
	return 0;
}
