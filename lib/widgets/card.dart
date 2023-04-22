// it accepts player name as argument
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class CustomCard extends StatelessWidget {
  final String name;

  const CustomCard({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
          margin: const EdgeInsets.only(left:11 ,right: 11,),
          height: 150,
          child: Card(
            elevation: 8,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            color: const Color(0xFF59154a),
            child: Padding(
              padding: const EdgeInsets.only(left:20.0,right: 20,bottom: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text( "Win Big With Fantasy Sports",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                        fontFamily: 'Avenir',
                        fontSize: 25),
                    textAlign: TextAlign.left,
                  ),
                  const SizedBox(height:10),







                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: const [
                                  Padding(
                                    padding: EdgeInsets.only(left: 5.0),
                                    child: Icon(
                                      FontAwesomeIcons.bitcoinSign,
                                      color: Colors.yellow,
                                      size: 15,
                                    ),
                                  ),
                                  Text(
                                    "Analyse and buy players",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'Avenir',
                                        fontSize: 13),
                                    textAlign: TextAlign.left,
                                  ),
                                ],
                              ),
                            ],
                          ),


                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(left: 5.0),
                                child: Icon(
                                  FontAwesomeIcons.bitcoinSign,
                                  color: Colors.yellow,
                                  size: 15,
                                ),
                              ),
                              Text(
                                "Build a portfolio of 4 players",
                                style: TextStyle(
                                  // color: secondaryTextColor,
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal,
                                    fontFamily: 'Avenir',
                                    fontSize: 13),
                                textAlign: TextAlign.left,
                              ),
                            ],
                          ),

                          const SizedBox(height: 10),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(left: 5.0),
                                child: Icon(
                                  FontAwesomeIcons.bitcoinSign,
                                  color: Colors.yellow,
                                  size: 15,
                                ),
                              ),
                              Text(
                                "Sell high and Cash in!",
                                style: TextStyle(
                                  // color: secondaryTextColor,
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal,
                                    fontFamily: 'Avenir',
                                    fontSize: 13),
                                textAlign: TextAlign.left,
                              ),
                            ],
                          ),
                        ],

                      ),

                      const SizedBox(width: 40,),
                      Container(
                        height: 70,
                        width: 70,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("lib/assets/images/bag_coin.png"),
                            fit: BoxFit.cover,
                              ),
                            ),


                      )
                    ],
                  )
                    ],
                  ),



              ),
            ),

    );
  }
}


















/*

                  Row(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(left: 5.0),
                            child: Icon(
                              FontAwesomeIcons.bitcoinSign,
                              color: Colors.yellow,
                              size: 15,
                            ),
                          ),
                          Text(
                            "Analyse and buy players",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Avenir',
                                fontSize: 13),
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 5.0),
                        child: Icon(
                          FontAwesomeIcons.bitcoinSign,
                          color: Colors.yellow,
                          size: 15,
                        ),
                      ),
                      Text(
                        "Build a portfolio of 4 players",
                        style: TextStyle(
                            // color: secondaryTextColor,
                          color: Colors.white,
                            fontWeight: FontWeight.normal,
                            fontFamily: 'Avenir',
                            fontSize: 13),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 5.0),
                        child: Icon(
                          FontAwesomeIcons.bitcoinSign,
                          color: Colors.yellow,
                          size: 15,
                        ),
                      ),
                      Text(
                        "Sell high and Cash in!",
                        style: TextStyle(
                          // color: secondaryTextColor,
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                            fontFamily: 'Avenir',
                            fontSize: 13),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                ],

              ),
            ),
          ),
    );
  }
}
 */


