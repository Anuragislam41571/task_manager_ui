import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';



SvgPicture backgroundpic(  BuildContext context
){

  return SvgPicture.asset('assets/images/background.svg',
  alignment: Alignment.center,
    fit: BoxFit.cover,
    height: MediaQuery.of(context).size.height,
    width: MediaQuery.of(context).size.width,

  );


}

TextStyle h1text(){

  return TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w700,


  );

}
TextStyle h6text(){

  return TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,


  );

}

ButtonStyle appbuttonstytle(){


  return ElevatedButton.styleFrom(
    fixedSize: Size.fromWidth(double.maxFinite),
    foregroundColor: Colors.white,

    backgroundColor: Colors.green,

    shape: RoundedRectangleBorder(

       borderRadius:  BorderRadius.circular(6)
    )



  );



}

InputDecoration appinputdecoration(label){
  return InputDecoration(

    focusedBorder: OutlineInputBorder(

      borderSide: BorderSide(width: 2,color: Colors.blue),


    ),
      enabledBorder: OutlineInputBorder(

        borderSide: BorderSide(width: 2,color: Colors.white),


      ),
    contentPadding: EdgeInsets.fromLTRB(20, 10, 10, 20),
    fillColor: Colors.white,
    filled: true,
    labelText: label,

  );
}