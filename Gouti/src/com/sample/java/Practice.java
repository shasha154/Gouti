package com.sample.java;

import java.io.File;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.util.List;

public class Practice {
public static void main(String[] args) throws IOException {
	File file = new File("state_city.csv");
    List<String> lines = Files.readAllLines(file.toPath(),StandardCharsets.UTF_8);
    for (String line : lines) {
    	if(!line.equals(""))
    	{
        String[] array = line.split(",");
        System.out.println(array[1]);
    }}
}
}
