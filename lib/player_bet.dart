import 'package:assigin1/home_pages.dart';
import 'package:flutter/material.dart';

class PlayerBet extends StatefulWidget {
   const PlayerBet({super.key});
  @override
  State<PlayerBet> createState() => _PlayerBetState();
}
class _PlayerBetState extends State<PlayerBet> {
  final List<String> names = <String>['Ms Dhoni', 'Virat', 'Md. Siraj', 'Shubman Gill', 'I. Kishan', ];

  final List<String> team = <String>["CSK","RCB","IND","IND","MI"];

   final List<String> imagesIcon = <String>["lib/assets/images/keeper.jpeg",
         "lib/assets/images/batsmen.jpeg","lib/assets/images/bowler.jpeg","lib/assets/images/batsmen.jpeg","lib/assets/images/keeper.jpeg"];

   final List<String> return1 = <String> ['43','25','64','43','23'];

  final List<String> return2 = <String> ['(-34.98%)','(+1.4%)','(+34.31%)','(-43.11%)','(+23.99%)'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const HomePage(),
          const SizedBox(height: 10),
          Container(
            margin: const EdgeInsets.only(top: 179),
            height: 120,
            // padding: EdgeInsets.only(top: 100),
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.all(8),
                    itemCount: names.length,
                    itemBuilder: (BuildContext context, int index) {
                      return SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Container(
                          width: 120,
                          decoration: BoxDecoration(
                            color: Colors.white70,
                            borderRadius: BorderRadius.circular(10),
                          ),

                          margin: const EdgeInsets.all(2),
                          child: Center(
                              child: Column(
                                children: [
                                  Text(names[index],
                                    style: const TextStyle(fontSize: 18),
                                  ),
                                    const SizedBox(height:10),

                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 0),
                                          child:
                                              SizedBox(
                                                height: 20,
                                                  width: 20,
                                                  child: Image.asset(imagesIcon[index]),
                                        ),
                                        ),
                                        Text(" |${team[index]}"),
                                      ],
                                    ),
                                  const SizedBox(height:10),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(return1[index]),
                                      Text(return2[index],style: (
                                      const TextStyle(
                                        color: Colors.green,
                                      )
                                      ),)
                                    ],
                                  ),

                                ],
                              )
                          ),
                        ),
                      );
                    }
                ),
            ),
          Column(
            children:  [
              const SizedBox(height: 300,),
              Container(
                margin: const EdgeInsets.only(right: 270),
                child: const Text("All Lists",style: TextStyle(
                  fontWeight: FontWeight.bold,fontSize: 19,
                )),
              ),
              const SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {

                      },
                 style: ElevatedButton.styleFrom(
                   backgroundColor: Colors.purple[50],
                  shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),

               ),
    ), child: const Text('Trending',
                  style: TextStyle(color: Color(0xFF700050),
                  fontSize: 22,),

                  ),
                  ),

                  const SizedBox(width: 29,),

                  ElevatedButton(onPressed: () {

                  },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[50],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ), child: const Text('New Players',style: TextStyle(
                    fontSize: 22,
                      color: Colors.black
                  ),),
                  ),
                ],
              ),

              // now make ListTile:

            ],
          ),
          SingleChildScrollView(
            child: Column(
              children:  [
                const SizedBox(height: 360),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView.separated(
                    itemCount: names.length-1,
                    // scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemBuilder: (context,index) {
                      return  ListTile(
                            title: Text(
                              names[index], style: const TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.black87,
                              fontSize: 12,
                            ),
                              textScaleFactor: 1.5,
                            ),
                            trailing: Column(
                              children: [
                                const SizedBox(height: 5),
                                Text(return1[index], style: const TextStyle(
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black,
                                  fontSize: 17,
                                )),
                                const SizedBox(height: 5),
                                Text(return2[index], style: const TextStyle(
                                  fontWeight: FontWeight.normal,
                                  color: Colors.red,
                                  fontSize: 16,
                                )),
                              ],
                            ),

                            subtitle: Row(
                              children: [
                                SizedBox(
                                  height: 20,
                                  width: 20,
                                  child: Image.asset(imagesIcon[index]),
                                ),
                                const SizedBox(width: 5),
                                Text(team[index], style: const TextStyle(
                                  fontWeight: FontWeight.normal,
                                  color: Colors.grey,
                                  fontSize: 18,
                                )),
                              ],
                        ),
                      );
                    }, separatorBuilder: (BuildContext context, int index) {
                      return const Divider(height: 1,thickness:1);
                  },
                  ),
                ),
              ],
            ),
          )
      ],
      ),

    );

  }
}