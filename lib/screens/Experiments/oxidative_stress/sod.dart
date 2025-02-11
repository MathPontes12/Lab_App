import 'package:flutter/material.dart';
import 'package:lfcpm_lab/Themes/my_themes.dart';
import 'package:lfcpm_lab/components/border.dart';

class Sod extends StatefulWidget {
  const Sod ({super.key});

  @override
  State<Sod> createState() => _SodState();
}


class _SodState extends State<Sod> {
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    final List pages = [_ProtocoloSod(), _ReagentesSod(), ];
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


class _ProtocoloSod extends StatelessWidget {
  const _ProtocoloSod();

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
                      Text('SUPERÓXIDO DISMUTASE', style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),),
                      Text('A SOD constitui a primeira linha de defesa enzimática contra a produção intracelular de radicais livres,'
                        ' catalisando a dismutação de O2- (Hollander et al., 2000). Está presente na matriz mitocondrial (Mn-SOD), no citosol (CuZn-SOD) e no meio extracelular.' 
                        ' Embora O2- não seja altamente danoso, pode extrair elétrons de diversos componentes celulares, causando reações em cadeia de radicais livres (Halliwell e Gutteridge, 1999).'
                        ' O produto resultante da reação catalisada pela SOD é o H2O2, que deve ser retirado do meio o mais rápido possível.'
                        ' Uma unidade de enzima é definida pela quantidade transformada em 1 µmol de substrato por minuto.' 
                        ' A atividade enzimática será estimada pela inibição da auto-oxidação da adrenalina medida por espectrofotometria (480 nm).'
                        ' A adrenalina é oxidada pelo O2-  para formar um produto róseo, adrenocromo.'
                        ' Referência: Bannister, J.V.; Calabrese, L. Assays for SOD. Meth. Biochem. Anal., v. 32, p. 279-312, 1987.', textAlign: TextAlign.justify,),
                      Text('Preparo das Amostras:', style: TextStyle(fontWeight: FontWeight.bold),),
                      Text('• Tecido: Homogeneizar no potter 10x em tampão glicina. Usar aproximadamente 10, 20 e 30 µL (OBS: Testar outros volumes de amostra)\n\n'
                            '• Plasma: Absoluto. Usar aproximadamente 3, 5 e 7 µL.\n\n'
                            '• Célula: Placas lisadas em tampão KPE'
                            , textAlign: TextAlign.justify,),                    
                      Text('Padronização:', style: TextStyle(fontWeight: FontWeight.bold),),
                      Text('1) Ligar o espectrofotômetro e ajustar com comprimento de onda para 480 nm\n'
                           '2) Tempo -> Início: 0 - Intervalo: 10 s - Duração: 180 s\n'
                           '3) VALOR DE REFERÊNCIA: Colocar na cubeta 2 mL de tampão glicina e apertar a tecla verde\n' 
                           '4) BRANCO: 1940 µL de tampão glicina + 20 µL de catalase + 40 µL de adrenalina (ou NOR) + 20 µL de tampão glicina (volume da amostra) - LER\n'
                           '5) AMOSTRA (Leitura 1): 1940 µL de tampão glicina + 20 µL de catalase  + 20 µL da amostra + 40 µL de adrenalina (ou NOR) - LER\n'
                           '6) AMOSTRA (Leitura 2): 1940 µL de tampão glicina + 20 µL de catalase  + 40 µL da amostra + 40 µL de adrenalina (ou NOR) - LER'
                           '7) AMOSTRA (Leitura 3): 1940 µL de tampão glicina + 20 µL de catalase  + 60 µL da amostra) + 40 µL de adrenalina (ou NOR) - LER', 
                           textAlign: TextAlign.justify,),
                      Text('OBSERVAÇÕES:', style: TextStyle(fontWeight: FontWeight.bold),),
                      Text('1) Adrenalina (ou NOR) é o último reagente a ser colocado na cubeta\n'
                           '2) Fazer um novo branco cada vez que trocar de grupo'
                           '3) Descartar a amostra a cada leitura, lavar a cubeta com água destilada e secar bem', 
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

class _ReagentesSod extends StatelessWidget {
  const _ReagentesSod();

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
                      Text('SUPERÓXIDO DISMUTASE', style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
                     Text('Reagentes:', style: TextStyle(fontWeight: FontWeight.bold),),
                      Text('• ADRENALINA (PM = 333 g):\n'
                          'Fazer uma solução a 60 mM em H2O destilada - 19 mg de NOR/1 mL de H2O destilada, e acrescentar 15 µL HCl fumegante.\n\n' 
                          '• CATALASE: 24 mg por 10 mL de H2O destilada\n\n'
                          '• TAMPÃO GLICINA: 0,75 g em 200 mL de H2O destilada.\n'
                          'Diluir a glicina em 150 mL de H2O destilada e ajustar o pH para 10,2 com NaOH 1N\n'
                          'Avolumar para 200 mL em uma proveta',
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