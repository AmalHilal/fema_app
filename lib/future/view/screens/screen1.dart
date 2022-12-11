import 'package:fema/core/constants/const.dart';
import 'package:fema/future/view/widget/start_page.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Screen1 extends StatefulWidget {
  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  PageController controller = PageController();
  bool isLastPage=false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        body: Container(
            margin: EdgeInsets.only(bottom: 70),
            child: PageView(
              onPageChanged: (index){
                setState((){
                  index==2? isLastPage=true:isLastPage=false;
                });
              },
              controller: controller,
              children: [
                StartPage(image: ConstImage.img1, des: ConstDes.des1),
                StartPage(image: ConstImage.img2, des: ConstDes.des2),
                StartPage(image: ConstImage.img3, des: ConstDes.des3),
              ],
            )),
        bottomSheet: isLastPage?Container(
          width: 400,
          height: 70,
          color: Colors.indigo,
          child: InkWell(
            onTap: (){
              Navigator.of(context).pushReplacementNamed("/homePage");
            },
            child: Center(child: const Text("Get Started",style: TextStyle(color: Colors.white,fontSize: 20),)),
          ),
        ):tarns()
      ),
    );
  }



  Widget tarns()
  {
    return Container(
      height: 70,
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
              onPressed: () {
                controller.previousPage(
                    duration: Duration(milliseconds: 500),
                    curve: Curves.linear);
              },
              child: Text(
                "Back",
                style: TextStyle(fontSize: 20),
              )),
          SmoothPageIndicator(

            controller: controller,
            count: 3,
            onDotClicked: (index) => controller.animateToPage(index,
                duration: Duration(milliseconds: 500),
                curve: Curves.linear),
            effect: SwapEffect(
              activeDotColor: Colors.pink,
              dotColor: Colors.lightBlue,
              dotHeight: 16,
              dotWidth: 16,
              type: SwapType.yRotation,
            ),
          ),

          TextButton(
              onPressed: () {
                controller.nextPage(
                    duration: Duration(milliseconds: 500),
                    curve: Curves.linear);
              },
              child: Text("Next", style: TextStyle(fontSize: 20))),
        ],
      ),
    );
  }

}
