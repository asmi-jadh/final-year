
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


import 'package:womansafety_01/utils/colors.dart';
import 'package:womansafety_01/utils/dimension.dart';

// ignore: unused_import

import 'package:womansafety_01/home/safety_body.dart';



class MainSafetyPageState extends StatefulWidget {
  const MainSafetyPageState({super.key});

  @override
  State<MainSafetyPageState> createState() => __MainSafetyPageStateState();
}

class __MainSafetyPageStateState extends State<MainSafetyPageState> {
  @override
  Widget build(BuildContext context) {

    //print("current height is :"+MediaQuery.of(context).size.height.toString());

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 190, 219, 213),
         
      
      body:  
      SingleChildScrollView(
        child: Column(
        // ignore: avoid_unnecessary_containers
        children:[Container(
            
        child: Container(
          margin: EdgeInsets.only(top:Dimensions.height45,bottom: Dimensions.height15),
          padding: EdgeInsets.only(left:Dimensions.width20,right:Dimensions.width20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
           
            children: [
              Column(
                children: [
                  Text("GUARDIA",
                  style: GoogleFonts.federo(fontSize: 27)),
                  //BigText(text: "GUARDIA",color : AppColors.mainColor),
                 Row(
                 children: [
                   Text(
                  "Empowering Elegance, Ensuring Safety",
                  style: GoogleFonts.comicNeue(fontSize: 14, )
                )
                   
                 ],
               )
        
                ]
              ),
              
              Center(
                child: Container(
                  width: Dimensions.height45,
                  height: Dimensions.height45,
                  child: Icon(Icons.person,color:Colors.white,size:Dimensions.iconSize24 ),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(Dimensions.radius15),
                  color: AppColors.mainColor,),
                
                  
                ),
              )
            ],
          ),
        ),
            ),
            SizedBox(height:2,),
             SafetyPageBody(),
        ]
            ,
           
            ),
      ),
      
    );
  }
}
