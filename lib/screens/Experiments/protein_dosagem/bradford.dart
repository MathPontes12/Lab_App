import 'package:flutter/material.dart';
import 'package:lfcpm_lab/Themes/my_themes.dart';
import 'package:lfcpm_lab/components/border.dart';

class ProtocolBradford extends StatelessWidget {
  const ProtocolBradford({super.key});

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
                      Text('DOSAGEM DE PROTEÍNAS\nPOR BRADFORD\n', style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
                      Image.asset('assets/images/Placa.jpeg'),
                      Text('1) Branco: 200 µL do reagente de Bradford\n\n'
                           '2) Ponto de 1 µL: 1 µL de albumina bovina (1 mg/ 1 mL) + 199 µL do reagente de Bradford\n\n'
                           '3) Ponto de 2 µL: 2 µL de albumina bovina (1 mg/ 1 mL) + 198 µL do reagente de Bradford\n\n' 
                           '4) Ponto de 4 µL: 4 µL de albumina bovina (1 mg/ 1 mL) + 196 µL do reagente de Bradford\n\n'
                           '5) Ponto de 8 µL: 8 µL de albumina bovina (1 mg/ 1 mL) + 192 µL do reagente de Bradford\n\n'
                           '6) Ponto de 12 µL: 12 µL de albumina bovina (1 mg/ 1 mL) + 188 µL do reagente de Bradford\n\n'
                           '7) Ponto de 16 µL: 16 µL de albumina bovina (1 mg/ 1 mL) + 184 µL do reagente de Bradford', 
                           textAlign: TextAlign.justify,),
                      Text('AMOSTRA:', style: TextStyle(fontWeight: FontWeight.bold),),
                      Text('1) Tecido: 2 µL de amostra + 198 µL do reagente de Bradford\n'
                           '2) Plasma: 1 µL de amostra + 199 µL do reagente de Bradford\n'
                           '3) Células: 2 µL de amostra + 198 µL do reagente de Bradford\n\n'
                           'OBS.: Adicionar o Bradford somente após a pipetagem dos outros componentes.\n\n'
                           'LEITURA: 570 nm', 
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