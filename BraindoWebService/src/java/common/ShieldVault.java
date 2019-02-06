/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package common;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.security.Key;
import java.security.KeyFactory;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.NoSuchAlgorithmException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.spec.KeySpec;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;
import java.util.Random;
import javax.crypto.Cipher;
import org.apache.commons.codec.binary.Hex;

/**
 *
 * @author LuisAlejandro
 */
public class ShieldVault {
    private static Cipher rsa;

    public ShieldVault() {
    }

    public String generadorString() {
        String letrasnumeros = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890";
        StringBuilder sb = new StringBuilder();
        Random rnd = new Random();

        while(sb.length() < 18) {
            int index = (int)(rnd.nextFloat() * (float)letrasnumeros.length());
            sb.append(letrasnumeros.charAt(index));
        }

        String stringAleatorio = sb.toString();
        return stringAleatorio;
    }

    public void generarClaves() throws Exception {
        try {
            KeyPairGenerator generadorClaves = KeyPairGenerator.getInstance("RSA");
            KeyPair parClaves = generadorClaves.generateKeyPair();
            PublicKey clavePublica = parClaves.getPublic();
            PrivateKey clavePrivada = parClaves.getPrivate();
            this.guardarClave(clavePublica, "llavepublica.dat");
            this.guardarClave(clavePrivada, "llaveprivada.dat");
        } catch (NoSuchAlgorithmException var5) {
            throw new Exception("Clase: ShieldVault; Metodo: encriptadoPublicaRSA; Excepcion: NoSuchAlgorithmException; Mensaje: " + var5.getMessage(), var5);
        } catch (Exception var6) {
            throw new Exception("Clase: ShieldVault; Metodo: encriptadoPublicaRSA; Excepcion: Exception; Mensaje: " + var6.getMessage(), var6);
        }
    }

    private PublicKey cargarClavePublica(String rutaClavePublica) throws Exception {
        try {
            FileInputStream fis = new FileInputStream(rutaClavePublica);
            int numBytes = fis.available();
            byte[] bytes = new byte[numBytes];
            fis.read(bytes);
            fis.close();
            KeyFactory fabricaClaves = KeyFactory.getInstance("RSA");
            KeySpec keySpec = new X509EncodedKeySpec(bytes);
            PublicKey clavePublica = fabricaClaves.generatePublic(keySpec);
            return clavePublica;
        } catch (Exception var8) {
            throw new Exception("Clase: ShieldVault; Metodo: cargarClavePublica; Excepcion: Exception; Mensaje: " + var8.getMessage(), var8);
        }
    }

    private PrivateKey cargarClavePrivada(String rutaClavePrivada) throws Exception {
        try {
            FileInputStream fis = new FileInputStream(rutaClavePrivada);
            int numBytes = fis.available();
            byte[] bytes = new byte[numBytes];
            fis.read(bytes);
            fis.close();
            KeyFactory fabricaClaves = KeyFactory.getInstance("RSA");
            KeySpec keySpec = new PKCS8EncodedKeySpec(bytes);
            PrivateKey clavePrivada = fabricaClaves.generatePrivate(keySpec);
            return clavePrivada;
        } catch (Exception var8) {
            throw new Exception("Clase: ShieldVault; Metodo: cargarClavePrivada; Excepcion: Exception; Mensaje: " + var8.getMessage(), var8);
        }
    }

    private void guardarClave(Key clave, String nombreArchivo) throws Exception {
        FileOutputStream fos = null;

        try {
            byte[] bytesClave = clave.getEncoded();
            fos = new FileOutputStream(nombreArchivo);
            fos.write(bytesClave);
        } catch (FileNotFoundException var13) {
            throw new Exception("Clase: ShieldVault; Metodo: guardarClave; Excepcion: NoSuchAlgorithmException; Mensaje: " + var13.getMessage(), var13);
        } catch (Exception var14) {
            throw new Exception("Clase: ShieldVault; Metodo: guardarClave; Excepcion: Exception; Mensaje: " + var14.getMessage(), var14);
        } finally {
            try {
                fos.close();
            } catch (Exception var12) {
                throw new Exception("Clase: ShieldVault; Metodo: guardarClave; Excepcion: Exception; Mensaje: " + var12.getMessage(), var12);
            }
        }

    }

    public String encriptadoPublicaRSA(String texto, String rutaClavePublica) throws Exception {
        try {
            rsa = Cipher.getInstance("RSA/ECB/PKCS1Padding");
            rsa.init(1, this.cargarClavePublica(rutaClavePublica));
            byte[] encriptado = rsa.doFinal(texto.getBytes());
            String textoEncriptado = new String(Hex.encodeHex(encriptado));
            return textoEncriptado;
        } catch (NoSuchAlgorithmException var5) {
            throw new Exception("Clase: ShieldVault; Metodo: encriptadoPublicaRSA; Excepcion: NoSuchAlgorithmException; Mensaje: " + var5.getMessage(), var5);
        } catch (Exception var6) {
            throw new Exception("Clase: ShieldVault; Metodo: encriptadoPublicaRSA; Excepcion: Exception; Mensaje: " + var6.getMessage(), var6);
        }
    }

