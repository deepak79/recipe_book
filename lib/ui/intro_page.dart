import 'package:flutter/material.dart';
import 'package:recipe_book/ui_elements/dots_indicator.dart';

class IntroPage extends StatefulWidget {
  @override
  State createState() => IntroPageState();
}

class IntroPageState extends State<IntroPage> {
  final _controller = PageController(initialPage: 0);
  int _index = 0;

  static const _kDuration = const Duration(milliseconds: 300);

  static const _kCurve = Curves.ease;

  final _kArrowColor = Colors.black.withOpacity(0.8);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.fromLTRB(0, 0, 10, 30),
        child: FloatingActionButton(
          backgroundColor: Colors.white,
          onPressed: () {},
          child: Icon(
            Icons.skip_next,
            color: Colors.red,
          ),
        ),
      ),
      body: IconTheme(
        data: IconThemeData(color: _kArrowColor),
        child: Stack(
          children: <Widget>[
            PageView(
              children: <Widget>[
                ConstrainedBox(
                  constraints: const BoxConstraints.expand(),
                  child: Container(
                    color: Color.fromRGBO(84, 110, 122, 1),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.explore,
                            color: Colors.white,
                            size: 140,
                          ),
                          SizedBox(
                            height: 60,
                          ),
                          Text(
                            'Explore',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            'Lorem ipsum lorem ipsum lorem ipsum',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                ConstrainedBox(
                  constraints: const BoxConstraints.expand(),
                  child: Container(
                    color: Color.fromRGBO(255, 109, 0, 1),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.explore,
                            color: Colors.white,
                            size: 140,
                          ),
                          SizedBox(
                            height: 60,
                          ),
                          Text(
                            'Explore',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            'Lorem ipsum lorem ipsum lorem ipsum',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                ConstrainedBox(
                  constraints: const BoxConstraints.expand(),
                  child: Container(
                    color: Color.fromRGBO(56, 142, 60, 1),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.explore,
                            color: Colors.white,
                            size: 140,
                          ),
                          SizedBox(
                            height: 60,
                          ),
                          Text(
                            'Explore',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            'Lorem ipsum lorem ipsum lorem ipsum',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
              physics: PageScrollPhysics(),
              controller: _controller,
              onPageChanged: (index) {
                setState(() {
                  _index = index;
                });
              },
            ),
            Positioned(
              bottom: 0.0,
              left: 0.0,
              right: 0.0,
              child: Container(
                color: Colors.grey[800].withOpacity(0.5),
                padding: const EdgeInsets.all(20.0),
                child: Center(
                  child: DotsIndicator(
                    dotColor: Colors.white,
                    dotActiveColor: Colors.white,
                    numberOfDot: 3,
                    position: _index,
                    dotSize: const Size.square(9.0),
                    dotActiveSize: const Size(18.0, 9.0),
                    dotActiveShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
