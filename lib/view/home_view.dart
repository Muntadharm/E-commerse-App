import 'dart:ui';
import 'package:e_commers_app/model/prodect_model.dart';
import 'package:e_commers_app/view/view_model/home_veiw_model.dart';
import 'package:e_commers_app/view/widget/cart_view.dart';
import 'package:e_commers_app/view/widget/daetilas_view.dart';
import 'package:e_commers_app/view/widget/profile_view.dart';
import 'package:flutter/rendering.dart';
import 'widget/colors.dart';
import 'widget/costem_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'widget/cart_view.dart';

class Homeview extends StatelessWidget {
  Homeview({super.key});
  final List<String> name = <String>[
    ' phones ',
    ' watches ',
    ' head phones ',
    ' sd card ',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
      child: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.line_weight_outlined)),
              Container(
                  width: 50,
                  height: 50,
                  child: Image.asset(
                    'images/profiles.png',
                  ))
              // icon: ImageIcon(AssetImage('images/profiles.png')),
              //color: Colors.pink,
              //)
            ],
          ),
          const SizedBox(height: 10),
          _searchTextformFiled(),
          const SizedBox(
            height: 15,
          ),
          const CustenText(
            text: 'our products',
            font: 30,
          ),
          const SizedBox(
              // height: 25,
              ),
          _listViewcategory(),
          const SizedBox(
              // height: 25,
              ),
          _listViewProdect(),
          bottomNavigationBar(),
        ],
      ),
    ));
  }

  Widget _searchTextformFiled() {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.grey.shade200),
      child: TextFormField(
        decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: Icon(
              Icons.search,
              color: b,
            )),
      ),
    );
  }

  _listViewcategory() {
    return Container(
      height: 120,
      child: ListView.separated(
        itemCount: name.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: ((context, index) {
          return Column(
            children: [
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50), color: gr),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    'images/profiles.png',
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              CustenText(
                text: name[index],
              )
            ],
          );
        }),
        separatorBuilder: (context, index) => SizedBox(
          width: 10,
        ),
      ),
    );
  }

  _listViewProdect() {
    return Container(
      height: 300,
      child: ListView.separated(
        itemCount: name.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: ((context, index) {
          return Column(
            children: [
              GestureDetector(
                onTap: () {
                  Get.to(DetailsView());
                },
                child: Container(
                  // height: 60,
                  width: MediaQuery.of(context).size.width * .4,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50), color: gr),
                  child: Container(
                    height: 200,
                    child: Image.asset(
                      'images/iphone.jpg',
                    ),
                  ),
                ),
              ),
              const CustenText(
                text: ' Iphone 14 ',
              ),
              CustenText(
                text: 'Trending Now ',
                color: r,
                font: 14,
              ),
              CustenText(
                text: "\$ 500 ",
                color: g,
              ),
            ],
          );
        }),
        separatorBuilder: (context, index) => SizedBox(
          width: 20,
        ),
      ),
    );
  }

  Widget bottomNavigationBar() {
    return GetBuilder<HomeViewModel>(
      init: HomeViewModel(),
      builder: (controller) => BottomNavigationBar(
        elevation: 8.0,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              color: b,
              size: 25,
            ),
            label: '',
          ),

          BottomNavigationBarItem(
              icon: Icon(
                Icons.card_travel,
                color: b,
                size: 25,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite_border_outlined,
                color: b,
                size: 25,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: b,
                size: 25,
              ),
              label: ' '),
          //BottomNavigationBarItem(icon: Icon(Icons.card_travel))
        ],
        currentIndex: controller.navigatorValue,
        onTap: (i) {
          controller.changeSelectedValue(i);
          if (i == 1) {
            Get.to(CartView());
          } else if (i == 3) {
            Get.to(ProfileView());
          }
        },
      ),
    );
  }
}
