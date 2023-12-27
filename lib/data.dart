import 'package:shared_preferences/shared_preferences.dart';

var placeimg =["asset/image/travel3.jpeg",
              "asset/image/travel4.jpeg",
              "asset/image/travel5.jpeg",
              "asset/image/travel6.jpeg",
              "asset/image/travel7.jpeg",
              "asset/image/travel8.jpeg"];
var placenm1 = ["TOL","TRB","LNE","BMP","HEP","SPC"];
var placenm =["Tower of London",
          "Tower Bridge",
          "London Eye",
          "Buckingham Palace",
          "Hyde Park",
           "St Paul's Cathedral"];
var flightrs =["3590 Rs.","33454 Rs.","34545 Rs.","75554 Rs.","9655 Rs.","67856 Rs."];
var days =["2 Days","3 Days","4 Days","5 Days","1 Days","6 Days"];
var tims = ["1:00","2:30","3:30","4:00","4:30","5:30"];
var seat = ["412B","452L","674l","890O","6773P","123P"];
var gate = ["1","3","4","5","6","12"];
var terminal = ["T12 I98 G56 V55","1H3 GY7 NU4 545F","GU5 34H 7HK 8ZJ",
                "GH4 J34 F94 JKD8","J78R JMH4 JR8 F8","JHE NHD7 HDY7 D7"];



var citys ="";
var placevl = "";

void savevl ()async{
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  sharedPreferences.setString("city",citys);
  getvl();
}
void getvl ()async{
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  placevl = sharedPreferences.getString("city")!;
}
//
var cityvl1 = "";
var placevl1 = "";
void savevl1 ()async{
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  sharedPreferences.setString("city1",cityvl1);
  getvl1();
}
void getvl1 ()async{
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  placevl1 = sharedPreferences.getString("city1")!;
}
//
var tim1 = "";
var tim2 ="";

void savevl2 ()async{
  SharedPreferences sharedPreferences= await SharedPreferences.getInstance();
  sharedPreferences.setString("tim",tim1);
  getvl2();
}
void getvl2()async{
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  tim2= sharedPreferences.getString("tim")!;
  print("************$tim2");
}
//
var seatset = "";
var seatget = "";

void savev3()async{
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  sharedPreferences.setString("sat",seatset);
  getvl3();
}
void getvl3()async{
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  seatget = sharedPreferences.getString("sat")!;
  print("$seatget");
}
//
var gateset ="";
var gateget = "";

void savevl4()async{
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  sharedPreferences.setString("gt", gateset);
  getvl4();
}
void getvl4()async{
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  gateget = sharedPreferences.getString("gt")!;
}
//
var terminalset ="";
var terminalget ="";

void savevl5()async{
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  sharedPreferences.setString("trm",terminalset);
  getvl5();
}
void getvl5()async{
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  terminalget = sharedPreferences.getString("trm")!;
}

