import java.util.Scanner;

public class joon_1712 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		Scanner sc = new Scanner(System.in);
		
		int a = sc.nextInt();
		int b = sc.nextInt();
		int c = sc.nextInt();
		
		// a + b*n = n*c
		// n = a / (c-b)
		//¼ÕÀÍºÐ±âÁ¡: n+1
		
		if (b >= c) { System.out.println(-1);}
		else { System.out.println(a/(c-b)+1);}
	}

}
