import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart'; // Wajib untuk widget gaya iOS

class LoadingCupertino extends StatelessWidget {
  const LoadingCupertino({super.key});

  @override
  Widget build(BuildContext context) {
    // Widget ini dibuat sebagai komponen, sehingga MaterialApp dihilangkan.
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center, 
        children: <Widget>[
          // Tombol gaya iOS
          CupertinoButton.filled( // Menggunakan .filled agar lebih menonjol
            child: const Text("Button dari basic_widget"),
            onPressed: () {
              // ignore: avoid_print
              print("Button dari LoadingCupertino Pressed!");
            },
          ),
          const SizedBox(height: 20),
          // Indikator loading gaya iOS
          const Text("Aktivitas Loading Widget:", style: TextStyle(fontSize: 14, color: Colors.black54)),
          const SizedBox(height: 10),
          const CupertinoActivityIndicator(
            radius: 12.0,
            color: CupertinoColors.systemGreen,
          ), 
        ],
      ),
    );
  }
}
