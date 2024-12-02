import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projek_akhir/screens/konversi_matauang.dart';
import 'package:projek_akhir/screens/konversi_waktu.dart';
import 'package:projek_akhir/screens/home.dart';
import 'package:projek_akhir/screens/about.dart';
import 'package:projek_akhir/screens/add_reservasi.dart';

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu', style: GoogleFonts.poppins(color: Colors.black)),
        backgroundColor: Color(0xFFF5F5DC), // Warna cream muda
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(20.0),
        children: [
          OutlinedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CurrencyConverterScreen()),
              );
            },
            child: Center(
              child: Text(
                'Currency Convertion',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Color(0xFFB3A99A), // Warna cream medium
                ),
              ),
            ),
            style: ElevatedButton.styleFrom(
              elevation: 5,
              padding: EdgeInsets.all(22),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              side: BorderSide(color: Color(0xFFB3A99A), width: 2), // Warna cream medium
            ),
          ),
          SizedBox(height: 20),
          OutlinedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TimeConverterWidget()),
              );
            },
            child: Center(
              child: Text(
                'Time Convertion',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Color(0xFFB3A99A), // Warna cream medium
                ),
              ),
            ),
            style: ElevatedButton.styleFrom(
              elevation: 5,
              padding: EdgeInsets.all(22),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              side: BorderSide(color: Color(0xFFB3A99A), width: 2), // Warna cream medium
            ),
          ),
          SizedBox(height: 20),
          OutlinedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AddReservation()),
              );
            },
            child: Center(
              child: Text(
                'Add Reservation',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Color(0xFFB3A99A), // Warna cream medium
                ),
              ),
            ),
            style: ElevatedButton.styleFrom(
              elevation: 5,
              padding: EdgeInsets.all(22),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              side: BorderSide(color: Color(0xFFB3A99A), width: 2), // Warna cream medium
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFFF5F5DC), // Warna cream muda
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.black),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list, color: Colors.black),
            label: 'Menu',
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              backgroundImage: AssetImage('assets/profile.jpg'),
              radius: 12,
            ),
            label: 'About',
          ),
        ],
        currentIndex: 1,
        selectedItemColor: Color(0xFFB3A99A), // Warna cream medium
        unselectedItemColor: Colors.black,
        onTap: (index) {
          if (index == 0) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
          } else if (index == 2) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => AboutPage()),
            );
          }
        },
      ),
    );
  }
}
