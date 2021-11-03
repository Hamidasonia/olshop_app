import 'package:flutter/material.dart';

class KeranjangPage extends StatefulWidget {
  const KeranjangPage({Key key}) : super(key: key);


  @override
  State<KeranjangPage> createState() => _KeranjangPageState();
}

class _KeranjangPageState extends State<KeranjangPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Keranjang"),
      ),
      body: const Center(
        child: Text(
          'Keranjang Page',
        ),
      ),
    );
  }
}
