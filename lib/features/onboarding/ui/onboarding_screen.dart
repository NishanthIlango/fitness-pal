import 'dart:ui';

import 'package:fitness_app/features/auth/ui/auth_screen.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(40, 1.2*kToolbarHeight,40,20),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child:Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(-20,-1.6),
                child: Container(
                  height: 300,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.yellowAccent.shade700,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(20,1.6),
                child: Container(
                  height: 300,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.yellowAccent.shade700,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 100,sigmaY: 100),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.transparent
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    SizedBox(height: 30,),
                    Image.asset("assets/image/onboarding.png"),
                    SizedBox(
                      height: 40,
                    ),
                    Text("FITNESSPAL",style: TextStyle(
                      fontSize: 50,
                      fontFamily: 'BebasNeue'
                    ),),
                    SizedBox(
                      height: 20,
                    ),
                    Text("Track your health",style: TextStyle(
                      fontSize: 15,fontWeight: FontWeight.bold
                    ),),
                    SizedBox(height: 30,),
                    InkWell(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>AuthScreen()));
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
                          child: Text("LET'S START",style: TextStyle(fontSize: 30,fontFamily: 'BebasNeue'),)),
                      ),
                    )
                  ],
                ),
              ),
            ]
          )
        ),
        ),
    );
  }
}