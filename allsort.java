import java.io.*;
class sort
{
	int x[];
	public sort(int a[])
	{
		for(int i=0; i<a.length; i++)
			x=a;
	}
	public void bubble()
	{
		int temp;
		for(int i=0; i<x.length; i++)
		{
			for(int j=0; j<x.length-i-1; j++)
				if(x[j]>x[j+1])
				{
					temp=x[j];
					x[j]=x[j+1];
					x[j+1]=temp;
				}
		}
		for(int i=0; i<x.length; i++)
			System.out.println(x[i]);
	}
	public void selection()
	{
		int pos, small;
		for(int i=0; i<x.length; i++)
		{
			small=x[i]; pos=i;
			for(int j=i+1; j<x.length; j++)
			{
				if(x[j]<small)
				{ small=x[j]; pos=j;}
			}
			int temp=x[i];
			x[i]=x[pos];
			x[pos]=temp;
		}
		display(x);
	}
	public void display(int a[])
	{
		for(int i=0; i<a.length; i++)
			System.out.println(a[i]);
	}
}

class allsort
{
	public static void main(String args[]) throws IOException
	{
		System.out.println("Enter size of array: "); int size; 
		String in;
		BufferedReader stdin = new BufferedReader(new InputStreamReader(System.in));
		in = stdin.readLine();
		size = Integer.parseInt(in);
		int arr[] = new int[size];
		System.out.println("Start entering elements..");
		for (int i=0; i<size; i++)
		{
			in = stdin.readLine();
			arr[i]=Integer.parseInt(in);
		}
		System.out.println("Your array: ");
		for(int i=0; i<size; i++)
			System.out.println(arr[i]);
		sort obj=new sort(arr); //array passed to class. 
		System.out.println("Which sorting do you want to perform?\n1. Selection\n2. Bubble\n\tEnter choice(1-2): "); 
		in=stdin.readLine(); int choice=Integer.parseInt(in);
		switch(choice)
		{
			case 1:System.out.println("Selection Sorted array: ");
			       obj.selection(); 
			       break;
			case 2: System.out.println("Bubble Sorted array: ");
				obj.bubble();
				break;
		}
	}
}
