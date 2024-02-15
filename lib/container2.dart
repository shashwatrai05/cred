import 'package:flutter/material.dart';
import './custom_widget.dart';

class Container2 extends StatefulWidget {
  final VoidCallback onPopContainer2;
  final VoidCallback onOpenContainer1;

  Container2({required this.onPopContainer2, required this.onOpenContainer1});

  @override
  _Container2State createState() => _Container2State();
}

class _Container2State extends State<Container2> {
  // You can add any necessary state variables or methods here

  // Handle the press of the "Credit Amount" button
  void _onCreditAmountPressed() {
    // Close Container2 and open Container1
    widget.onPopContainer2();
    widget.onOpenContainer1();
  }

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
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'How do you wish to repay?',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 12),
              const Text(
                'Choose one of the recommended plans to make your own',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white54,
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
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
                    const SizedBox(width: 15),
                    CustomWidget(
                      containerColor: Colors.purple.shade300,
                      amountText: '5,860/mo',
                      durationText: 'For 9 months',
                      calculationsText: 'See Calculations',
                    ),
                    const SizedBox(width: 15),
                    CustomWidget(
                      containerColor: Colors.blue.shade400,
                      amountText: '5,860/mo',
                      durationText: 'For 9 months',
                      calculationsText: 'See Calculations',
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                width: MediaQuery.of(context).size.width * 0.5,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.transparent,
                  ),
                  onPressed: widget.onPopContainer2,
                  child: const Text(
                    'Claim your own plan',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(250, 50),
                  primary: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: _onCreditAmountPressed,
                child: const Text(
                  'Select your bank account',
                  style: const TextStyle(
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
