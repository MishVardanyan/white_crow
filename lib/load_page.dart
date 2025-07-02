import 'package:flutter/material.dart';

class LoadingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Լոգո
            Image.asset(
              'assets/images/crow.jpg',
              width: 150, // Կարգավորեք ըստ ձեր պատկերների չափերի
              height: 150,
            ),
            SizedBox(height: 20),
            // Խրախուսող արտահայտություն
            Text(
              '“Единственная известная мне роскошь – роскошь человеческого общения.”',
              style: TextStyle(
                fontSize: 16,
                color: Colors.green,
                fontStyle: FontStyle.italic,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),
            // Հեղինակ
            Text(
              'Антуан де Сент-Экзюпери',
              style: TextStyle(
                fontSize: 14,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),
            // Լոադեր
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: LoadingScreen(),
  ));
}
