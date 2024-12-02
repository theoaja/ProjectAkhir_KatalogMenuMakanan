import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projek_akhir/screens/home.dart';
import 'package:projek_akhir/screens/list_menu.dart';
import 'package:projek_akhir/screens/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AboutPage extends StatelessWidget {
  Future<void> _logout(BuildContext context) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('isLoggedIn');
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => LoginPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About', style: GoogleFonts.poppins(color: Colors.black)),
        backgroundColor: Color(0xFFF5F5DC), // Warna cream muda
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Card(
                elevation: 8,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                color: Color(0xFFF5F5DC), // Warna cream muda
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage('assets/profile.jpg'),
                      ),
                      SizedBox(width: 20),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Nama: Theo Berasa',
                              style: GoogleFonts.poppins(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(
                                    255, 45, 45, 44), // Warna cream medium
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              'Jurusan: Prodi Sistem Informasi',
                              style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  color: Color.fromARGB(
                                      255, 44, 43, 42)), // Warna cream medium
                            ),
                            SizedBox(height: 8),
                            Text(
                              'Kampus: UPN Veteran Yogyakarta',
                              style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  color: Color.fromARGB(
                                      255, 44, 43, 42)), // Warna cream medium
                            ),
                            SizedBox(height: 8),
                            Text(
                              'Asal : Pakpak Bharat',
                              style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  color: Color.fromARGB(
                                      255, 44, 43, 42)), 
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            
            SizedBox(height: 20.0),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10.0),
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Color(0xFFF5F5DC), 
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 8,
                    offset: Offset(2, 4), 
                  ),
                ],
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage(
                        'assets/profile2.jpg'), 
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Nama: Natan Montilalu',
                          style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 45, 45, 44),
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Jurusan:Prodi Sistem Informasi',
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            color: Color.fromARGB(255, 44, 43, 42),
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Kampus: UPN Veteran Yogyakarta',
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            color: Color.fromARGB(255, 44, 43, 42),
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Asal: Kalimantan',
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            color: Color.fromARGB(255, 44, 43, 42),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.0),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10.0),
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Color(0xFFF5F5DC), 
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 8,
                    offset: Offset(2, 4),
                  ),
                ],
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage(
                        'assets/profile3.jpg'), 
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Nama: Andri Sheva',
                          style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 45, 45, 44),
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Jurusan: Prodi Sistem Informasi',
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            color: Color.fromARGB(255, 44, 43, 42),
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Kampus: UPN Veteran Yogyakarta',
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            color: Color.fromARGB(255, 44, 43, 42),
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Asal: Palembang',
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            color: Color.fromARGB(255, 44, 43, 42),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () => _logout(context),
              child: Center(
                child: Text(
                  'Logout',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
              style: ElevatedButton.styleFrom(
                elevation: 8,
                padding: EdgeInsets.all(22),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                backgroundColor: Color(0xFFB3A99A), 
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFFF5F5DC), 
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
        currentIndex: 2,
        selectedItemColor: Color(0xFFB3A99A), 
        unselectedItemColor: Colors.black,
        onTap: (index) {
          if (index == 0) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
          } else if (index == 1) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => MenuPage()),
            );
          }
        },
      ),
    );
  }
}