    public String encriptadoPrivadaRSA(String texto, String rutaClavePrivada) throws Exception {
        try {
            rsa = Cipher.getInstance("RSA/ECB/PKCS1Padding");
            rsa.init(1, this.cargarClavePrivada(rutaClavePrivada));
            byte[] encriptado = rsa.doFinal(texto.getBytes());
            String textoEncriptado = new String(Hex.encodeHex(encriptado));
            return textoEncriptado;
        } catch (NoSuchAlgorithmException var5) {
            throw new Exception("Clase: ShieldVault; Metodo: encriptadoPrivadaRSA; Excepcion: NoSuchAlgorithmException; Mensaje: " + var5.getMessage(), var5);
        } catch (Exception var6) {
            throw new Exception("Clase: ShieldVault; Metodo: encriptadoPrivadaRSA; Excepcion: Exception; Mensaje: " + var6.getMessage(), var6);
        }
    }

    public String desencriptadoPublicaRSA(String texto, String rutaClavePublica) throws Exception {
        try {
            rsa = Cipher.getInstance("RSA/ECB/PKCS1Padding");
            rsa.init(2, this.cargarClavePublica(rutaClavePublica));
            byte[] bytesDesencriptados = rsa.doFinal(Hex.decodeHex(texto));
            String textoDesencriptado = new String(bytesDesencriptados);
            return textoDesencriptado;
        } catch (NoSuchAlgorithmException var5) {
            throw new Exception("Clase: ShieldVault; Metodo: desencriptadoPublicaRSA; Excepcion: NoSuchAlgorithmException; Mensaje: " + var5.getMessage(), var5);
        } catch (Exception var6) {
            throw new Exception("Clase: ShieldVault; Metodo: desencriptadoPublicaRSA; Excepcion: Exception; Mensaje: " + var6.getMessage(), var6);
        }
    }

    public String desencriptadoPrivadaRSA(String texto, String rutaClavePrivada) throws Exception {
        try {
            rsa = Cipher.getInstance("RSA/ECB/PKCS1Padding");
            rsa.init(2, this.cargarClavePrivada(rutaClavePrivada));
            byte[] bytesDesencriptados = rsa.doFinal(Hex.decodeHex(texto));
            String textoDesencriptado = new String(bytesDesencriptados, "UTF-8");
            return textoDesencriptado;
        } catch (NoSuchAlgorithmException var5) {
            throw new Exception("Clase: ShieldVault; Metodo: desencriptadoPrivadaRSA; Excepcion: NoSuchAlgorithmException; Mensaje: " + var5.getMessage(), var5);
        } catch (Exception var6) {
            throw new Exception("Clase: ShieldVault; Metodo: desencriptadoPrivadaRSA; Excepcion: Exception; Mensaje: " + var6.getMessage(), var6);
        }
    }

    public String encriptadoMovilPublicaRSA(String texto, InputStream clavePublica) throws Exception {
        try {
            rsa = Cipher.getInstance("RSA/ECB/PKCS1Padding");
            rsa.init(1, this.cargarClavePublicaMovil(clavePublica));
            byte[] encriptado = rsa.doFinal(texto.getBytes());
            String textoEncriptado = new String(Hex.encodeHex(encriptado));
            return textoEncriptado;
        } catch (NoSuchAlgorithmException var5) {
            throw new Exception("Clase: ShieldVault; Metodo: encriptadoPublicaRSA; Excepcion: NoSuchAlgorithmException; Mensaje: " + var5.getMessage(), var5);
        } catch (Exception var6) {
            throw new Exception("Clase: ShieldVault; Metodo: encriptadoPublicaRSA; Excepcion: Exception; Mensaje: " + var6.getMessage(), var6);
        }
    }

    private PublicKey cargarClavePublicaMovil(InputStream clavePublicaMovil) throws Exception {
        try {
            int numBytes = clavePublicaMovil.available();
            byte[] bytes = new byte[numBytes];
            clavePublicaMovil.read(bytes);
            clavePublicaMovil.close();
            KeyFactory fabricaClaves = KeyFactory.getInstance("RSA");
            KeySpec keySpec = new X509EncodedKeySpec(bytes);
            PublicKey clavePublica = fabricaClaves.generatePublic(keySpec);
            return clavePublica;
        } catch (Exception var7) {
            throw new Exception("Clase: ShieldVault; Metodo: cargarClavePublica; Excepcion: Exception; Mensaje: " + var7.getMessage(), var7);
        }
    }
}
