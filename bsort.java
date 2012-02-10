import java.io.*;
class bubble
{
	int x[];
	public bubble(int a[])
	{
		for(int i=0; i<a.length; i++)
			x=a;
	}
	public void arr()
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
}
class bsort
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
		bubble obj=new bubble(arr);
		System.out.println("Bubble Sorted array: ");
		obj.arr();
	}
}
