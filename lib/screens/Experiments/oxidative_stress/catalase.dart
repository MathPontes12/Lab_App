import 'package:flutter/material.dart';
import 'package:lfcpm_lab/Themes/my_themes.dart';
import 'package:lfcpm_lab/components/border.dart';

class Catalase extends StatefulWidget {
  const Catalase({super.key});

  @override
  State<Catalase> createState() => _Catalase();
}


class _Catalase extends State<Catalase> {
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    final List pages = [_ProtocoloCatalase(), _ReagentesCatalase(), ];
    return Scaffold(
      appBar: CustomAppBar(title: 'LFCPM'),
      //drawer: MainDrawler(),                                                       // botao de menu chamando a classe criada do menu em components

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).primaryColor,
        fixedColor: Colors.white,
        iconSize: 30,
        selectedFontSize: 15,
        unselectedFontSize: 15,

        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.paste_rounded),
            label: 'Protocolo',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.receipt_long_rounded),
            label: 'Reagentes',
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

class _ProtocoloCatalase extends StatelessWidget {
  const _ProtocoloCatalase();

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                      Text('CATALASE', style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),),
                      Text('A catalase é uma hemoproteína que catalisa a degradação de H2O2-.'
                        ' Na reação, uma das moléculas de peróxido de hidrogênio é oxidada a oxigênio molecular e a outra é reduzida à água.' 
                        ' Está localizada, principalmente, no peroxissoma, entretanto, outras organelas, como as mitocôndrias podem conter alguma atividade da CAT.'
                        ' A catálise do H2O2- é importante, pois na presença de Fe2+, leva à formação de redical hidroxil (Reação de Fenton),'
                        ' altamente reativo e danoso às biomoléculas.' 
                        ' O método mede a atividade da enzima produzida pelas células e organelas em resposta à quantidade de peróxido de hidrogênio,'
                        ' medido por espectrofotometria (240 nm).\n Referências: Aebi, H. (1984).'
                        ' Catalase in vitro. Met Enzymol, 105: 121 - 126.', textAlign: TextAlign.justify,),
                      Text('Preparo das Amostras:', style: TextStyle(fontWeight: FontWeight.bold),),
                      Text('Tecido: Homogeneizar no potter 10x em tampão KPE + Sonicar 3 x 10 segundos'
                            '(Potência 4 - Intervalo de 2 segundos) + Centrifugar 3000Xg por 10 minutos Plasma: Absoluto Célula: Placas lisadas em tampão KPE'
                            , textAlign: TextAlign.justify,),
                      Text('Padronização:', style: TextStyle(fontWeight: FontWeight.bold),),
                      Text('Mesmo protocolo padrão, mudando apenas os reagentes e o tempo.\n'
                            'Tempo -> Início: 0 - Intervalo: 30 s - Duração: 60 s (5 leituras)', textAlign: TextAlign.justify,),
                      Text('Observações:', style: TextStyle(fontWeight: FontWeight.bold),),
                      Text('1) Para leitura da catalase é necessário utilizar cubeta de quartzo, devido ao comprimento de onda\n'
                           '2) Fazer um novo branco cada vez que trocar de grupo\n'
                           '3) Descartar a amostra a cada leitura, lavar a cubeta com água destilada e secar bem', textAlign: TextAlign.justify,),
                      Text('Cálculo:', style: TextStyle(fontWeight: FontWeight.bold),),
                      Text('1) Calcular a quantidade de proteína\n'
                           '2) Diminuir a absorbância da primeira leitura (T=0) pela absorbância da última leitura (T = 60 ou T = 120)\n'
                           '3) Multiplicar o resultado por 2,361 (constante)\n' 
                           '4) Multiplicar a quantidade de amostra utilizada pela quantidade de proteína na amostra correspondente\n'
                           '5) Multiplicar o resultado pela absorbância da primeira leitura (T=0)\n'
                           '6) Dividir o resultado do item 3 pelo resultado do item 5 (U de catalase/ mg de proteína)', textAlign: TextAlign.justify,),
                  
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
        
        
            ),
      );
  }
}

class _ReagentesCatalase extends StatelessWidget {
  const _ReagentesCatalase();

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                      Text('CATALASE', style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),),
                      Text('Reagentes:', style: TextStyle(fontWeight: FontWeight.bold),),
                      Text('1) Solução A - Tampão Fosfato (KPE)\n'
                          '2)Solução B - Tampão com peróxido: 25 mL de KPE para 40 µL de H2O2- (conservar em papel alumínio)', textAlign: TextAlign.justify,),
                      Text('Padronização:', style: TextStyle(fontWeight: FontWeight.bold),),
                      Text('1) Ligar o espectrofotômetro e ajustar com comprimento de onda para 240 nm\n'
                           '2) Tempo -> Início: 0 - Intervalo: 30 s - Duração: 60 s (3 leituras)\n'
                           '3)VALOR DE REFERÊNCIA: Colocar na cubeta 2 mL de KPE e apertar a tecla verde\n' 
                           '4) BRANCO: 2 mL de solução B  - LER\n'
                           '5)AMOSTRA - Tecido: 1800 µL de solução B + 200 µL da amostra - LER\n'
                           '  AMOSTRA - Plasma/células: 1980 µL de solução B + 20 µL da amostra - LER)', textAlign: TextAlign.justify,),
                      Text('Protocolo Adaptado:', style: TextStyle(fontWeight: FontWeight.bold),),
                      Text('Reagentes:', style: TextStyle(fontWeight: FontWeight.bold),),
                      Text('1) Solução A - Soro Fisiológico\n'
                           '2) Solução B - Soro Fisiológico + H2O2-: 24,5 mL de soro + 500 µL de H2O2- (conservar em papel alumínio)', textAlign: TextAlign.justify,), 
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
        
        
            ),
      );
  }
}