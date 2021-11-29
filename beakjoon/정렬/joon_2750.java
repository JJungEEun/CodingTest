import java.util.Scanner;

public class joon_2750 {
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner sc = new Scanner(System.in);
		int n = sc.nextInt();
		int temp;
		Integer [] list = new Integer [n];
		for (int i = 0; i < n; i++) {
			list[i] = sc.nextInt();
		}
		
		for (int i = list.length - 1; i >= 0; i--) {
			for (int j = 0; j <= i -1 ; j++) {
				if (list[i] < list[j]) {
					temp = list[i];
					list[i] = list[j];
					list[j] = temp;
				}
			}
		}
		
		for (int i = 0; i<list.length;i++) {
			System.out.println(list[i]);
		}
		sc.close();
	}

}
