import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:jenious/demo.dart';
import 'package:jenious/form_Validator.dart';
import 'package:jenious/list_view.dart';
import 'package:google_fonts/google_fonts.dart';
void main() {
  runApp(const Myapp());
}
class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Jenious Application",
      home: Demo(),
    );
  }
}

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}


class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [Icon(FeatherIcons.airplay)]),
        backgroundColor:Colors.pink[900],
        body: Center(
          child: SizedBox(
            height: 500,
            child: Column(
                children:[
                   Text(
                    'Welcome to Flutter',
                     style: GoogleFonts.alegreya(
                       textStyle: TextStyle(color: Colors.blue, letterSpacing: .5,fontSize: 40),
                     ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:150.0),
                    child: IconButton(
                        onPressed:
                            () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const LoginPage(),
                            ),
                          );
                          },
                        icon:const Icon(Icons.arrow_circle_right_rounded,color: Colors.blueAccent,size: 73,)
                    ),
                  ),
                ]
            ),
          ),
        )
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top:55.0,left: 12,right: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           const  Center(
                child:Image(
                  image:
                  AssetImage("assets/img_3.png"),
                  height: 200,
                  width: 200,
                ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:15,left:10,right: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text("Login",style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold),),
                  const Text("Login to continue using the app",style:TextStyle(fontSize:12,color: Colors.grey,),),
                  const Padding(
                    padding:  EdgeInsets.only(top:15),
                    child: Text("Email",style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 3.5),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter your email",
                        hintStyle: const TextStyle(fontSize:12,color: Colors.grey,),
                        enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.all(Radius.elliptical(12, 12)),
                        ),
                        fillColor: Colors.grey.shade100,
                        filled: true
                    ),
                    ),
                  ),
                 const Padding(
                    padding:  EdgeInsets.only(top:15),
                    child:  Text("Password",style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 3.5),
                    child: TextFormField(
                      decoration: InputDecoration(
                          hintText: "Enter password",
                          hintStyle: const TextStyle(fontSize:12,color: Colors.grey,),
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.all(Radius.elliptical(12, 12)),
                          ),
                          fillColor: Colors.grey.shade100,
                          filled: true,
                        suffixIcon: const Icon(Icons.remove_red_eye),
                      ),
                    ),
                  ),
                 Padding(
                   padding: const EdgeInsets.only(left:220,bottom: 3.5),
                   child: TextButton(onPressed: (){}, child:  Text("Forgot Password?",style: TextStyle(color: Colors.lightBlue.shade700,fontSize: 12),)),
                 ),
                  SizedBox(
                    width:400,
                    child: ElevatedButton(
                        onPressed: (
                            ){
                          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Login Unsuccessful",textAlign: TextAlign.center,)));
                        },
                        style: ElevatedButton.styleFrom(backgroundColor:Colors.indigo.shade900,),
                        child: const Text("Log in",textAlign:TextAlign.center ,style: TextStyle(color:Colors.white,fontSize: 25))),
                  ),
                  const Padding(
                    padding:EdgeInsets.only(top:15.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(child: Divider(indent: 5,endIndent: 5,)),
                        Text("or Login with",style: TextStyle(fontSize: 12)),
                        Expanded(child: Divider(indent: 5,endIndent: 5,)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:15.0,left:25,right:25,bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                            width: 75,
                            height: 45,
                            decoration:BoxDecoration(borderRadius: const BorderRadius.all(Radius.elliptical(12, 12)),border: Border.all(color: Colors.grey)),
                            child: InkWell(
                                onTap: (){
                                  showDialog(context: context, builder: (context)=>const SignupDialog().build(context,s:"Google",img:"assets/img_4.png"));
                                },
                                child: Center(child: Image.asset("assets/img_4.png",height: 30,width: 30,)))),
                        Container(
                            width: 75,
                            height: 45,
                            decoration:BoxDecoration(borderRadius: const BorderRadius.all(Radius.elliptical(12, 12)),border: Border.all(color: Colors.grey)),
                            child: InkWell(
                                onTap: (){
                                  showDialog(context: context, builder: (context)=>const SignupDialog().build(context,s:"Facebook",img:"assets/img_5.png"));
                                },
                                child: Center(child: Image.asset("assets/img_5.png",height: 30,width: 30,)))),
                        Container(
                            width: 75,
                            height: 45,
                            decoration:BoxDecoration(borderRadius: const BorderRadius.all(Radius.elliptical(12, 12)),border: Border.all(color: Colors.grey)),
                            child: InkWell(
                                onTap: (){
                                  showDialog(context: context, builder: (context)=>const SignupDialog().build(context,s:"Apple ID",img:"assets/img_6.png"));
                                },
                                child: Center(child: Image.asset("assets/img_6.png",height: 30,width: 30,)))),
                      ],
                    ),
                  ),
                  Center(
                    child: SizedBox(
                      height: 35,
                      width: 272,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                          const Text("Don't have an account?",style: TextStyle(fontWeight: FontWeight.w500),),
                         InkWell(onTap: (){
                           Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SignupPage()));
                         },
                             child:( const Text(" Register here",style: TextStyle(color: Colors.blue),textAlign: TextAlign.start)))],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.only(top:45.0,left: 12,right: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const  Center(
                child:Image(
                  image:
                  AssetImage("assets/img_7.png"),
                  height: 200,
                  width: 200,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:15,left:10,right: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text("Register",style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold),),
                    const Text("Enter your personal information\n",style:TextStyle(fontSize:12,color: Colors.grey,),),
                    const Padding(
                      padding: EdgeInsets.only(top:8),
                      child: Text("Name",style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 3.5,bottom: 8),
                      child: TextFormField(
                        decoration: InputDecoration(
                            hintText: "Enter your name",
                            hintStyle: const TextStyle(fontSize:12,color: Colors.grey,),
                            enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                              borderRadius: BorderRadius.all(Radius.elliptical(12, 12)),
                            ),
                            fillColor: Colors.grey.shade100,
                            filled: true
                        ),
                      ),
                    ),
                    const Text("Email",style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold),),
                    Padding(
                      padding: const EdgeInsets.only(top: 3.5),
                      child: TextFormField(
                        decoration: InputDecoration(
                            hintText: "Enter your email",
                            hintStyle: const TextStyle(fontSize:12,color: Colors.grey,),
                            enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                              borderRadius: BorderRadius.all(Radius.elliptical(12, 12)),
                            ),
                            fillColor: Colors.grey.shade100,
                            filled: true
                        ),
                      ),
                    ),
                    const Padding(
                      padding:  EdgeInsets.only(top:8),
                      child:  Text("Password",style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 3.5,bottom: 10),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "Enter password",
                          hintStyle: const TextStyle(fontSize:12,color: Colors.grey,),
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.all(Radius.elliptical(12, 12)),
                          ),
                          fillColor: Colors.grey.shade100,
                          filled: true,
                          suffixIcon: const Icon(Icons.remove_red_eye),
                        ),
                      ),
                    ),
                    SizedBox(
                      width:400,
                      child: ElevatedButton(
                          onPressed: (){ ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Registered Successfully",textAlign: TextAlign.center,)));},
                          style: ElevatedButton.styleFrom(backgroundColor:Colors.indigo.shade900,),
                          child: const Text("Register",textAlign:TextAlign.center ,style: TextStyle(color:Colors.white,fontSize: 25))),
                    ),
                    const Padding(
                      padding:EdgeInsets.only(top:8),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(child: Divider(indent: 5,endIndent: 5,)),
                          Text("or Signup with",style: TextStyle(fontSize: 12)),
                          Expanded(child: Divider(indent: 5,endIndent: 5,)),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:15.0,left:25,right:25,bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                              width: 75,
                              height: 45,
                              decoration:BoxDecoration(borderRadius: const BorderRadius.all(Radius.elliptical(12, 12)),border: Border.all(color: Colors.grey)),
                              child: InkWell(
                                  onTap: (){
                                    showDialog(context: context, builder: (context)=>const SignupDialog().build(context,s:"Google",img:"assets/img_4.png"));
                                  },
                                  child: Center(child: Image.asset("assets/img_4.png",height: 30,width: 30,)))),
                          Container(
                              width: 75,
                              height: 45,
                              decoration:BoxDecoration(borderRadius: const BorderRadius.all(Radius.elliptical(12, 12)),border: Border.all(color: Colors.grey)),
                              child: InkWell(
                                  onTap: (){
                                    showDialog(context: context, builder: (context)=>const SignupDialog().build(context,s:"Facebook",img:"assets/img_5.png"));
                                  },
                                  child: Center(child: Image.asset("assets/img_5.png",height: 30,width: 30,)))),
                          Container(
                              width: 75,
                              height: 45,
                              decoration:BoxDecoration(borderRadius: const BorderRadius.all(Radius.elliptical(12, 12)),border: Border.all(color: Colors.grey)),
                              child: InkWell(
                                onTap: (){
                                  showDialog(context: context, builder: (context)=>const SignupDialog().build(context,s:"Apple ID",img:"assets/img_6.png"));
                                },
                                  child: Center(child: Image.asset("assets/img_6.png",height: 30,width: 30,)))),
                        ],
                      ),
                    ),
                    Center(
                      child: SizedBox(
                        height: 35,
                        width: 216,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Text("Already have an account?",style: TextStyle(fontWeight: FontWeight.w500),),
                            InkWell(onTap: (){
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const LoginPage()));
                            },
                                child:( const Text(" Login",style: TextStyle(color: Colors.blue),textAlign: TextAlign.start)))],
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        )
    );
  }
}

