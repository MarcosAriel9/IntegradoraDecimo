import 'package:flutter/material.dart';
import 'package:la_golosinadora/config/navigation/account_navigation.dart';
import 'package:la_golosinadora/config/navigation/home_navigation.dart';
import 'package:la_golosinadora/kernel/widget/custom_bottom_navigation_tab.dart';
import 'package:la_golosinadora/config/navigation/pedidos_navigation.dart';


class Menu extends StatefulWidget{
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int _selectIndex = 0; //_encapsulamiento
  final homeNavigationKey = GlobalKey<NavigatorState>();
  final accountNavigationKey = GlobalKey<NavigatorState>();
  void _onItemTapped(int index){
    setState(() {
      _selectIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectIndex,
        children: const [HomeNavigation(), AccountNavigation(), PedidosNavigation()],
      ),
      bottomNavigationBar: CustomBottomNavigationTab(selectedIndex: _selectIndex, onItemTapped: _onItemTapped),
    );
  }
}