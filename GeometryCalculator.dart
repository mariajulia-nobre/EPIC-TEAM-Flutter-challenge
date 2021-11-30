import 'dart:convert';
import 'dart:io';
import 'dart:math';

abstract class GeometryCalculator{
 var _form = "";
  String get form{
      return form;
  }
  
 double a;
 double b; 
 double c;
  
  GeometryCalculator(String form, double a, double b, double c){
    
    switch (form) {
      
    case "SquaRe":
      area(int a) => a * a;
  
    case "tRiangle":
      area(int a, int b, int c) => (a * b) / 2;
      
    case "circle":
      area(int a) => (a * a) * 3.14;
      
    case "Rectangle":
      area(int a, int b) => a * b;
    }  
    
  }
  
} 

void main(List<String> args){   
   if (args.isNotEmpty){
     final arg = arguments.first;
    final resolver = GeometryCalculator()
      ..add('circle', GeometryCalculator())
      ..add('Rectangle', GeometryCalculator())
      ..add('tRiangle', GeometryCalculator())
      ..add('SquaRe', GeometryCalculator());
   }
}