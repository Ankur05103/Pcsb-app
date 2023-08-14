

import 'package:flutter/material.dart';

class ContactCards extends StatelessWidget {
  const ContactCards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    final imageWidth = mediaQuery.size.width * 0.4;
    final imageHeight = mediaQuery.size.width * 0.4; 
    double width = mediaQuery.size.width * 0.4;
    return Card(
      color: Color.fromARGB(255, 10, 10, 10),
      child: Container(
        decoration: BoxDecoration(border: Border.all(color: Color.fromARGB(255, 45, 44, 44))),
        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
        child: Column(
          children: [
            Row(
              children: [
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ClipOval(
                          child: Container(
                            width: 120,
                            height: 120,
                            child: const Image(
                              image: AssetImage('assets/hackerman.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: width * 0.35,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Large Name',
                              style: TextStyle(
                                  fontSize: 25,
                                  color: Color.fromARGB(255, 255, 255, 255)),
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              'Position',
                              style:
                                  TextStyle(fontSize: 10, color: Colors.grey),
                            ),
                            const SizedBox(height: 15),
                            Row(
                              children: [
                                OutlinedButton(
                                  onPressed: () {},
                                  style: OutlinedButton.styleFrom(
                                    shape: const CircleBorder(),
                                    side: const BorderSide(width: 1,color: Color.fromARGB(255, 70, 70, 70) ),
                                    
                                  ),
                                  child: const SizedBox(
                                    height: 22,
                                    width: 22,
                                    child: Image(
                                      image: AssetImage('assets/gmail.jpg'),
                                    ),
                                  ),
                                ),
                                OutlinedButton(
                                  onPressed: () {},
                                  style: OutlinedButton.styleFrom(
                                    shape: const CircleBorder(),
                                    side: const BorderSide(width: 1),
                                  ),
                                  child: const SizedBox(
                                    height: 22,
                                    width: 22,
                                    child: Image(
                                      image: AssetImage('assets/github.png'),
                                    ),
                                  ),
                                ),
                                OutlinedButton(
                                  onPressed: () {},
                                  style: OutlinedButton.styleFrom(
                                    shape: const CircleBorder(),
                                    side: const BorderSide(width: 1),
                                  ),
                                  child: const SizedBox(
                                    height: 22,
                                    width: 22,
                                    child: Image(
                                      image: AssetImage('assets/linkedin.png'),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
