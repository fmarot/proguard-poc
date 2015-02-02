package com.teamtter.simpleservice;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class SimpleService {

	private static final Logger log = LoggerFactory.getLogger(SimpleService.class);

	public static void main(String args[]) {
		System.out.println("SimpleService running");
		log.warn("OK, logging with SLF4J !!!");
	}

	public int computePlus(int i, int j) {
		return i + j;
	}

}