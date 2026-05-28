/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package projekjokitugas;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.swing.JOptionPane;

public class Koneksi {

    private static Connection koneksi;

    public static Connection getKoneksi() {

        try {

            String url = "jdbc:mysql://localhost:3306/joki_tugas";
            String user = "root";
            String pass = "";

            koneksi = DriverManager.getConnection(url, user, pass);

            System.out.println("Koneksi Berhasil");

        } catch (SQLException e) {

            JOptionPane.showMessageDialog(null, e);
        }

        return koneksi;
    }
}

/**
 *
 * @author ASUS
 */

   
