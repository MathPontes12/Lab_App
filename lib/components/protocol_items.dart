import 'package:flutter/material.dart';
import 'package:lfcpm_lab/Themes/my_themes.dart';
import 'package:lfcpm_lab/screens/Experiments/histology/picrosirius_red.dart';
import 'package:lfcpm_lab/screens/Experiments/oxidative_stress/carbonil.dart';
import 'package:lfcpm_lab/screens/Experiments/oxidative_stress/catalase.dart';
import 'package:lfcpm_lab/screens/Experiments/oxidative_stress/gpx.dart';
import 'package:lfcpm_lab/screens/Experiments/histology/he.dart';
import 'package:lfcpm_lab/screens/Experiments/histology/ihc.dart';
import 'package:lfcpm_lab/screens/Experiments/oxidative_stress/sod.dart';
import 'package:lfcpm_lab/screens/Experiments/oxidative_stress/tbars.dart';
import 'package:lfcpm_lab/screens/Experiments/protein_dosagem/bca.dart';
import 'package:lfcpm_lab/screens/Experiments/protein_dosagem/bradford.dart';

class ProtocolItems extends StatelessWidget {
  const ProtocolItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
              spacing: 20,
              children: [                          // ENZIMAS - ESTRESSE OXIDATIVO
                Text('• Estresse Oxidativo', style: MyStyles.topicTitle,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      style: MyStyles.greenButton,
                      child: Text('SOD', style: MyStyles.buttonText, textAlign: TextAlign.center,),
                      onPressed:() {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const Sod(),));            
                      },
                    ),
                    ElevatedButton(
                       style: MyStyles.greenButton,
                      child: Text('CAT', style: MyStyles.buttonText, textAlign: TextAlign.center,),
                      onPressed:() {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const Catalase(),));            
                      },
                    ),
                    ElevatedButton(
                       style: MyStyles.greenButton,
                      child: Text('GPx', style: MyStyles.buttonText, textAlign: TextAlign.center,),
                      onPressed:() {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const Gpx(),));            
                      },
                    ),
                  ],
                ),
                                                    // DANO OXIDATIVO - ESTRESSE OXIDATIVO
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                       style: MyStyles.greenButton,
                      child: Text('Tbars', style: MyStyles.buttonText, textAlign: TextAlign.center,),
                      onPressed:() {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const Tbars(),));            
                      },
                    ),
                     ElevatedButton(
                       style: MyStyles.greenButton,
                      child: Text('Carbonil', style: MyStyles.buttonText, textAlign: TextAlign.center,),
                      onPressed:() {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const Carbonil(),));            
                      },
                    ),
                ],
               ),


                                          // HISTOLOGIA

               Padding(
                 padding: const EdgeInsets.only(top: 20.0),
                 child: Text('• Histologia', style: MyStyles.topicTitle,),
               ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      style: MyStyles.greenButton,
                      child: Text('HE', style: MyStyles.buttonText, textAlign: TextAlign.center,),
                      onPressed:() {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const He(),));            
                      },
                    ),
                    ElevatedButton(
                      style: MyStyles.greenButton,
                      child: Text('IHC', style: MyStyles.buttonText, textAlign: TextAlign.center,),
                      onPressed:() {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const Ihc(),));            
                      },
                    ),
                    ElevatedButton(
                      style: MyStyles.greenButton,
                      child: Text('PSR', style: MyStyles.buttonText, textAlign: TextAlign.center,),
                      onPressed:() {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const PicrosiriusRed(),));            
                      },
                    ),
                    ]
                  ),

                Padding(
                 padding: const EdgeInsets.only(top: 20.0),
                 child: Text('• Dosagem de Proteína', style: MyStyles.topicTitle,),
               ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      style: MyStyles.greenButton,
                      child: Text('Bradford', style: MyStyles.buttonText, textAlign: TextAlign.center,),
                      onPressed:() {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const ProtocolBradford(),));            
                      },
                    ),
                    ElevatedButton(
                      style: MyStyles.greenButton,
                      child: Text('BCA', style: MyStyles.buttonText, textAlign: TextAlign.center,),
                      onPressed:() {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const ProtocolBca(),));            
                      },
                    ),

                ],
            )
            ]
            );
  }
}