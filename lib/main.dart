import 'dart:async';

import 'package:flightticket/data.dart';
import 'package:flightticket/ticket.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
// ignore: must_be_immutable
class HomeScreen extends StatefulWidget {
  String? data;
   HomeScreen({super.key,this.data});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  

  
  @override
  
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5),()=>
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomeScreen1())));
  }
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage("asset/image/travel1.jpeg"),
        fit:BoxFit.cover )
      ),
    );
  }
}
class HomeScreen1 extends StatefulWidget {
  const HomeScreen1({super.key});

  @override
  State<HomeScreen1> createState() => _HomeScreen1State();
}

class _HomeScreen1State extends State<HomeScreen1> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child:Scaffold(
        backgroundColor: Colors.black,
          body:Column(
            children: [
              Column(
                children: [
                  Container(
                        height: 250,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("asset/image/travel2.jpeg"),
                            fit: BoxFit.fill),
                        ),child: Padding(
                          padding: const EdgeInsets.only(left: 60,top: 60),
                          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("London",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 40,
                                fontWeight: FontWeight.w900
                              ),),
                              Text("From 500 Rs.",
                              style: TextStyle(
                                color: Colors.black,
                               fontSize: 20,
                               fontWeight: FontWeight.w400 
                              ),)
                            ],
                          ),
                        ),
                        ),
                        Row(mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("Places",
                            style: TextStyle(
                              color: Colors.white
                            ),),
                          ],
                        ),
                        
                ],
                
              ),
              Container(
                height: 500,
                width: double.infinity,
                
                child: GridView.builder(
                  itemCount: placeimg.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2), 
                  itemBuilder: (context,index){
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: (){
                          setState(() {
                            citys = placenm[index];
                            cityvl1 = placenm1[index];
                            tim1 = tims[index];
                            seatget = seat[index];
                            gateget = gate[index];
                            terminalget = terminal[index];
                            
                            savevl();
                            savevl1();
                            savevl2();
                            savev3();
                            savevl4();
                            savevl5();
                          
                          });
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return Ticketrt();
                          }));
                        },
                        child: Container(
                          
                          decoration: BoxDecoration(
                            color: Colors.black,
                            image: DecorationImage(
                              image: AssetImage(placeimg[index]),
                              fit: BoxFit.fill)
                          ),
                          child: Stack(
                            children: [
                              Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(placenm[index],
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w900
                                  ),),
                                  Column(
                                    children: [
                                      Text(days[index],
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.w900
                              ),),
                              Text(flightrs[index],
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w900
                              ),)
                                    ],
                                  ),
                              
                                ],
                              ),
                            ],
                          ),
                          
                        ),
                      ),
                    );
                  }
                  ),
              )
            ],
          ),  
        )
    );
  }
}
