import 'package:flutter/material.dart';
import 'home.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo LOGIN'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Icon(Icons.person, size: 30.0), // Icon berada di luar text field
                SizedBox(width: 8.0), // Jarak icon dan text field
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Nama',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.0), // Jarak antar field
            Row(
              children: [
                Icon(Icons.phone, size: 30.0),
                SizedBox(width: 8.0),
                Expanded(
                  child: TextField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      labelText: 'No. HP',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            Row(
              children: [
                Icon(Icons.email, size: 30.0),
                SizedBox(width: 8.0),
                Expanded(
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: 'Email',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 24.0),
               ElevatedButton(
              onPressed: () {
                // Menekan tombol login dan mengarahkan ke HomePage
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>MyHomePage()),
                );
              },
              child: Text('Login'),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 16.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
