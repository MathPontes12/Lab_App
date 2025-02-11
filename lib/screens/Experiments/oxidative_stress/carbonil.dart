import 'package:flutter/material.dart';
import 'package:lfcpm_lab/Themes/my_themes.dart';
import 'package:lfcpm_lab/components/border.dart';

class Carbonil extends StatefulWidget {
  const Carbonil({super.key});

  @override
  State<Carbonil> createState() => _CarbonilState();
}


class _CarbonilState extends State<Carbonil> {
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    final List pages = [_CarbonilRapido(), _ReagentesCarbonil(), ];
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
            label: 'Protocolo Rápido',
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


class _CarbonilRapido extends StatelessWidget {
  const _CarbonilRapido();

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
                padding: const EdgeInsets.only(top: 20.0, bottom: 40),
                child: Border_Content(
                  boxContent: Column(
                    spacing: 30,
                    children: [
                      Text('CARBONILAÇÃO\n DE\n PROTEINAS', style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
                      Text('Método utilizado para dosagem da oxidação de proteínas baseia-se no princípio de que vários radicais livres atacam resíduos de proteínas'
                        ' , como aminoácidos (histidina, arginina, lisina e prolina) para produzir produtos com o grupo carbonyl, '
                        'o qual pode ser medido através da reação com 2,4-dinitropheniylhydrazine. ' 
                        ' O coonteúdo de carbonil é determinado por espectrofotometria em 370 nm'
                        ' , usando um coeficiente 22.0000 Molar-1 em nmol/mg de proteínas, como descrito por Levine et al (1990).'
                        ' Referência: Levine, R.I.; Garland, D.; Oliver, C. N.; Amici, A.;' 
                        'Climent, I., Lenz, A.G., Ahn, B.W.; Stadtman, E. R. (1990). '
                        'Determination of carbonyl content in oxidatively modified proteins. Meth Enzymol, 186: 464 - 476.' 
                        , textAlign: TextAlign.justify,),
                      Text('Realização da Técnica:', style: TextStyle(fontWeight: FontWeight.bold),),
                      Text('1) Identificar 2 eppendorfs para cada amostra (A e B) 🡪 escrever a lápis\n\n'
                          '2) Pipetar 100 µL de amostra em cada eppendorf (total de 200 µL por amostra)\n'
                          '• Ideal que haja no mínimo 200 µg de proteínas no volume de amostra utilizado\n\n'
                          '3) Adicionar 500 µL de TCA 10% em todos os eppendorfs (1x)\n'
                          '• Vortexar os eppendorfs\n'
                          '• Centrifugar a 2000 RPM por 2 minutos a 28 ºC\n'
                          '• Descartar o sobrenadante (tomar cuidado com o pellet)\n\n'                       
                          '4) Adicionar:\n'
                          '• 500 µL de HCl 2M em A\n'
                          '• 500 µL de DNTP em B\n'
                          '• Incubar por 10 minutos em temperatura ambiente\n'
                          '• Vortexar a cada 2 minutos\n'
                          '• Descartar sobrenadante\n\n'   
                          '5) Adicionar 500 µL de TCA 10% em todos os eppendorfs (1x)\n'
                          '• Centrifugar a 2000 RPM por 2 minutos a 28 ºC\n'
                          '• Aspirar o sobrenadante (tomar cuidado com o pellet)\n\n' 
                          '6) Adicionar 1 mL de etanol-acetato de etila em todos os eppendorfs (3x)\n'
                          '• Centrifugar a 2000 RPM por 2 minutos a 28 ºC\n'
                          '• Descartar sobrenadante\n\n'
                          '7) Adicionar 200 µL de etanol-acetato de etila\n'
                          '• Centrifugar a 5000 RPM por 3 minutos a 28 ºC\n\n'
                          '8) Retirar o sobrenadante resultante da etapa 7 e pipetar na placa de ELISA\n\n'
                          '9) Realizar leitura a 370 nm'
                            , textAlign: TextAlign.justify,),
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

class _ReagentesCarbonil extends StatelessWidget {
  const _ReagentesCarbonil();

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
                      Text('CARBONILAÇÃO\n DE\n PROTEINAS', style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
                      Text('Preparo dos Reagentes:', style: TextStyle(fontWeight: FontWeight.bold),),
                      Text('OBS: Preparar os reagentes no dia de fazer o experimenton\n\n'
                          '1) Etanol - Acetato de Etila (1:1)\n'
                          '• Para 15 amostras (A e B): 50 mL etanol + 50 mL de acetato de etila\n'
                          '• Para 30 amostras (A e B): 100 mL etanol + 100 mL de acetato de etila\n\n'
                          '2) HCl 2M\n'
                          '• 7,35 mL de HCl fumegante em 37,65 mL de H2O destilada\n\n'
                          '3) TCA 10%\n'
                          '• Para 15 amostras (A e B): 5 mg de TCA + 50 mL de H2O destilada\n'
                          '• Para 30 amostras (A e B): 8 mg de TCA + 80 mL de H2O destilada\n\n'                      
                          '4) DNTP\n'
                          '• 20 mg de DNTP em 10 mL de HCl 2M\n'
                          '• Diluir em aquecimento\n\n'                        
                          '5) Guanidina: Fazer guanidina em tampão (20 mM KH2PO4)\n'
                          '• 17,5 g de guanidina + 137,5 mg de KH2PO4 + 50 mL de H2O destilada\n'
                          '• Ajustar pH em 2,3 com HCl 2M', 
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