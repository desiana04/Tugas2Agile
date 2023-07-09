import 'package:flutter/material.dart';
import '../widgets/button_drycleaning.dart';
import '../widgets/button_completeWash.dart';
import '../widgets/button_setrika.dart';
import '../widgets/button_wetWash.dart';

class HomeScreen extends StatelessWidget {
  List<String> imgs = [
    "cuci kering.png",
    "setrika 1.png",
    "cucikomplit.png",
    "cucibasah.png"
  ];
  List<String> labels = [
    "Cuci Kering",
    "Setrika",
    "Cuci Komplit",
    "Cuci Basah",
  ];

  void navigateToButtonDrycleaning(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ButtonDrycleaning(),
      ),
    );
  }

  void navigateToButton_completeWash(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Button_completeWash(),
      ),
    );
  }

  void navigateToButton_Setrika(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Button_Setrika(),
      ),
    );
  }

  void navigateToButton_wetWash(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Button_wetWash(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        padding: EdgeInsets.only(top: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hai!",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "selamat datang di LaundryNow",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 10),
                  Center(
                    child: Image.asset('assets/logo 3.png'),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Silahkan memilih jenis layanan yang anda butuhkan",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            GridView.builder(
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemCount: 4,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    if (index == 0) {
                      navigateToButtonDrycleaning(context);
                    } else if (index == 1) {
                      navigateToButton_Setrika(context);
                    } else if (index == 2) {
                      navigateToButton_completeWash(context);
                    } else if (index == 3) {
                      navigateToButton_wetWash(context);
                    }
                  },
                  child: Container(
                    margin: EdgeInsets.all(5),
                    padding: EdgeInsets.symmetric(vertical: 15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 4,
                          spreadRadius: 2,
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset('assets/${imgs[index]}'),
                        Text(
                          labels[index],
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF7165D6),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
