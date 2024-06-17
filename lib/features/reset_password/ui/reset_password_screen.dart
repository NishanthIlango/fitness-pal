import 'package:flutter/material.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  TextEditingController emailController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0, 
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Forgot Password",style: TextStyle(fontFamily: 'OpenSans',fontSize: 30,fontWeight: FontWeight.bold),),
            SizedBox(height: 10,),
            Text("Please enter your email below to receive your password reset code.",style: TextStyle(
              fontFamily: 'OpenSans',fontSize: 17
            ),),
            SizedBox(height: 80,),
            Text(" Email",style: TextStyle(fontSize: 18,fontFamily: 'OpenSans'),),
            SizedBox(height: 10,),
            Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10),
                    ),
                    child:TextFormField(
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),hintText: "Enter the email address"
                      ),
                      validator: (val){
                          if (val!.isEmpty) {
                        return "Enter Your Email";
                      } else {
                        return null;
                      }
                      },
                    )
                ),
                SizedBox(height: 140,),
                InkWell(
                      onTap: (){
                      },
                      child: Container(
                        height: 70,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Color.fromRGBO(255, 225, 93, 1),
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text("CREATE ACCOUNT",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,fontFamily: 'Open Sans'),)),
                      ),
                    ),
          ]
        ),
      ),
    );
  }
}