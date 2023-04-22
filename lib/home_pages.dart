import 'package:assigin1/widgets/bottom_navbar.dart';
import 'package:assigin1/widgets/card.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'model/player_info.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: <Widget>[
            InkWell(
              child: SizedBox(
                height: 187,
                child: Swiper(
                  itemCount: 2,
                  itemWidth: MediaQuery.of(context).size.width,
                  itemHeight: MediaQuery.of(context).size.height,
                  layout: SwiperLayout.STACK,
                  pagination:  const SwiperPagination(
                      builder: DotSwiperPaginationBuilder(
                          color: Colors.pink,
                          activeColor: Colors.white,
                          activeSize: 12, space: 4)),
                  itemBuilder: (context, index) {
                    return Stack(
                        children: [
                          Column(
                            children: [
                              const SizedBox(
                                height: 10,
                              ),
                              CustomCard(
                                name: playerInfo[index].name,
                              ),
                            ],
                          ),
                        ],

                    );
                  },
                ),
              ),
            )
          ],
        ),
        bottomNavigationBar: const CustomBottomNavbar());
  }
}