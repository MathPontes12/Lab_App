import 'package:flutter/material.dart';
import 'package:lfcpm_lab/Themes/my_themes.dart';
import 'package:lfcpm_lab/components/border.dart';

class ProtocolBca extends StatelessWidget {
  const ProtocolBca({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'LFCPM'), 
      
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
                      Text('DOSAGEM DE PROTEÍNAS\nPOR BCA\n', style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
                      Image.asset('assets/images/Placa2.jpeg'),
                      Text('1) Branco: Tampão de lise (Tampão RIPA)\n\n'
                           '2) Padrão 1 mg: 1 mg de albumina + 1 mL de Tampão RIPA\n\n'
                           '3) Padrão 1,5 mg: 1,5 mg de albumina + 1 mL de Tampão RIPA\n\n' 
                           '4) Padrão 2 mg: 2 mg de albumina + 1 mL de Tampão RIPA\n\n'
                           '5) Curva 20 µL: 20 µL do Padrão 2mg\n\n'
                           '6) Curva 30 µL: 30 µL do Padrão 2mg\n\n'
                           '7) Curva 40 µL: 40 µL do Padrão 2mg\n\n'
                           '8) Adicionar 200 µL do reagente BCA em todos os poços após pipetagem do branco, curva e amostra'  
                           'LEITURA: Após pipetar todas as amostras e o reagente, encubar a placa na estufa a 37ºC protegida da luz por 30 minutos. '
                           'Realizar a leitura em leitor de ELISA - 550 nM.',
                           textAlign: TextAlign.justify,),
                      Text('OBSERVAÇÕES:', style: TextStyle(fontWeight: FontWeight.bold),),
                      Text('• Caso as proteínas da amostras estourem a curva, diluir na proporção de 1:1 com tampão RIPA\n\n'
                           '• Preparo do reagente BCA: 18 mL de solução A + 360 µL de solução B\n\n'
                           '• Exceto nos poços da curva de 20 µL, 30 µL e 40 µL, adicionar 10 µL em cada poço'
                           ' Avolumar para 200 µL todos os poços com o reagente BCA',
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