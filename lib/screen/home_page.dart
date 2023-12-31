import 'package:course_premium/widgets/category_button.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 20.0,
              top: 20.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/images/cross_mark.png',
                  scale: 16,
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 30.0,
                ),
                child: Text(
                  'Premium',
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold
                    ,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'The Secrets to be Fluent in English',
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.normal,
                    color: Colors.black.withOpacity(0.6),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal:  16.0,
                  vertical:  8.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8.0,
                      ),
                      child: Expanded(
                        child: CategoryButton(
                            image: 'assets/images/world.png',
                            text: 'Full Access to',
                            text2: 'Pattern Lessons'
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8.0,
                      ),
                      child: Expanded(
                        child: CategoryButton(
                          image: 'assets/images/open_book.png',
                          text: 'Unlock',
                          text2: 'All Limitation',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal:  16.0,
                  vertical:  8.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8.0,
                      ),
                      child: Expanded(
                        child: CategoryButton(
                            image: 'assets/images/book_back.png',
                            text: 'All Topics',
                            text2: 'Available'
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8.0,
                      ),
                      child: Expanded(
                        child: CategoryButton(
                          image: 'assets/images/document.png',
                          text: 'Personlized',
                          text2: 'Coaching',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  Padding(
                    padding: const EdgeInsets.only(
                      top: 20.0,
                    ),
                    child: Text(
                      '2021 Special Early Birds Offer',
                      style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.red.withOpacity(0.5),
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:[
                        Text(
                         'IDR50.000',
                         style: TextStyle(
                           fontSize: 20.0,
                           fontWeight: FontWeight.w800,
                         ),
                        ),
                        Text(
                          '/month',
                          style: TextStyle(
                            fontSize: 10.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: InkWell(
                        onTap: (){},
                        borderRadius: BorderRadius.circular(50),
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(50.0),
                            color: Colors.teal.withOpacity(0.7),
                            border: Border.all(
                              color: Colors.black,
                            ),
                          ),
                          width: 200,
                          height: 50,
                          child: Center(
                            child: Text(
                              'Start 3 Days Free Trial',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10.0,
                              ),
                            ),
                          ),
                        ),
                      ),

                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'View all Plan',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: 10.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              )
          ),
        ],
      ),
    );
  }

}