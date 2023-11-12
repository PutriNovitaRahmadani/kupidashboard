import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key, required this.onItemSelected})
      : super(key: key);

  final void Function(int) onItemSelected;

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed, // Fixed type for text labels
      backgroundColor: const Color(0xff96ddec),
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(
            icon: Icon(Icons.inventory_rounded), label: "Catat"),
        BottomNavigationBarItem(
            icon: Icon(Icons.business_center_outlined), label: "Produk"),
        BottomNavigationBarItem(
            icon: Icon(Icons.collections_bookmark_outlined), label: "Laporan"),
        BottomNavigationBarItem(icon: Icon(Icons.more_vert), label: "Lainnya"),
      ],
      currentIndex: selectedIndex,
      onTap: (index) {
        widget.onItemSelected(index);
        setState(() {
          selectedIndex = index;
        });
      },
    );
  }
}
