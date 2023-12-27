import 'package:flightticket/data.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


// ignore: must_be_immutable
class Ticketrt extends StatefulWidget {
  String? data;
   Ticketrt({super.key,this.data});

  @override
  State<Ticketrt> createState() => _TicketrtState();
}

class _TicketrtState extends State<Ticketrt> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getvl2();
  }
  


  var dat = "";
  var dtct = TextEditingController();
  var dtct1 = TextEditingController();

  var flcv = "";
  var flcl = ["Economy","Premium Economy","Business","First Class"];
  String? dropdownvalue;
  
  
  var pasdv ="";
  var passgr = ["1","2","3","4","5","6"];
  String? passenersvalue;
 var passgrs = TextEditingController();

 
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
            
          children: [ Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("asset/image/travel9.jpeg"),
                fit: BoxFit.cover)
            ),
          ),
          IconButton(onPressed: (){
            Navigator.pop(context);
          }, icon: Icon(Icons.arrow_back,
          color: Colors.white,)),
          Padding(
            padding: const EdgeInsets.only(top: 235,left: 50,right: 50,bottom: 45),
            child: Container(
              height:double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.black)
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 235,left: 35,right: 35,bottom:53),
            child: Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.black)
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 100,left:25,right: 25,bottom:65),
            child: Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.black),
              ),
              child: ListView(
                children: [
                  SizedBox(
                    height: 150,
                    width: 350,
                    child: Card(
                      
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 50),
                                  child: Icon(Icons.flight_takeoff),
                                ),
                                Text("NYC",
                                style: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.w900
                                ),),
                                Text("New York City",
                                style: TextStyle(
                                  
                                  
                                ),),
                                Text("05:30AM")
                              ],
                            ),
                          ),
                    Spacer(),                      
                          Text("-",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w900
                          ),),
                    Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 50),
                                  child: Icon(Icons.flight_land),
                                ),
                                Text(placevl1.toString(),
                                style: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.w900
                                ),
                                
                                ),
                                Text(placevl.toString()),
                                Text(tim2.toString())
                              ],
                            ),
                          ) 
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: Row(
                      children: [
                        Text("Passanger:"),
                        Text("John Jones"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50,right: 50),
                    child: TextField(
                      controller: dtct,
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: "Departing Date",
                        suffixIcon: IconButton(onPressed: ()async{
                          final selectdate = await showDatePicker(context: context,
                          initialDate: DateTime.now(), 
                          firstDate: DateTime.now().subtract(Duration(days: 2000)),
                          lastDate: DateTime(3000));
                          setState(() {
                            dat = DateFormat.yMMMMEEEEd().format(selectdate!);
                            dtct.text = dat;
                          });
                        }, icon: Icon(Icons.date_range))
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50,right: 50),
                    child: TextField(
                      controller: dtct1,
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: "Returnning Date",
                        suffixIcon: IconButton(onPressed: ()async{
                          final selectdate = await showDatePicker(context: context, 
                          initialDate: DateTime.now(), 
                          firstDate: DateTime.now().subtract(Duration(days: 2000)),
                          lastDate: DateTime(3000));
                          setState(() {
                            dat = DateFormat.yMMMMEEEEd().format(selectdate!);
                            dtct1.text = dat;
                          });
                        }, icon: Icon(Icons.date_range))
                      ),
                    ),
                  ),
              
                  Padding(
                    padding: const EdgeInsets.only(left: 50,right: 50),
                    child: DropdownButtonFormField(
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: "Class"
                      ),
                      value: dropdownvalue,
                      items:flcl.map((String fl){
                        return DropdownMenuItem(
                          value: fl,
                          child: Text(fl));
                      }).toList(), 
                      onChanged: (String? newvalue){
                        setState(() {
                          dropdownvalue = newvalue!;
                        });
                      }),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50,right: 50),
                    child: DropdownButtonFormField(
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                      
                        labelText: "Passsanger"
                      ),
                      
                      value: passenersvalue,
                      items: passgr.map((String pass){
                        return DropdownMenuItem(
                          value: pass,
                          child: Text(pass));
                      }).toList(), 
                      onChanged: (String? newvalue1){
                        setState(() {
                          passenersvalue = newvalue1!;
                        });
                        Text(pasdv);
                      }),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Align(alignment: FractionalOffset.bottomCenter,
                      child: Container(
                        height:30,
                        width: 250,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.black),
                        ),
                        child: Row(
                          children: [
                            Text("Seat"),
                    Spacer(),
                            Text(seatget.toString()),
                  
                  
                          ],
                          
                        ),
                      ),
                    ),
                  ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Align(alignment: Alignment.bottomCenter,
                child: Container(
                  height: 30,
                  width: 250,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black),
                  ),
                  child: Row(
                    children: [
                      Text("Gate"),
              Spacer(),
                      Text(gateget.toString())
                    ],
                  ),
              
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Align(alignment: Alignment.bottomCenter,
                child: Container(
                  height: 30,
                  width: 250,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black)
                  ),
                  child: Row(
                    children: [
                      Text("Terminal"),
              Spacer(),
                      Text(terminalget.toString())
                    ],
                  ),
                  
                ),
              ),
            ),
                  
                ],
              ),
              
            ),
          ),
            
               
            
            
              
            
            
            
          ]
        ),
      ),
    );
  }
}