class SignupDialog  extends AlertDialog {
  const SignupDialog({super.key});

  @override
  Widget build(BuildContext context,{String  s="", String img=""}) {
    return  AlertDialog(
      shape: const RoundedRectangleBorder(side: BorderSide(color: Colors.black,width: 2)),
      content: SizedBox(
        width: 350,
        height: 200,
        child: Column(
          children: [
          Container(
          width: 75,
          height: 45,
          decoration:BoxDecoration(color: Colors.white,borderRadius: const BorderRadius.all(Radius.elliptical(12, 12)),border: Border.all(color: Colors.grey)),
           child: Padding(
             padding: const EdgeInsets.all(8.0),
             child: Image.asset(img,height: 30,width: 30,),
           ),),
           Text("Continue with$s",style:const TextStyle(fontWeight: FontWeight.bold,fontSize: 22) ,),
            Padding(
              padding: const EdgeInsets.only(top: 3.5,bottom: 5),
              child: TextFormField(
                decoration: InputDecoration(
                  label:  Text(s),
                  labelStyle: const TextStyle(fontSize:12,color: Colors.grey,),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.all(Radius.elliptical(12, 12)),
                  ),
                  fillColor: Colors.grey.shade100,
                  filled: true,
                ),
              ),
            ),
            Center(child: ElevatedButton(
                style:ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                onPressed: (){
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Registered Successfully",textAlign: TextAlign.center,)));
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const DrawerPage()));
                }, child: const Text("Continue",style: TextStyle(color: Colors.white,)))),
          ],
        ),
      ),
    );
                }
  }




