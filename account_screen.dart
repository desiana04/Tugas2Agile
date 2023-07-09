import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/home_screen.dart';
import 'package:flutter_application_1/screen/homepage_screen.dart';

class AccountScreen extends StatefulWidget {
  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Akun Saya'),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              'Amora Albertina',
              style: TextStyle(fontSize: 24),
            ),
          ),
          Expanded(
            child: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                return GridView.count(
                  crossAxisCount: 1,
                  childAspectRatio:
                      (constraints.maxWidth / 1) / (constraints.maxHeight / 4),
                  children: [
                    _buildMenuItem('Nama', Icons.person, Colors.white, () {}),
                    _buildMenuItem('Beranda', Icons.home, Colors.white, () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(),
                        ),
                      );
                    }),
                    _buildMenuItem(
                      'Voucher',
                      Icons.card_giftcard,
                      Colors.white,
                      () {
                        // Tambahkan logika untuk menavigasi ke halaman voucher
                      },
                    ),
                    _buildMenuItem('Logout', Icons.logout, Colors.white, () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Homepage_screen(),
                        ),
                      );
                    }),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMenuItem(
    String title,
    IconData iconData,
    Color color,
    VoidCallback onTap,
  ) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(width: 10),
            Icon(
              iconData,
              size: 48,
            ),
            SizedBox(width: 10),
            Text(
              title,
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
