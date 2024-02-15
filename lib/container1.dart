import 'package:flutter/material.dart';


class Container1 extends StatefulWidget {
   final VoidCallback onOpenContainer2;
  final VoidCallback onCloseContainer2;

  Container1({required this.onOpenContainer2, required this.onCloseContainer2});

  @override
  _Container1State createState() => _Container1State();
}

class _Container1State extends State<Container1> {
  bool _isExpanded = true;

  void _toggleExpansion() {
    setState(() {
      _isExpanded = !_isExpanded;
    });

    widget.onOpenContainer2(); // Notify the parent about the toggle

    if (_isExpanded) {
      widget.onCloseContainer2(); // Close Container2
    }
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        height: 
        // _isExpanded
        //     ? MediaQuery.of(context).size.height * 0.8:
             MediaQuery.of(context).size.height * 0.8,
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: _isExpanded? Colors.black87:Colors.black26,
              ),
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: _isExpanded? MainAxisAlignment.center:MainAxisAlignment.start,
                  children: <Widget>[
                    _isExpanded
                        ? Text(
                            'Shashwat, how much do you need?',
                            style: TextStyle(
                              fontSize: 24,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          )
                        : GestureDetector(
                            onTap: _toggleExpansion,
                            child: Text(
                              'Credit Amount\n 150000 ',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white54,
                                fontWeight: FontWeight.w800,
                              ),
                            )),
                    SizedBox(height: 12),
                    Text(
                      'Move the dial and set the amount you need up to Rs 48,736',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white54,
                        fontWeight: FontWeight.w400,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 20),
                    
                       Container(
                        height:
                        //  _isExpanded?
                         MediaQuery.of(context).size.width * 0.8,
// : MediaQuery.of(context).size.width * 0.2,
                        width: MediaQuery.of(context).size.width * 0.8,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            SizedBox(height: 10),
                            Stack(
                              alignment: Alignment.center,
                              children: [
                                Container(
                                  height: 
                                       MediaQuery.of(context).size.width *
                                          0.6,

                                  width:MediaQuery.of(context).size.width *
                                          0.6,
                                     
                                  decoration: BoxDecoration(
                                    color: Colors.orange.shade300,
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Colors.orange.shade200,
                                      width: 10.0,
                                    ),
                                  ),
                                  child: Container(
                                    height: 140,
                                    width: 140,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle,
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Text(
                                          'Credit Amount',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(height: 8),
                                        Text(
                                          '1,50,000',
                                          style: TextStyle(
                                            fontSize: 24,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.blue,
                                          ),
                                        ),
                                        SizedBox(height: 8),
                                        Text(
                                          '1.04% monthly',
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.all(10),
                              child: Text(
                                'Stash is instant money will be credited within seconds',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ],
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
                      onPressed: _toggleExpansion,
                      child: Text(
                        'Proceed to EMI section',
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
          ],
        ),
      ),
    );
  }
}

