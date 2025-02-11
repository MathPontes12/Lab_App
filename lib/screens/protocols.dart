import 'package:flutter/material.dart';
import 'package:lfcpm_lab/Themes/my_themes.dart';
import 'package:lfcpm_lab/components/protocol_items.dart';

class Protocols extends StatelessWidget {
  const Protocols({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20.0, bottom: 20),
                    child: Row(
                      children: [
                        Expanded(child: Divider(color: Colors.green, endIndent: 10, indent: 60,)),
                        Text('Protocolos', style: MyStyles.sectionTitle , 
                        textAlign: TextAlign.center,),
                        Expanded(child: Divider(color: Colors.green, indent: 10, endIndent: 60,)),
                      ],
                    ),
                  ),
                ),
                
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 40.0),
                    child: ProtocolItems()
                  )
                )
              ],
            ),
          ),
      );

  }
}