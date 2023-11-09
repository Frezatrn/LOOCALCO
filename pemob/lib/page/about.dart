import 'package:flutter/material.dart';


class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'About This App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AboutPage(),
    );
  }
}

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About This App'),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                'Tentang Aplikasi Ini',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Text(
                'Aplikasi ini adalah contoh sederhana tentang konversi suhu,kalkulator,bmi,dll. '
                'yang dibuat menggunakan Flutter.',
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              Text(
                'New Versi: 1.0.0',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
