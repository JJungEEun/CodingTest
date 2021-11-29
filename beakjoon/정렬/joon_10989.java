import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.util.ArrayList;
import java.util.Collections;

public class joon_10989 {
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		BufferedReader BR = new BufferedReader(new InputStreamReader(System.in));
		BufferedWriter BW = new BufferedWriter(new OutputStreamWriter(System.out));
		try {
			int num = Integer.parseInt(BR.readLine());
			int arr[] = new int[10001];
			for (int i = 0; i < num; i++) {
				arr[Integer.parseInt(BR.readLine())]++; //카운팅배열
			}
			for (int i = 0; i <= 10000; i++) {
				if (arr[i] != 0) {
					for (int j = 0 ; j <arr[i]; j++ ) {
						BW.write(String.valueOf(i)+"\n");
					}
				}
			}
		BR.close();
		BW.close();
		}catch(Exception e) {	
		}
	}
}
