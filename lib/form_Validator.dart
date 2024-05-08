import 'package:flutter/material.dart';

class FormValidationPage extends StatefulWidget {
  const FormValidationPage({super.key});

  @override
  State<FormValidationPage> createState() => _FormValidationPageState();
}

class _FormValidationPageState extends State<FormValidationPage> {

  GlobalKey<FormState> loginKey= GlobalKey<FormState>();

  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  var showPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Form Validation"),),
      body: Form(
        key: loginKey,
        child: Column(
          children: [
            TextFormField(
              controller: phoneController,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter phone Number'
              ),
              validator: (value){
                if(value!.isEmpty){
                  return 'Please enter phone number';
                }
                return null;
              },
            ),
            TextFormField(
              obscureText: showPassword,
              controller: passwordController,
              decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  hintText: 'Enter password',
                  suffixIcon: IconButton(
                      onPressed: (){
                        setState(() {
                          showPassword = !showPassword;
                        });
                      },
                      icon:const Icon(Icons.remove_red_eye_outlined))
              ),
              validator: (value){
                if(value!.isEmpty){
                  return 'please enter password';
                }
                else if(value.length<6){
                  return 'password should be 6character ';
                }
                return null;
              },
            ),

            ElevatedButton(onPressed: (){
              var isValid = loginKey.currentState!.validate();

              if(!isValid){
                return null;
              }
            }, child: const Text("Login"))
          ],
        ),
      ),
    );
  }
}



class DropDownWidget extends StatefulWidget {
  const DropDownWidget({super.key});

  @override
  State<DropDownWidget> createState() => _DropDownWidgetState();
}

class _DropDownWidgetState extends State<DropDownWidget> {

  var dropValue = 'menu';

  var isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("DropDown"),),
      body:Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: (){
                  showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context){
                        return StatefulBuilder(
                            builder: (BuildContext context, StateSetter setState) {
                              return
                                Container(
                                  width: 300,
                                  child: Row(
                                    children: [
                                      Checkbox(
                                        value: isChecked,
                                        onChanged: (value) {
                                          setState(() {
                                            print("onChanged Value ${value}");
                                            isChecked = value!;
                                            print("onChanged Value ${isChecked}");
                                          });
                                        },
                                      ),
                                      Text("Are you want Register?")
                                    ],
                                  ),
                                );
                            });
                      });
                },
                child: Text("Text")),

            DropdownButton(
              icon: Icon(Icons.arrow_downward),
              elevation: 5,
              isExpanded: true,
              autofocus: true,
              dropdownColor: Colors.blue,
              value: dropValue,
              items: ['menu','Text 1','Text 2','Text 3'].map((e) {
                return DropdownMenuItem(
                    value: e,
                    child: Row(
                        children :[
                          Checkbox(value: true, onChanged: (value){}),
                          Text(e) ]));
              }).toList(),
              onChanged: (value){
                setState(() {
                  dropValue=value!;
                });
              },
              isDense: true,
            ),

          ],
        ),
      ),
    );
  }
}



class DrawerPage extends StatefulWidget {
  const DrawerPage({super.key});

  @override
  State<DrawerPage> createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                decoration: BoxDecoration(
                    color: Colors.green
                ),

                child: Container(
                  child: Text("Drawer Header"),
                )
            ),

            ListTile(
              title: Text("Profile"),
              subtitle: Text("user profile"),
              leading: Icon(Icons.person),
              trailing: Icon(Icons.arrow_right),
            ),

            ListTile(
              title: Text("Profile"),
              leading: Icon(Icons.person),
            ),


            ListTile(
              title: Text("Profile"),
              leading: Icon(Icons.person),
            ),
          ],
        ),
      ),
      appBar: AppBar(title: Text("Drawer"),),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showDialog(
              barrierDismissible: false,
              context: context,
              builder: (BuildContext context){
                return AlertDialog(
                  title: Text("Search"),
                  content: Container(
                    height: 200,
                    child: Column(
                      children: [
                        ListTile(
                          title: Text('Lift tile 1'),
                        ),
                        ElevatedButton(onPressed: (){
                          Navigator.pop(context);

                        },
                            child: Text("Back"))
                      ],
                    ),
                  ),
                );
              });
        },
        child: Icon(Icons.search),
      ),
    );
  }
}


