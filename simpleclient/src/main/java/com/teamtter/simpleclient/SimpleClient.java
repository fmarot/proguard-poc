package com.teamtter.simpleclient;

import com.teamtter.simpleservice.SimpleService;

public class SimpleClient {

	public static void main(String args[]) {
		System.out.println("SimpleClient running");
		SimpleService service = new SimpleService();
		int result = service.computePlus(2, 3);
		System.out.println("SimpleClient done: " + result);
	}

}