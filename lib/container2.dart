import 'package:flutter/material.dart';

class Container2 extends StatelessWidget {
  //final VoidCallback onPopContainer2;

  //Container2({required this.onPopContainer2});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.black,
        ),
        height: MediaQuery.of(context).size.height * 0.7,
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'How do you wish to repay?',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 12),
              Text(
                'Choose one of the recommanded plan to make your own',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white54,
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                      CustomWidget(
                  containerColor: Colors.brown,
                  amountText: '4,272/mo',
                  durationText: 'For 12 months',
                  calculationsText: 'See Calculations',
                ),
                
                SizedBox(width: 15,),
                
                    CustomWidget(
                  containerColor: Colors.purple.shade300,
                  amountText: '5,860/mo',
                  durationText: 'For 9 months',
                  calculationsText: 'See Calculations',
                ),

                SizedBox(width: 15,),
                
                    CustomWidget(
                  containerColor: Colors.blue.shade400,
                  amountText: '5,860/mo',
                  durationText: 'For 9 months',
                  calculationsText: 'See Calculations',
                ),
                  ],
                ),
              ),

              SizedBox(height: 20,),
              
              Container(
                width: MediaQuery.of(context).size.width*0.5,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(30)
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    
                   
                    primary: Colors.transparent,
                    
                  ),
                  onPressed: (){},
                  child: Text(
                    'Claim your own plan',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
               SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(250, 50),
                  primary: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: (){},
                child: Text(
                  'Select your bank account',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



class CustomWidget extends StatelessWidget {
  final Color containerColor;
  final String amountText;
  final String durationText;
  final String calculationsText;

  CustomWidget({
    required this.containerColor,
    required this.amountText,
    required this.durationText,
    required this.calculationsText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      width: 140,
      padding: EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: containerColor,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
             width: 50, // Adjust the width as needed
             height: 50, // Adjust the height as needed
            decoration: BoxDecoration(
              color: containerColor.withOpacity(0.9), 
              shape: BoxShape.circle,
            ),
           child: Icon(Icons.check,size: 40,),
          ),
          SizedBox(height: 8),
          Text(
            amountText,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 4),
          Text(
            durationText,
            style: TextStyle(
              fontSize: 12,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 12),
          
           
          
             Text(
              calculationsText,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          
        ],
      ),
    );
  }
}