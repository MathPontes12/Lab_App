import 'package:flutter/material.dart';
import 'package:lfcpm_lab/Themes/my_themes.dart';
import 'package:lfcpm_lab/components/border.dart';

class He extends StatelessWidget {
  const He({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'LFCPM'), 
      
      body:  Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20),
        child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: DefaultTextStyle(
              style:TextStyle(
                fontSize: 17,
                color: Colors.black,
                height: 2,
                fontFamily: 'Times New Roman'
                ),
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0, bottom: 40),
                child: Border_Content(
                  boxContent: Column(
                    spacing: 30,
                    children: [
                      Text('Hematoxilina & Eosina', style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),),
                      Text('1) Separar as lâminas e deixar na estufa 60ºC por 10 minutos (ajustar de acordo com o tecido)\n\n'
                            '2) (Bateria da frente) Xilol I e xilol II por 3 minutos cada\n\n'
                            '3) (Bateria da frente) Álcool 100%, 90% e 70% por 2 minutos cada\n\n'
                            '4) Mergulho em água destilada\n\n'
                            '5) Hematoxilina por 1 minutos (testar o tempo)\n\n'
                            '6) Mergulho em água destilada\n\n'
                            '7) Eosina por 1 minutos (testar o tempo)\n\n'
                            '8) (Bateria de trás) Álcool 70%, 90% e 100% por 2 minutos cada\n\n'                         
                            '9) (Bateria de trás) Xilol I e xilol II por 3 minutos cada\n\n'
                            '10) Colar lamínula: Pingar D.P.X em cima dos cortes e colar a lamínula limpa sem formar bolhas.\n\n'
                            '11) Deixar secar', 
                            textAlign: TextAlign.justify,),
                      
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
        
        
            ),
      )
      
      );
    
    
    
  }
}