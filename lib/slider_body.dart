import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';


class SliderBody extends StatefulWidget {

  List<String> imgList =[
    'assets/images/logo.png',
    'assets/images/logo.png',
    "assets/images/phonepage.png",
  ];

  // SliderBody({required this.imgList});

  @override
  State<SliderBody> createState() => _SliderBodyState();
}

class _SliderBodyState extends State<SliderBody> {
  int _current =0;

  @override
  Widget build(BuildContext context) {
    final List<Widget> imageSliders = widget.imgList.map((item) =>
        Container(
          height: 50,
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            child: Stack(
              children: [
                Image.asset(item,fit: BoxFit.cover,width: 250,),
                Positioned(
                    bottom: 0.0,
                    left: 0.0,
                    right: 0.0,
                    child: Container(
                      decoration: BoxDecoration(

                      ),
                      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                    )
                )
              ],
            ),
          ),
        )).toList();
    return Column(
      children: [
        CarouselSlider(
          items: imageSliders,
          options: CarouselOptions(
              autoPlay: true,
              enlargeCenterPage: true,
              aspectRatio: 2.0,
              onPageChanged: (index, reason){
                setState(() {
                  _current = index;
                }
                );
              }
          ),
        ),
       // SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: widget.imgList.map((data) {
            int index = widget.imgList.indexOf(data);
            return AnimatedContainer(
               duration: Duration(milliseconds: 300),
              margin: EdgeInsets.only(right: 5),
              height: 6,
              width: _current == index ? 20 : 6,
              decoration: BoxDecoration(
                color: _current == index ? Colors.orange : Color(0xFFD8D8D8),
                borderRadius: BorderRadius.circular(3),
              ),
            );
          }).toList(),
        )
      ],
    );
  }
}
