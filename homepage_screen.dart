import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/register_screen.dart';

import 'homelogin_screen.dart';
import '../widgets/../widgets/navbar_roots.dart';

class Homepage_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            SizedBox(height: 15),
            Align(
              alignment: Alignment.centerLeft,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'LaundryNow',
                  style: TextStyle(
                    color: Color(0xDD000000),
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 50),
            Padding(
              padding: EdgeInsets.all(20),
              child: Image.asset('assets/logo 1.png'),
            ),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Material(
                    color: Color(0xFF7165D6),
                    borderRadius: BorderRadius.circular(30),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Homelogin_screen(),
                            ));
                      },
                      child: Container(
                        height: 56.79,
                        child: Center(
                          child: Text(
                            'Login',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Material(
                    color: Color(0xFF7165D6),
                    borderRadius: BorderRadius.circular(30),
                    child: InkWell(
                      onTap: () {
                        var push = Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Register_screen(),
                            ));
                      },
                      child: Container(
                        height: 56.79,
                        child: Center(
                          child: Text(
                            'Register',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
