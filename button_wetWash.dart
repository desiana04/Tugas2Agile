import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Button_wetWash extends StatefulWidget {
  @override
  State<Button_wetWash> createState() => _Button_wetWashState();
}

class _Button_wetWashState extends State<Button_wetWash> {
  int weightKg = 0;
  int weightQuantity = 0;
  double pricePerKg = 5000;
  double pricePerQuantity = 3000;

  void incrementWeightKg() {
    setState(() {
      weightKg++;
      weightQuantity = weightKg * 6;
    });
  }

  void decrementWeightKg() {
    if (weightKg > 0) {
      setState(() {
        weightKg--;
        weightQuantity = weightKg * 6;
      });
    }
  }

  void incrementWeightQuantity() {
    setState(() {
      weightQuantity++;
    });
  }

  void decrementWeightQuantity() {
    if (weightQuantity > 0) {
      setState(() {
        weightQuantity--;
      });
    }
  }

  String formatCurrency(double amount) {
    final formatCurrency = NumberFormat.currency(locale: 'id_ID', symbol: 'Rp');
    return formatCurrency.format(amount);
  }

  double calculateTotalPrice() {
    double totalPrice =
        (weightKg * pricePerKg) + (weightQuantity * pricePerQuantity);
    return totalPrice;
  }

  void handlePayment() {
    if (weightKg == 0) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('upss...'),
            content: Text('Kilogram tidak boleh nol'),
            actions: <Widget>[
              ElevatedButton(
                child: Text('OK'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    } else {
      // Logika untuk proses pembayaran
      // ...
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(16),
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Color.fromARGB(255, 176, 167, 167),
            ),
            child: Row(
              children: [
                SizedBox(width: 10),
                Image.asset(
                  "assets/cucibasah.png",
                  height: 90,
                ),
                SizedBox(width: 10),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Cuci Basah",
                      style: TextStyle(
                        color: Color(0xFF7165D6),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 16),
          Text(
            "Layanan ini mencakup mencuci pakaian menggunakan air dan di jemur secara manual tanpa alat pengering",
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 16),
          Container(
            margin: EdgeInsets.all(16),
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.white,
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(width: 10),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Kilogram",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      "Masukkan berat kain",
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 10),
                GestureDetector(
                  onTap: decrementWeightKg,
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey[200],
                    ),
                    child: Icon(Icons.remove),
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  weightKg.toString(),
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 10),
                GestureDetector(
                  onTap: incrementWeightKg,
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey[200],
                    ),
                    child: Icon(Icons.add),
                  ),
                ),
                SizedBox(width: 10),
              ],
            ),
          ),
          SizedBox(height: 16),
          Container(
            margin: EdgeInsets.all(16),
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.white,
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(width: 10),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Quantity",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      "Masukkan per barang",
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 10),
                GestureDetector(
                  onTap: decrementWeightQuantity,
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey[200],
                    ),
                    child: Icon(Icons.remove),
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  weightQuantity.toString(),
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 10),
                GestureDetector(
                  onTap: incrementWeightQuantity,
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey[200],
                    ),
                    child: Icon(Icons.add),
                  ),
                ),
                SizedBox(width: 10),
              ],
            ),
          ),
          SizedBox(height: 16),
          Row(
            children: [
              SizedBox(width: 16),
              Text(
                "Total Harga: ",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                formatCurrency(calculateTotalPrice()),
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.centerRight,
            child: ElevatedButton(
              onPressed: handlePayment,
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Color(0xFFB39DDB),
                padding: EdgeInsets.symmetric(horizontal: 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Text(
                "Bayar",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
