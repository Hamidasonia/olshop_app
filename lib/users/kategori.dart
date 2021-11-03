import 'package:flutter/material.dart';

class KategoriPage extends StatefulWidget {
  const KategoriPage({Key key}) : super(key: key);


  @override
  State<KategoriPage> createState() => _KategoriPageState();
}

class _KategoriPageState extends State<KategoriPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Kategori Page',
        ),
      ),
    );
  }
}
