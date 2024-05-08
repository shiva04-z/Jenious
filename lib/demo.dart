import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Demo extends StatefulWidget {
  const Demo({super.key});

  @override
  State<Demo> createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  var _selectvalue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Radio and Checkbox"),),
      body: Center(
        child: Container(
            height: 300,
          width: 230,
          padding:const  EdgeInsets.all(8) ,
          decoration: BoxDecoration(border: Border.all(width: 1)),
          child: Center(
            child:Column(
              
              children: [
                const Text("Select Gender", style: TextStyle(fontSize: 24),),
                Row(
                  children: [
                    const Text("Male"),
                    Radio(value: "Male", groupValue: _selectvalue, onChanged:(value){
                                _selectvalue =value;
                                setState(() {

                                });
                        } ,
                          ),
                  ],
                ),
              Row(
                children: [
                  const Text("Female"),
                  Radio(value: "Female", groupValue: _selectvalue, onChanged:(value){
                  _selectvalue =value;
                   setState(() {

                  });

                  } ,
                  ),
                ],
              ),
                Row(
                  children: [
                    const Text("Other"),
                    Radio(value: "Other", groupValue: _selectvalue, onChanged:(value){
                      _selectvalue =value;
                      setState(() {

                      });

                    } ,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Selected option $_selectvalue"),
                )
              ],
            ),
              ),
        ),
      ));
  }
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty(null, _selectvalue));
  }
}
