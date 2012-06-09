#include<iostream>
#include<stdio.h>
using namespace std;
int marr[50], narr[50], nmarr[50];
int breakme(int x, int target[])
{
  unsigned long int i=0, temparr[6];
  while(x!=0)
  {
    unsigned long int rem=x%10;
    temparr[i]=rem; 
    i++; x/=10;
  }
  for(int c=0; c<i; c++)
    target[c]=temparr[i-1-c];
}
int check_recycle(unsigned long int n, unsigned long int m)
{
  unsigned long int i, j; for(i=0; i<50; i++) { narr[i]=-1; marr[i]=-1; nmarr[i]=-1;}
  breakme(m,marr); breakme(n,narr);
  unsigned long int flag=0, number_of_times;
  unsigned long int iterate_till=0; for(i=0; i<50; i++, iterate_till++){ if(marr[i]==-1) break;}
  for(number_of_times=1; number_of_times<=iterate_till; number_of_times++)
  {
    for(i=1; i<=iterate_till; i++)
      nmarr[i%iterate_till]=marr[i-1];
    for(i=0; i<iterate_till; i++)
      marr[i]=nmarr[i];
    for(i=0; i<iterate_till; i++)
      if (marr[i]!=narr[i]) break;
    if (i==iterate_till) return 1;
  }
  return 0;
}
int main()
{

  unsigned long int cases; cin>>cases;
  unsigned long int ctr=0, m, n, k;
  unsigned long int low_l, high_l; 
  for(unsigned long int instance=1; instance<=cases; instance++)
  {
    ctr=0;
    cin>>low_l>>high_l;
    for(m=low_l; m<high_l; m++)
    {
      for(n=m+1; n<=high_l; n++)
        if (check_recycle(m,n)==1) ctr++;
    }
    cout<<"Case #"<<instance<<": "<<ctr<<endl;
  }
  return 0;
}
