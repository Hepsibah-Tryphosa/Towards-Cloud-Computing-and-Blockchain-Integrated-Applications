/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cbchain.utility;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 *
 * @author Ramu Maloth
 */
public class GetDateFormat {
    
    public static String getLongToDate(long millis){
    Date currentDate = new Date(millis);     
       //printing value of Date
       System.out.println("current Date: " + currentDate);     
       DateFormat df = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");     
       //formatted value of current Date
       //System.out.println("Milliseconds to Date: " + df.format(currentDate));
       return df.format(currentDate);
    }
    
}
