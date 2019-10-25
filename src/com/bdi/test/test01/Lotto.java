package com.bdi.test.test01;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Random;

public class Lotto {

	public static void main(String[] args) {
		List<Integer> lt = new ArrayList<Integer>();
		Random r = new Random();
		for (int i = 0; i < 6; i++) {
			int rNum = r.nextInt(45) + 1;
			if (lt.indexOf(rNum) == -1) {
				lt.add(rNum);
			} else {
				i--;
			}
		}
		Collections.sort(lt);
		System.out.println(lt);

		/*
		 * for(int num=0;num<5;num++) { int[] nums = new int [6]; for(int
		 * i=0;i<nums.length;i++) { nums[i] = r.nextInt(45)+1; for(int j =i-1;j>=0;j--)
		 * { if(nums[i]==nums[j]) { i--; break; } } } lt.add(nums[0]); lt.add(nums[1]);
		 * lt.add(nums[2]); lt.add(nums[3]); lt.add(nums[4]); lt.add(nums[5]);
		 * 
		 * System.out.println(lt); lt = new ArrayList<Integer>(); }
		 */
	}
}
