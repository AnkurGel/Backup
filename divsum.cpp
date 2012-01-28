#include<iostream>
using namespace std;
int main()
{
	int n,x,i,sum;
	cin>>n;
	while(n>0)
	{
		sum=0;
		cin>>x;
		for(i=1; i<=x/2; i++)
			if(x%i==0) sum+=i;
		cout<<sum<<endl;
		n--;
	}
	return 0;
}
