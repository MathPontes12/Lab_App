import 'package:flutter/material.dart';
import 'package:lfcpm_lab/Themes/my_themes.dart';
import 'package:lfcpm_lab/screens/Protocols.dart';

import 'package:lfcpm_lab/screens/main_page.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    final List pages = [MainPage(), Protocols()];
    return Scaffold(
      appBar: CustomAppBar(title: 'LFCPM',),
      
    //drawer: MainDrawler(),                                                       // botao de menu chamando a classe criada do menu em components
    
    bottomNavigationBar: BottomNavigationBar(
    backgroundColor: Theme.of(context).primaryColor,
    fixedColor: Colors.white,
    iconSize: 30,
    selectedFontSize: 15,
    unselectedFontSize: 15,
    
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.notes_rounded),
            label: 'Pagina Inicial',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.paste_rounded),
            label: 'Protocolos',
          ),
        ],
    
      //selectedItemColor: AppColors.bottomNavigationBarIconColor,
      currentIndex: _currentPage,
      onTap: (index) {
        setState(() {
          _currentPage = index;
        });
      },
    ),
    
   
    body: pages.elementAt(_currentPage),
    );
  }
}
