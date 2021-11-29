import java.util.Arrays;
import java.util.Scanner;

public class joon_1427 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner sc = new Scanner(System.in);
		
		String num = sc.nextLine();
		int size = num.length();
		char [] arr = new char[size];
		
		for (int i = 0 ;i < num.length();i++) {
			arr[i] = num.charAt(i); //문자 하나씩 숫자로 받기 
		}
		Arrays.sort(arr);
		for (int i = arr.length-1;i>=0;i--) {
			System.out.print(arr[i]);
		}
		sc.close();
	}

}