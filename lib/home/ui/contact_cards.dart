import 'package:contacts_pcsb/home/bloc/home_bloc_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactCards extends StatelessWidget {
  final HomeBlocBloc homeBloc = HomeBlocBloc();

  _launchURLBrowser() async {
    var url = Uri.parse("https://www.geeksforgeeks.org/");
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
      print('launched');
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    final imageWidth = mediaQuery.size.width * 0.4;
    final imageHeight = mediaQuery.size.width * 0.4;
    double width = mediaQuery.size.width * 0.4;
    return BlocConsumer<HomeBlocBloc, HomeBlocState>(
      bloc: homeBloc,
      listener: (context, state) {
        if (state is CardGmailNavigateEvent) {
          _launchURLBrowser();
          print('done');
        }
      },
      builder: (context, state) {
        return Card(
          color: Colors.black,
          child: Container(
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 124, 145, 154),
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
                border: Border.all(color: Color.fromARGB(255, 45, 44, 44))),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
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
                              width: width * 0.1,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'Large Name',
                                  style: TextStyle(
                                      fontSize: 25,
                                      color:
                                          Color.fromARGB(255, 255, 255, 255)),
                                ),
                                const SizedBox(height: 10),
                                const Text(
                                  'Position',
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.grey),
                                ),
                                const SizedBox(height: 15),
                                Row(
                                  children: [
                                    OutlinedButton(
                                      onPressed: () {
                                        homeBloc.add(CardGmailNavigateEvent());
                                        _launchURLBrowser();
                                      },
                                      style: OutlinedButton.styleFrom(
                                        shape: const CircleBorder(),
                                        side: const BorderSide(
                                          width: 1,
                                          color: Color.fromARGB(211, 77, 101, 111),
                                        ),
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
                                      onPressed: () {
                                        homeBloc.add(CardGitNavigateEvent());
                                      },
                                      style: OutlinedButton.styleFrom(
                                        shape: const CircleBorder(),
                                        side: const BorderSide(width: 1),
                                      ),
                                      child: const SizedBox(
                                        height: 22,
                                        width: 22,
                                        child: Image(
                                          image:
                                              AssetImage('assets/github.png'),
                                        ),
                                      ),
                                    ),
                                    OutlinedButton(
                                      onPressed: () {
                                        homeBloc
                                            .add(CardGLinkedinNavigateEvent());
                                      },
                                      style: OutlinedButton.styleFrom(
                                        shape: const CircleBorder(),
                                        side: const BorderSide(width: 1),
                                      ),
                                      child: const SizedBox(
                                        height: 22,
                                        width: 22,
                                        child: Image(
                                          image:
                                              AssetImage('assets/linkedin.png'),
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
      },
    );
  }
}
