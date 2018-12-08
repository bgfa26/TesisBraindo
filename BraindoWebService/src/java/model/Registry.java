/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

public class Registry {
    public static String DB_USER = "tesisbraindo";
    public static String DB_PASSWORD = "barron";
    public static String DB_URL = "jdbc:postgresql://localhost/braindo";
    public static String DB_CLASS = "org.postgresql.Driver";
    
    public static int CODE_OK = 200;
    public static int CODE_FAILED = 500;
    public static int CODE_NOTFOUND = 204;
    public static int CODE_RESOURCE_CREATED = 201;
    public static int CODE_NON_EXISTENT_ID = 400;
    public static int CODE_NON_EXISTENT_EMAIL = 300;
    
}
