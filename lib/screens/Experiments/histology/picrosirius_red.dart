import 'package:flutter/material.dart';
import 'package:lfcpm_lab/components/border.dart';

class PicrosiriusRed extends StatelessWidget {
  const PicrosiriusRed({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(       // barra no topo e seu conteudo
        backgroundColor: Theme.of(context).primaryColor,                         // theme.of(context). serve para acionar elementos do arquivo colortheme
        title: Text('LFCPM', style: TextStyle(fontSize: 40, color: Colors.white, fontFamily: 'Charm-Regular')),
        centerTitle: true,
        toolbarHeight: 100,
        iconTheme: IconThemeData(size: 40, color: Colors.white),               // muda o estilo dos icones do app bar, no caso, o drawer (botao de menu)
      ), 
      
      body:  Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20, bottom: 40),
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
                padding: const EdgeInsets.only(top: 20.0),
                child: Border_Content(
                  boxContent: Column(
                    spacing: 30,
                    children: [
                      Text('Picrosirius Red', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                      Text('1) Separar as lâminas e deixar na estufa 60ºC por 10 minutos (ajustar de acordo com o tecido)\n\n'
                            '2) (Bateria da frente) Xilol I e xilol II por 3 minutos cada\n\n'
                            '3) (Bateria da frente) Álcool 100%, 90% e 70% por 2 minutos cada\n\n'
                            '4) Mergulho em água destilada\n\n'
                            '5) Picrosirius Red por 1 hora (testar o tempo)\n\n'
                            '6) Mergulho em água ácida 2x (em dois bécker de 500 mL)\n\n'                          
                            '7) (Bateria de trás) Álcool 70%, 90% e 100% por 2 minutos cada\n\n'                         
                            '8) (Bateria de trás) Xilol I e xilol II por 3 minutos cada\n\n'
                            '9) Colar lamínula: Pingar D.P.X em cima dos cortes e colar a lamínula limpa sem formar bolhas.\n\n'
                            '10) Deixar secar', 
                            textAlign: TextAlign.justify,),
                      Text('Preparo do Álcool Ácido:', style: TextStyle(fontWeight: FontWeight.bold),),
                       Text('Adicionar 5 mL de ácido acético em 1 L de água destilada', textAlign: TextAlign.justify,),
                       Text('Preparo do Picrosirius Red:', style: TextStyle(fontWeight: FontWeight.bold),),
                       Text('Adicionar 0,5 g de sirius red (Direct Red 80) em 500 mL de ácido pícrico', textAlign: TextAlign.justify,)
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