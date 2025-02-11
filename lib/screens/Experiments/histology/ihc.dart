import 'package:flutter/material.dart';
import 'package:lfcpm_lab/Themes/my_themes.dart';
import 'package:lfcpm_lab/components/border.dart';

class Ihc extends StatefulWidget {
  const Ihc({super.key});

  @override
  State<Ihc> createState() => _IhcState();
}

class _IhcState extends State<Ihc> {
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    final List pages = [_FirstDay(), _SecondDay()];
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
            icon: Icon(Icons.today_rounded),
            label: '1º Dia',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.today_rounded),
            label: '2º Dia',
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



class _FirstDay extends StatelessWidget {
  const _FirstDay();

  @override
  Widget build(BuildContext context) {
    return Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20, bottom: 40),
          child: CustomScrollView(
    slivers: [
      SliverToBoxAdapter(
        child: DefaultTextStyle(
          style: TextStyle(
              fontSize: 17,
              color: Colors.black,
              height: 2,
              fontFamily: 'Times New Roman'),
          child: Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Border_Content(
              boxContent: Column(
                spacing: 30,
                children: [
                  Text(
                    'Imunohistoquímica: 1º dia',
                    style: TextStyle(
                        fontSize: 23, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '1) Separar as lâminas e deixar na estufa 60ºC por 10 minutos (ajustar de acordo com o tecido)\n\n'
                    '2) (Bateria da frente) Xilol I, xilol II, Álcool 100%, 90% e 70% por 2 minutos cada\n\n'
                    '3) Mergulho em H2O destilada\n\n'
                    '4) Arrumar as lâminas sobre a espuma úmida dentro da caixa de imuno\n\n'
                    '5) Colocar peróxido de hidrogênio 3% (água oxigenada 10 volumes) e deixar por 30 minutos\n\n'
                    '6) Mergulho em H2O destilada\n\n'
                    '7) Mergulho em PBS (pH 7,2)\n\n'
                    '8) Adicionar as laminas presas e organizadas na mola em tampão citrato (pH = 6) no banho aquecido a 60ºC por 20 minutos'
                    'OBS: Para 8-isoprostano (anti-goat) usa-se Tripsina (1 mg de tripsina para 1 mL de PBS) e deixa na estufa por 20 minutos a 37ºC.\n\n'
                    '9) Mergulho em PBS (pH 7,2)\n\n'
                    '10) Aplicar a solução de bloqueio - albumina-PBS (100 mg de albumina - 2 mL de PBS) - e deixar por 30 minutos\n\n'
                    '11) Escorrer o bloqueio das laminas no papel\n\n'
                    '12) Escorrer o serum/bloqueio e secar levemente a lâmina em papel toalha\n\n'
                    '13) Adicionar o anticorpo primário diluído 1:100 (10 µL do anticorpo para 1 mL do PBS) e esperar 30 minutos\n\n'
                    '13) Guardar a caixa na geladeira overnight',
                    textAlign: TextAlign.justify,
                  ),
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


class _SecondDay extends StatelessWidget {
  const _SecondDay();

  @override
  Widget build(BuildContext context) {
    return Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20),
          child: CustomScrollView(
    slivers: [
      SliverToBoxAdapter(
        child: DefaultTextStyle(
          style: TextStyle(
              fontSize: 17,
              color: Colors.black,
              height: 2,
              fontFamily: 'Times New Roman'),
          child: Padding(
            padding: const EdgeInsets.only(top: 20.0, bottom: 40),
            child: Border_Content(
              boxContent: Column(
                spacing: 30,
                children: [
                  Text(
                    'Imunohistoquímica: 2º dia',
                    style: TextStyle(
                        fontSize: 23, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '1) Retirar a caixa da geladeira e deixar em temperatura ambiente por aproximadamente 30 minutos\n\n'
                    '2) Mergulho em PBS (pH 7,2) por 2 min, 2x\n\n'
                    '3) Adicionar o anticorpo secundário referente ao primário diluído 1:100 (10 µL do anticorpo para 1 mL do PBS) e esperar 30 minutos\n\n'
                    '4) Mergulho em PBS (pH 7,2) por 2 min, 2x\n\n'
                    '5) Adicionar streptavidina 1:100 (10 µL da streptavidina para 1 mL do PBS)\n\n'
                    '6) Mergulho em PBS (pH 7,2) por 2 min, 2x\n\n'
                    '7) Adicionar o DAB (verificar qual o dab e o preparo de uso) por tempo determinado por teste\n\n'
                    '8) Mergulho em H2O destilada\n\n'                 
                    '9) Mergulho em Hematoxilina por 30 segundos (o tempo pode ser alterado por teste)\n\n'
                    '10) (Bateria de trás) álcool 70%, 90%, 100%, xilol III e IV por 2 minutos cada\n\n'
                    '11) Adicionar o D.P.X e a laminula e deixar secar',                 
                    textAlign: TextAlign.justify,
                  ),
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
