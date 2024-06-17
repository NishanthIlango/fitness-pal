import 'package:country_state_city_pro/country_state_city_pro.dart';
import 'package:fitness_app/features/reset_password/ui/reset_password_screen.dart';
import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController=TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController country=TextEditingController();
  TextEditingController state=TextEditingController();
  TextEditingController city=TextEditingController();

  final _formKey = Key('form');

  bool isLogin = true;
  bool isObsure=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0, 
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(isLogin?"Welcome to Fitnesspal!":"Sign Up",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,fontFamily: 'OpenSans'),),
                SizedBox(height: 10),
                Text(isLogin?"Good to see you back":"Please enter your credentials to proceed ",style: TextStyle(fontSize: 19,fontFamily: 'OpenSans'),),
                SizedBox(height: 50,),
                if(!isLogin) Text("Full Name",style: TextStyle(fontSize: 18,fontFamily: 'OpenSans'),),
                if(!isLogin) Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10),
                    ),
                    child:TextFormField(
                      controller: nameController,
                      decoration: InputDecoration(border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),hintText: "Enter the full name")
                    )
                ),
                if(!isLogin) SizedBox(height: 20,),
                if(!isLogin) Text("Phone",style: TextStyle(fontSize: 18,fontFamily: 'OpenSans'),),
                if(!isLogin) Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10),
                    ),
                    child:TextFormField(
                      controller: phoneController,
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),hintText: "Enter the phone no")
                    )
                ),
                if(!isLogin) SizedBox(height: 20,),
                Text("Email address",style: TextStyle(fontSize: 18,fontFamily: 'OpenSans'),),
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
                SizedBox(height: 20,),
                Text("Password",style: TextStyle(fontSize: 18,fontFamily: 'OpenSans'),),
                Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10),
                    ),
                    child:TextFormField(
                      controller: passwordController,
                      obscureText: isObsure,
                      obscuringCharacter: "*",
                      decoration: InputDecoration(border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),suffixIcon: IconButton(onPressed: (){
                        setState(() {
                          isObsure = !isObsure;
                        });
                      }, icon: Icon(isObsure?Icons.visibility_off:Icons.visibility)),

                      hintText: "Enter the password"
                      )
                    )
                ),
                if(isLogin) InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ResetPasswordScreen()));
                  },
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text("Forgot Password?",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,fontFamily: 'OpenSans'),)),
                ),

                if(!isLogin) SizedBox(height: 20,),
                if(!isLogin) Text("Address",style: TextStyle(fontSize: 18,fontFamily: 'OpenSans'),),
                if(!isLogin) Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10),
                    ),
                    child:TextFormField(
                      controller: addressController,
                      decoration: InputDecoration(border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),suffixIcon: IconButton(onPressed: (){
                        setState(() {
                          isObsure = !isObsure;
                        });
                      }, icon: Icon(isObsure?Icons.visibility_off:Icons.visibility)),

                      hintText: "Enter the Address"
                      )
                    )
                ),
                if(!isLogin) SizedBox(height: 20,),
                if(!isLogin) CountryStateCityPicker(
                country: country,
                state: state,
                city: city,
                dialogColor: Colors.black,
                textFieldDecoration: InputDecoration(
                   fillColor: Colors.white,
                   filled: true,
                   suffixIcon: const Icon(Icons.arrow_downward_rounded), 
                   enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                   disabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                   border:  OutlineInputBorder(borderSide: BorderSide.none,borderRadius: BorderRadius.circular(10)))
              ),
              SizedBox(
                height: 20,
              ),
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
                          child: Text(isLogin?"LOG IN":"CREATE ACCOUNT",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,fontFamily: 'Open Sans'),)),
                      ),
                    ),
                SizedBox(height: 40,),
                 Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(isLogin
                          ? "Dont have an account? "
                          : "Already have an account? ",style: TextStyle( fontSize: 18,fontFamily: 'Montserrat'),),

                      InkWell(
                        onTap: () {
                          setState(() {
                            isLogin = !isLogin;
                          });
                        },
                        child: Text(
                          !isLogin ? "Login!" : "Register!",
                          style: TextStyle( fontSize: 18,fontFamily: 'Montserrat',fontWeight: FontWeight.w800),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 30,)
              ]
            ),
          ),
        ),
      ),
    );
  }
}