import 'package:flutter/material.dart';
import 'package:lfcpm_lab/Themes/my_themes.dart';
import 'package:lfcpm_lab/components/border.dart';

class Tbars extends StatefulWidget {
  const Tbars({super.key});

  @override
  State<Tbars> createState() => _Tbars();
}


class _Tbars extends State <Tbars> {
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    final List pages = [_ProtocoloTbars(), _ReagentesTbars(), ];
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

class _ProtocoloTbars extends StatelessWidget {
  const _ProtocoloTbars();

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
                      Text('TBARS', style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),),
                      Text('Método utilizado para avaliação de estado de oxidação dos ácidos graxos em sistemas biológicos.'
                        ' O dano em lipídeos de membrana é determinado pela formação de subprodutos da liproxidação (malondialeídeo-MDA),' 
                        ' que são substâncias reativas do aquecimento do ácido tiobarbitúrico formadas durante a peroxidação em sistemas de membranas e microssomos.'
                        ' MDA reage com TBA, gerando um produto róseo lido em espectrofotômetro (532 nm).'
                        ' Referência: Draper, H.H; Hadley, M. (1990). Malondialdehyde determination as índex of lipid peroxidation. Meth Enzymol, 186: 421 - 431.' ,
                         textAlign: TextAlign.justify),
                      Text('Preparo das Amostras:', style: TextStyle(fontWeight: FontWeight.bold),),
                      Text('•	Tecido: Homogeneizar no potter 10x em tampão KPE\n'
                            '•	Plasma: Absoluto\n'
                            '•	Célula: Placas lisadas em tampão KPE'
                            , textAlign: TextAlign.justify,),
                      Text('Padronização:', style: TextStyle(fontWeight: FontWeight.bold),),
                      Text('1) Ligar o banho seco com antecedência para atingir a temperatura de 95 ºC\n\n'
                            '2)	Diluir 1 g de TCA para 10 mL de H2O destilada\n\n'
                            '3)	Identificar eppendorfs e pipetar amostra + TCA: \n'
                            '- 400 µL Amostra + 400 µL de TCA (Tecido Adiposo)\n'
                            '- 200 µL Amostra + 400 µL de TCA (LAM e rim)\n'
                            '- 200 µL Amostra + 600 µL de TCA (Plasma)\n\n'
                            '4)	Centrifugar: 2000 RPM por 10 minutos a 4ºC (usamos 15 minutos)\n\n'
                            '5)	Diluir 67 mg de TBA para 10 mL de H2O destilada\n\n'
                            '- Colocar no agitador magnético com aquecimento, tampar e esperar homogeneizar'
                            '6)	Em uma estante, colocar 5 tubos de ensaio para a curva padrão e 1 tubo para cada amostra\n\n'
                            '7)	Pipetar 500 µL do sobrenadante das amostras centrifugadas nos tubos de ensaio\n\n'
                            '8)	Montar a curva de TMP nos tubos de ensaio (Diluição em Reagentes - Item 3)',                           
                            textAlign: TextAlign.justify,),
                      Image.asset('assets/images/TabelaTbars.jpg'),
                      Text('9)	Adicionar 500 µL de TBA em todos os tubos de ensaio (Branco, P1, P3, P5, P7 e amostras)\n\n'
                            '10) Colocar todos os tubos no banho seco por 30 minutos\n\n'
                            '11) Deixar as amostras esfriando por 5 minutos\n\n'
                            '12) Montar a curva na placa de ELISA (200 µL por poço) e ler em 532 nm', textAlign: TextAlign.justify,),                    
                      Text('Cálculo:', style: TextStyle(fontWeight: FontWeight.bold),),
                      Text('1)	Calcular FC médio do TBA: FC = [nmol. TMP]/Abs. Pto\n'
                           '- Levar em consideração µL de TMP utilizada na hora de montar a curva na planilha\n\n'
                           '2)	Multiplicar a absorbância da amostra pela FC média\n\n' 
                           '3)	Dividir o resultado pela quantidade de proteína na amostra (nmol de TBARS/mg de proteína)', textAlign: TextAlign.justify,),
                  
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

class _ReagentesTbars extends StatelessWidget {
  const _ReagentesTbars();

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
                      Text('TBARS', style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),),
                      Text('Reagentes:', style: TextStyle(fontWeight: FontWeight.bold),),
                      Text('1)	TBA (ácido tiobarbitúrico): 0,67 %\n\n'
                          '•	Preparar na hora: 67 mg de TBA para 10 mL de H2O destilada (preferencialmente MiliQ)\n\n'
                          '•	Para cada ponto é preciso 500 µL de TBA (calcular 4 pontos a mais)\n\n' 
                          '2)	TCA (ácido tricloroacético): 10 % ácido tricloroacético\n\n'
                          '3)	TMP (1,1,3,3 - tetrametoxipropano): Padrão de uso é 2x10-9 moles/mL\n'
                          '(D- 0,997 g/mL ; PM - 167,2 g ; 6,09M = 0,0061 moles/mL)'
                          , textAlign: TextAlign.justify,),
                      Text('PREPARO DAS SOLUÇÕES - TMP:', style: TextStyle(fontWeight: FontWeight.bold),),
                      Text('SOLUÇÃO A (pode congelar): 10 µL de TMP de 500 µL de H2O destilada (agitar e esperar 2 minutos)\n\n'
                           'SOLUÇÃO B (armazenar em geladeira): 100 µL da solução A em 4,9 mL de H2O destilada (agitar e esperar 2 minutos)\n\n'
                           'SOLUÇÃO C - USO (fazer na hora e manter no gelo):  41 µL de solução B + 5 mL  de H2O destilada', textAlign: TextAlign.justify,),
                       
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