import 'package:flutter/material.dart';
import 'package:lfcpm_lab/Themes/my_themes.dart';
import 'package:lfcpm_lab/components/border.dart';

class Gpx extends StatefulWidget {
  const Gpx({super.key});

  @override
  State<Gpx> createState() => _GpxState();
}


class _GpxState extends State<Gpx> {
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    final List pages = [_ProtocoloGpx(), _ReagentesGpx(), ];
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

class _ProtocoloGpx extends StatelessWidget {
  const _ProtocoloGpx();

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
                      Text('GLUTATIONA PEROXIDASE', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
                      Text('A GPX é uma enzima selênio dependente que catalisa a redução do H2O2 e hidroperóxidos orgânicos (ROOH) para H2O e álcool,'
                        ' usando a glutationa (GSH) como doador de elétrons. Está localizada tanto no citosol, quanto na matriz mitocondrial.' 
                        ' A determinação da atividade da GPX é feita a partir da taxa de decaimento da NADPH, determinada por espectrofotometria (340 nm).'
                        ' Referência: Flohé, I; Gunzler, W. assays of glutathione peroxidase. Methods Enzymol. V.105, p. 114 – 121, 1984.', 
                        textAlign: TextAlign.justify,),
                      Text('Preparo das Amostras:', style: TextStyle(fontWeight: FontWeight.bold),),
                      Text('• Tecido: Homogeneizar no potter 10x em tampão glicina. Usar aproximadamente 10, 20 e 30 µL (OBS: Testar outros volumes de amostra)\n\n'
                            '• Plasma: Absoluto. Usar aproximadamente 3, 5 e 7 µL.\n\n'
                            '• Célula: Placas lisadas em tampão KPE'
                            , textAlign: TextAlign.justify,),
                      Text('Reagentes:', style: TextStyle(fontWeight: FontWeight.bold),),
                      Text('• Tampão Fosfato (KPE): Para 30 mL de H2O destilada, pesar 403 mg de KH2PO4\n\n'
                          '• Glutationa Redutase (GR): 22,5 µL de GR em 4,5 mL de KPE\n\n' 
                          '• Glutationa Reduzida (GSH): 15 mg de GSH em 5 mL de H2O destilada\n\n'
                          '• NADPH: 6 mg de NADPH em 4,5 mL de NaHCO3 0,1%.\n'
                          'NaHCO3 0,1%: 100 mg de NaHCO3 em 100 mL de H2O destilada\n\n'
                          '• H2O2 30%\n\n'
                          '• Azida Sódica: 2,6 mg em 40 mL de H2O destilada (pode ser congelada)\n\n'
                          '• SOLUÇÃO DE USO: 20 mL de KPE + 4 mL de GR + 4 mL de GSH + 1 mL de azida sódica',
                          textAlign: TextAlign.justify,),
                      Text('Padronização:', style: TextStyle(fontWeight: FontWeight.bold),),
                      Text('1) Ligar o espectrofotômetro e ajustar com comprimento de onda para 340 nm\n'
                           '2) Tempo -> Início: 0 - Intervalo: 10 s - Duração: 300 s\n'
                           '3) VALOR DE REFERÊNCIA: Colocar na cubeta 2 mL de KPE e apertar a tecla verde\n' 
                           '4) BRANCO: 1450 µL da solução de uso + 200 µL de KPE (volume da amostra) + 200 µL de NADPH (incubar por 3 minutos) - Adicionar 200 µL de H2O2 - LER por 5 minutos\n'
                           '5) AMOSTRA: 1450 µL da solução de uso + 200 µL da amostra (incubar por 10 minutos) + 200 µL de NADPH (incubar por 3 minutos) - Adicionar 200 µL de H2O2 - LER por 5 minutos\n',
                           textAlign: TextAlign.justify,),
                                      
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

class _ReagentesGpx extends StatelessWidget {
  const _ReagentesGpx();

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
                      Text('GLUTATIONA PEROXIDASE', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
                      Text('Reagentes:', style: TextStyle(fontWeight: FontWeight.bold),),
                      Text('• Tampão Fosfato (KPE): Para 30 mL de H2O destilada, pesar 403 mg de KH2PO4\n\n'
                          '• Glutationa Redutase (GR): 22,5 µL de GR em 4,5 mL de KPE\n\n' 
                          '• Glutationa Reduzida (GSH): 15 mg de GSH em 5 mL de H2O destilada\n\n'
                          '• NADPH: 6 mg de NADPH em 4,5 mL de NaHCO3 0,1%.\n'
                          'NaHCO3 0,1%: 100 mg de NaHCO3 em 100 mL de H2O destilada\n\n'
                          '• H2O2 30%\n\n'
                          '• Azida Sódica: 2,6 mg em 40 mL de H2O destilada (pode ser congelada)\n\n'
                          '• SOLUÇÃO DE USO: 20 mL de KPE + 4 mL de GR + 4 mL de GSH + 1 mL de azida sódica',
                          textAlign: TextAlign.justify,),                    
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