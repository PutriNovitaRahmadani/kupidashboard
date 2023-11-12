import 'package:kupidashboard/ui/laporan_screen.dart';
import 'package:kupidashboard/ui/produk_screen.dart';
import 'package:kupidashboard/ui/lainnya_screen.dart';
import 'package:kupidashboard/ui/catat_screen.dart';
import 'package:kupidashboard/ui/home_screen.dart';
import 'package:kupidashboard/widgets/bottom_navigation.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int? selectedIndex;

  @override
  Widget build(BuildContext context) {
    List<Widget> screens = const [
      HomeScreen(),
      CatatScreen(),
      ProdukScreen(),
      LaporanScreen(),
      LainnyaScreen(),
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff96ddec),
        iconTheme: IconThemeData(color: Colors.black),
        leading: Icon(Icons.account_circle_outlined, size: 30),
        title: Text(
          "Welcome User",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        titleSpacing: 0,
        actions: const [
          Icon(Icons.notifications_none, size: 30),
        ],
      ),
      body: screens[selectedIndex ?? 0],
      bottomNavigationBar: BottomNavigation(
        onItemSelected: onItemSelected,
      ),
    );
  }

  onItemSelected(index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
