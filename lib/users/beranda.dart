import 'package:flutter/material.dart';
import 'package:olshop_app/constant.dart';
import 'package:olshop_app/users/depanpage.dart';
import 'package:olshop_app/users/kategori.dart';

class BerandaPage extends StatefulWidget {
  const BerandaPage({Key key}) : super(key: key);

  @override
  State<BerandaPage> createState() => _BerandaPageState();
}

class _BerandaPageState extends State<BerandaPage>
    with SingleTickerProviderStateMixin {
  TabController _controller;
  int _activeTab;

  @override
  void initState() {
    super.initState();
    _controller = TabController(vsync: this, length: 2);
    _controller.addListener(_setActiveTab);
  }

  void _setActiveTab() {
    _activeTab = _controller.index;
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          onTap: () {},
          readOnly: true,
          style: TextStyle(fontSize: 15),
          decoration: InputDecoration(
              hintText: "Search",
              prefixIcon: Icon(Icons.search, color: Palette.orange),
              contentPadding: EdgeInsets.symmetric(vertical: 10.0),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: new BorderSide(color: Colors.white),
              ),
              fillColor: Color(0xfff3f3f4),
              filled: true),
        ),
        backgroundColor: Palette.bg1,
        bottom: TabBar(
          controller: _controller,
          indicatorColor: Palette.orange,
          labelColor: Palette.orange,
          unselectedLabelColor: Colors.grey,
          labelPadding: EdgeInsets.all(0),
          tabs: [
            Tab(text: 'Beranda'),
            Tab(text: 'Kategori'),
          ],
        ),
      ),
      body: TabBarView(
        physics: NeverScrollableScrollPhysics(),
        controller: _controller,
        children: [
          DepanPage(),
          KategoriPage(),
        ],
      )
    );
  }
}
