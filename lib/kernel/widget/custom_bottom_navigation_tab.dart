import 'package:flutter/material.dart';
import 'package:la_golosinadora/kernel/colors/colors_app.dart';

class CustomBottomNavigationTab extends StatelessWidget{
  final int selectedIndex;
  final Function(int) onItemTapped;
  const CustomBottomNavigationTab({Key? key, required this.selectedIndex, required this.onItemTapped});
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(items: const <BottomNavigationBarItem> [
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Inicio'),
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Perfil'),
        BottomNavigationBarItem(icon: Icon(Icons.delivery_dining_outlined), label: 'Pedidos')
      ],
      currentIndex: selectedIndex,
      selectedItemColor: ColorsApp.secondaryColor,
      onTap: onItemTapped,
    );
  }
}