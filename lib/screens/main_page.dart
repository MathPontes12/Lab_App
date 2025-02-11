import 'package:flutter/material.dart';
import 'package:lfcpm_lab/Themes/my_themes.dart';
import 'package:lfcpm_lab/components/division.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20, bottom: 20),
                      child: Row(
                                      children: [
                      Expanded(child: Divider(color: Colors.green, endIndent: 10, indent: 60,)),
                      Text('O Grupo', style: MyStyles.sectionTitle , 
                      textAlign: TextAlign.center,),
                      Expanded(child: Divider(color: Colors.green, indent: 10, endIndent: 60,)),
                                      ],
                                    ),
                    ),
                
                    DivisionBar(),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, bottom: 10.0),
                      child: SizedBox(
                        height: 200,
                        width: 200,
                        child: 
                      Image.asset('assets/images/Logo.jpg')),
                    ),
                    DivisionBar(),
                
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20, top: 40, bottom: 40),
                      child: Column(
                        children: [
                          Text('O Laboratório Cardiovascular e Plantas Medicinais (LFCPM) está no Departamento de Farmacologia e Psicobiologia (DFP) do Instituto de Biologia Roberto Alcântara Gomes (IBRAG/UERJ) '
                          'e tem realizado importantes estudos com produtos naturais.\n\n'
                          'A nossa linha de pesquisa aborda os aspectos farmacológicos e bioquímicos de extratos de plantas medicinais, '
                          'e seus efeitos cardiovasculares e metabólicos.\n\n'
                          'O professor emérito Roberto Soares de Moura deu início à linha de pesquisa de produtos naturais que segue '
                          'sendo coordenada com a liderança e dedicação da professora Titular Angela de Castro Resende, '
                          'contando com a importante colaboração das professoras Dayane Teixeira Ognibene, '
                          'Cristiane Aguiar da Costa e Graziele Freitas de Bem, que foi incorporada ao grupo mais recentemente.\n\n'
                          'Nosso grupo conta também com a importante colaboração de técnicos, graduandos, mestrandos, doutorandos e pós-doutorandos, '
                          'além do importante apoio financeiro da FAPERJ, CNPq e CAPES.', 
                          style: TextStyle(fontFamily: 'Times New Roman', fontSize: 17, height: 2), textAlign: TextAlign.justify,),
                          Padding(
                            padding: const EdgeInsets.only(top: 20, bottom: 30),
                            child: Column(
                              children: [
                                Text('Angela', style: TextStyle(fontFamily: 'Times New Roman', fontSize: 17, height: 2, color: Color.fromRGBO(27, 82, 51, 1), fontWeight: FontWeight.bold)),
                                Image.asset('assets/images/Angela.jpg',width: 120, height: 120,),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  Text('Dayane', style: TextStyle(fontFamily: 'Times New Roman', fontSize: 17, height: 2, color: Color.fromRGBO(27, 82, 51, 1), fontWeight: FontWeight.bold)),
                                  Image.asset('assets/images/Dayane.jpg', width: 100, height: 100,),
                                ],
                              ),
                              Column(
                                children: [
                                  Text('Cristiane', style: TextStyle(fontFamily: 'Times New Roman', fontSize: 17, height: 2, color: Color.fromRGBO(27, 82, 51, 1), fontWeight: FontWeight.bold)),
                                  Image.asset('assets/images/Cris.jpg', width: 100, height: 100,),
                                ],
                              ),
                              Column(
                                children: [
                                  Text('Graziele', style: TextStyle(fontFamily: 'Times New Roman', fontSize: 17, height: 2, color: Color.fromRGBO(27, 82, 51, 1), fontWeight: FontWeight.bold)),
                                  Image.asset('assets/images/Grazi.jpg', width: 100, height: 100,),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                
                  ],         
                
                ),
              
            ),
          )      
        ],      
      );
    
  }
}