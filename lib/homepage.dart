import 'package:cute_fun_dot_indicators/pages/page_1.dart';
import 'package:cute_fun_dot_indicators/pages/page_2.dart';
import 'package:cute_fun_dot_indicators/pages/page_3.dart';
import 'package:cute_fun_dot_indicators/pages/page_4.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Homepage extends StatelessWidget {

  final _controller=PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.deepPurple[200],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: 500,
            child: PageView(
              controller: _controller,
              children: const [
                Page1(),
                Page2(),
                Page3(),
                Page4(),
              ],
            ),
          ),
          
          SmoothPageIndicator(controller: _controller, count: 4
          ,effect: JumpingDotEffect(  //ExpandingDotsEffect,SwapEffect
              activeDotColor: Colors.deepPurple,
              dotColor: Colors.deepPurple.shade100,
              dotHeight: 30,
              dotWidth: 30,spacing: 16,
              //verticalOffset: 30
              jumpScale: 5
            ),)
        ],
      ),
    );
  }
}
