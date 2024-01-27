import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';


class Countrycode extends StatefulWidget {
  const Countrycode({super.key});

  @override
  State<Countrycode> createState() => _CountrycodeState();
}

class _CountrycodeState extends State<Countrycode> {
     String countryCode='';
     String countryName='';

  @override
  Widget build(BuildContext context) {

    return Scaffold(
    appBar: AppBar(title: const Text('Country code'),backgroundColor: Colors.blue,),

    body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
       Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           Text(countryName,style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 19)),
           const SizedBox(width: 9,),
           Text("+$countryCode",style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 19),),
       
        ],
       ),
        Center(
          child: TextButton(
            onPressed: (){
           showCountryPicker(
           
            context: context, 
            onSelect: (Country value){
              countryCode =  value.phoneCode.toString();
              countryName = value.countryCode.toString();
              setState(() {
                
              });
            });
          }, child: const  Text('Tap')),
           
        ),
      

      ],
    )

    );
  }
}