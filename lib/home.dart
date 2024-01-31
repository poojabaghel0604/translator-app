import 'package:flutter/material.dart';
import 'package:google_mlkit_translation/google_mlkit_translation.dart';
import 'package:google_translate/components/google_translate.dart';
import 'package:google_translate/extensions/string_extension.dart';


class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  String dropdownValue1 ='Hindi';
  String dropdownValue2 ='English';
  List<String> items=["Hindi","English",'Japanise','Telgu','Marathi'];
  TextEditingController textEditingController=TextEditingController();
  String? _translatedText;
  bool istranslated=false;
  
  void trans(){

      setState(() {
        _translatedText;
      });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("translator"),backgroundColor: Colors.purple),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.purple.shade900,Colors.purple.shade400,Colors.purple.shade50],
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                tileMode: TileMode.repeated
            )
        ),
        child: Column(children: [
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
            height: 70,
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                DropdownButton(
                  value:dropdownValue1,
                  icon: const Icon(Icons.keyboard_arrow_down),
                  borderRadius: BorderRadius.circular(10),
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 26,
                    color: Colors.purple,
                  ),
                  onChanged: (String? newValue){
                    setState(() {
                      dropdownValue1=newValue!;
                    });
                  },
                  items:items.map((String items){
                    return DropdownMenuItem(
                        value: items,
                        child: Text(items)
                    );
                  }).toList(),
                ),
                const Icon(Icons.compare_arrows,color: Colors.purple,),
                DropdownButton(
                  value:dropdownValue2,
                  borderRadius: BorderRadius.circular(10),
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 26,
                    color: Colors.purple,
                  ),
                  icon: const Icon(Icons.keyboard_arrow_down),
                  onChanged: (String? newValue){
                    setState(() {
                      dropdownValue2=newValue!;
                    });
                  },
                  items:items.map((String items){
                    return DropdownMenuItem(
                        value: items,
                        child: Text(items)
                    );
                  }).toList(),
                ),
              ],),
          ),
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
            height: 200,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)
            ),
            child: TextFormField(
              controller: textEditingController,
              maxLines: 8,
              style: const TextStyle(
                  fontSize: 20
              ),
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "Enter text here..",
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(20)
                  )
              ),
            ),
          ),
          TextButton(
              onPressed: (){
                trans();
              },
              child: Text("Translate",style: TextStyle(fontSize: 30,color: Colors.white),)),
          istranslated?Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
            height: 200,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)
            ),
            child: Text(_translatedText!)
          ):Container(),
        ],),),
    );
  }

}

