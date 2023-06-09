/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cbchain.utility;

/**
 *
 * @author Ramu Maloth
 */
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

/**
 * Java program to convert  Millisecond to Date in Java. Java API provides utility
 * method to get millisecond from Date and convert Millisecond to Date in Java.
 * @author http://javarevisited.blogspot.com
 */
public class MillisToDate {
 
    public static void main(String args[]) {
     
       //Converting milliseconds to Date using java.util.Date
       //current time in milliseconds
       long currentDateTime = System.currentTimeMillis();
     
       //creating Date from millisecond
       Date currentDate = new Date(currentDateTime);
     
       //printing value of Date
       System.out.println("current Date: " + currentDate);
     
       DateFormat df = new SimpleDateFormat("dd:MM:yy:HH:mm:ss");
     
       //formatted value of current Date
       System.out.println("Milliseconds to Date: " + df.format(currentDate));
     
       //Converting milliseconds to Date using Calendar
       Calendar cal = Calendar.getInstance();
       cal.setTimeInMillis(currentDateTime);
       System.out.println("Milliseconds to Date using Calendar:"
               + df.format(cal.getTime()));
     
       //copying one Date's value into another Date in Java
       Date now = new Date();
       Date copiedDate = new Date(now.getTime());
     
       System.out.println("original Date: " + df.format(now));
       System.out.println("copied Date: " + df.format(copiedDate));
    }
     
}



