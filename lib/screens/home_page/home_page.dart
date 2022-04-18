import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:senator/custom_widgets/custom_textfield.dart';
import 'package:senator/custom_widgets/transport_button.dart';
import 'package:senator/utils/my_images.dart';

import '../../custom_widgets/custom_dropdown.dart';
import '../../utils/global.dart';

class HomePage extends StatefulWidget {

  static String route = "homePage";

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  onSelection(int i){
    Global.selectedMode=i;
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Container(color: Colors.blue,child: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Image.asset(MyImages.logo,width: MediaQuery.of(context).size.width*0.3,color: Colors.white,),
                  Spacer(),
                  Icon(Icons.notifications,color: Colors.white,),
                  SizedBox(width: 10,),
                  Icon(Icons.person,color: Colors.white,)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0,vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TransportModeButton(value: 0, onChange: onSelection, selectedValue: Global.selectedMode, icon: MdiIcons.shipWheel),
                  TransportModeButton(value: 1, onChange: onSelection, selectedValue:  Global.selectedMode, icon: MdiIcons.airplane),
                  TransportModeButton(value: 2, onChange: onSelection, selectedValue:  Global.selectedMode, icon: MdiIcons.truckCargoContainer),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0,vertical: 10),
              child: RoundedBorderDropdown(dropdownValues: Global.tipoDeMovimiento,onChanged: (value){print(value);},),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0,vertical: 0),
              child: RoundedBorderDropdown(dropdownValues: Global.servico,onChanged: (value){print(value);},),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0,vertical: 10),
              child: RoundedBorderDropdown(dropdownValues: Global.tipoDeMovimiento,onChanged: (value){print(value);},),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0,vertical: 0),
              child: Row(
                children: [
                  Expanded(child: CustomTextField(hint: "L",)),
                  SizedBox(width: 10,),
                  Expanded(child: CustomTextField(hint: "W",)),
                  SizedBox(width: 10,),
                  Expanded(child: CustomTextField(hint: "H",)),
                  SizedBox(width: 10,),
                  Expanded(child: RoundedBorderDropdown(dropdownValues: Global.units,onChanged: (value){print(value);},)),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Expanded(child: Container(decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.vertical(top: Radius.circular(40)))
              ,child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: ListView.builder(itemBuilder: (context,index){
                  return Card(
                    child:
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Container(width: MediaQuery.of(context).size.width*0.1,child: Image.asset(MyImages.logo,height: MediaQuery.of(context).size.width*0.1,)),
                          SizedBox(width: 20,),
                          Expanded(
                            child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
                              Text("Title",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),),
                              SizedBox(height: 5,),

                              Text("Path",style: TextStyle(color: Colors.grey,fontSize: 14,fontWeight: FontWeight.normal)),
                              SizedBox(height: 5,),
                              Text("Time and Days",style: TextStyle(color: Colors.grey,fontSize: 14,fontWeight: FontWeight.normal)),
                            ],),
                          ),
                          SizedBox(width: 20,),
                          Column(crossAxisAlignment: CrossAxisAlignment.center,children: [
                            Text("USD \$7,000",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),),
                            Text("Embarque Completo",style: TextStyle(color: Colors.black,fontSize: 10,fontWeight: FontWeight.normal),),
                            SizedBox(height: 15,),

                            Container(
decoration: BoxDecoration(
    color: Colors.blue.shade900,
borderRadius: BorderRadius.circular(10)
),
child: Padding(
  padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 8),
  child:   Text("Re-solicitar",style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.bold)),
),
                            )


                          ],),
                        ],
                      ),
                    ),
                  );
                }),
              ),))
          ],
        ),
      ))
      ,
    );

  }
}
