import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Scanner;

public class joon_2108 {
	static int ave(int [] arr) {
		double sum = 0;
		for (int i=0;i<arr.length;i++) {
			sum += arr[i];
		}
		double result = sum/arr.length; 
		return (int)Math.round(result);
	}
	
	static int middle(int [] arr) {
		int mid = arr[arr.length/2];
		return mid;
	}
	
	static int manny(int [] arr) {
		int cnt[] = new int [8001];
		ArrayList <Integer> al = new ArrayList<Integer>();
		int max = Integer.MIN_VALUE;
		
		//counting
		for (int i =0;i<arr.length;i++) {
			if (arr[i]<0) {
				cnt[Math.abs(arr[i])+4000]++;
			}else {
				cnt[arr[i]]++;
			}
		}
		
		//max 
		int idx = 0;
		for (int i = 0;i<cnt.length;i++) {
			if (cnt[i]!=0 && cnt[i]>max) {
				max = cnt[i];
				idx = i ;
			}
		}
		
		//max값들 al 저장
		for (int i=0;i<cnt.length;i++) {
			int x = i;
			if (cnt[i] == max) {
				if (i>4000) {
					x-=4000;
					x*=-1;
					al.add(x);
				}
				else
					al.add(i);
			}			
		}
		Collections.sort(al);
		if(al.size()>1) return al.get(1);
		else return al.get(0);
	}
	
	static int range(int [] arr) {
		return arr[arr.length-1] - arr[0];
	}
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner sc = new Scanner(System.in);
		int num = sc.nextInt();
		int arr[] = new int [num];
		for (int i=0;i<num;i++) {
			arr[i] = sc.nextInt();
		}
		Arrays.sort(arr);
		System.out.println(ave(arr));
		System.out.println(middle(arr));
		System.out.println(manny(arr));
		System.out.println(range(arr));
	}
}
