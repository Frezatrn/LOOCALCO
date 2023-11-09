import 'package:flutter/material.dart';

class InfoAkun extends StatelessWidget {
  const InfoAkun({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Account Info"),
      ),
      body: const Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Name: Freza"), // Ganti dengan informasi akun Anda
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.email),
              title: Text("Email: your.freza123@example.com"), // Ganti dengan alamat email Anda
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text("Phone: +628276152789"), // Ganti dengan nomor telepon Anda
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.agriculture_outlined),
              title: Text("Address: KARAWANG CITY "), // Ganti dengan nomor telepon Anda
            ),
            Divider(),

            
            // Tambahkan informasi akun lainnya di sini sesuai kebutuhan
          ],
          
        ),
      ),
    );
  }
}