import 'package:flutter/material.dart';

ThemeData colorthemes = ThemeData(
    // classe para mudar o layout seguindo esses atributos

    primarySwatch: Colors.lightGreen,
    primaryColor: Color.fromRGBO(2, 171, 75, 1),       // cor primaria referenciada

    scaffoldBackgroundColor: Colors.white,

    textButtonTheme: TextButtonThemeData()

        
        );

  class MyStyles {
  static const TextStyle sectionTitle = TextStyle(fontSize: 25, fontFamily: 'Times New Roman', color: Color.fromRGBO(27, 82, 51, 1), fontWeight: FontWeight.w600);
  static const TextStyle topicTitle = TextStyle(fontSize: 21, fontFamily: 'Times New Roman', color: Color.fromRGBO(27, 82, 51, 1), fontWeight: FontWeight.w600);
  static const TextStyle buttonText = TextStyle(fontSize: 17, color: Colors.white);

  static final ButtonStyle greenButton = ElevatedButton.styleFrom(
    backgroundColor: Color.fromRGBO(2, 171, 75, 1),
  );
}



class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const CustomAppBar({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).primaryColor,
      title: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Expanded(                   // o expanded é necessario para que o divider ocupe todo espaço dele na row, sem ele, ocupa o minimo, nao aparecendo
        child: Divider(
          color: Colors.white,
          thickness: 1, 
          endIndent: 10,
          indent: 20, // Espaço antes do título
        ),
      ),
          Text(
            title,
            style: const TextStyle(
              fontSize: 34,
              color: Colors.white,
              fontFamily: 'Charm-Regular',
            ),
          ),
          Expanded(
        child: Divider(
          color: Colors.white, 
          thickness: 1, 
          indent: 10,
          endIndent: 20, // Espaço depois do título
        ),
      ),
      ],
      ),
      centerTitle: true,
      toolbarHeight: 100,
      automaticallyImplyLeading: false,
    );
  }
 @override
  Size get preferredSize => const Size.fromHeight(100);     // necessario esse implements por que o scaffold o qual a classe é chamada necessita 
}