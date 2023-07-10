import 'package:flutter/material.dart';

void main() => runApp(const NotificationScreen());

class NotificationScreen extends StatelessWidget {
  final bool isSaved;
  const NotificationScreen({Key? key, this.isSaved = false});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ProgressIndicatorExample(),
    );
  }
}

class ProgressIndicatorExample extends StatefulWidget {
  const ProgressIndicatorExample({Key? key});

  @override
  State<ProgressIndicatorExample> createState() =>
      _ProgressIndicatorExampleState();
}

class _ProgressIndicatorExampleState extends State<ProgressIndicatorExample>
    with TickerProviderStateMixin {
  late AnimationController controller;
  double _downloadPercentage = 0.0;

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 10),
    )..addListener(() {
        setState(() {
          _downloadPercentage = controller.value;
          if (_downloadPercentage == 1.0) {
            showCompletionDialog();
          }
        });
      });

    controller.forward();

    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void showCompletionDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Cucian Selesai'),
          content: const Text('Driver kami sedang dalam perjalanan'),
          actions: <Widget>[
            TextButton(
              child: const Text('Lihat Lokasi Driver'),
              onPressed: () {
                // Tambahkan logika untuk membuka halaman "Lihat Lokasi Driver" di sini
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(
              'Kami akan memberikan pemberitahuan jika proses cuci sudah selesai dan akan segera kami antar ke tempat anda',
              style: Theme.of(context).textTheme.headline6,
            ),
            CircularProgressIndicator(value: _downloadPercentage),
          ],
        ),
      ),
    );
  }
}
