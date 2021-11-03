import 'package:flutter/material.dart';
import 'package:olshop_app/constant.dart';
import 'package:olshop_app/users/akun.dart';
import 'package:olshop_app/users/beranda.dart';
import 'package:olshop_app/users/favorite.dart';
import 'package:olshop_app/users/keranjang.dart';
import 'package:olshop_app/users/transaksi.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key key}) : super(key: key);


  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {

  int _bottomNabBar = 0;
  List<Widget> _contain = [
    const BerandaPage(),
    const FavoritePage(),
    const KeranjangPage(),
    const TransaksiPage(),
    const AkunPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _contain[_bottomNabBar],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Palette.bg1,
        type: BottomNavigationBarType.fixed,
        onTap: (index){
          setState(() {
            _bottomNabBar = index;
          });
        },
        currentIndex: _bottomNabBar,
        items: [
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.home,
              color: Palette.bg1,
            ),
            icon: Icon(
              Icons.home,
              color: Colors.grey,
            ),
            label: "Beranda",
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.favorite,
              color: Palette.bg1,
            ),
            icon: Icon(
              Icons.favorite_border,
              color: Colors.grey,
            ),
            label: "Favorite",
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.shopping_cart,
              color: Palette.bg1,
            ),
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.grey,
            ),
            label: "Keranjang",
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.swap_horiz_sharp,
              color: Palette.bg1,
            ),
            icon: Icon(
              Icons.swap_horiz_sharp,
              color: Colors.grey,
            ),
            label: "Transaksi",
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.person,
              color: Palette.bg1,
            ),
            icon: Icon(
              Icons.person_outline,
              color: Colors.grey,
            ),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
