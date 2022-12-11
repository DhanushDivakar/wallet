import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: width,
          height: height,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 2, 11, 78),
                  Color.fromARGB(255, 53, 24, 88),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.4, 1.0],
                tileMode: TileMode.clamp),
          ),
          child: SingleChildScrollView(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Hello, Vignesh',
                          style: TextStyle(
                              color: Colors.white, fontSize: height * 0.025),
                        ),
                        const Spacer(),
                        Column(
                          children: [
                            ClipOval(
                              child: Container(
                                height: height * 0.05,
                                width: width * 0.09,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "Profile",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: height * 0.015),
                            )
                          ],
                        ),
                      ],
                    ),
                    Text(
                      'Home',
                      style: TextStyle(
                          color: Colors.amber,
                          fontSize: height * 0.05,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Stack(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: height * .13,
                          decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(15)),
                        ),
                        Positioned(
                          right: -1,
                          bottom: -1,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              elevation: 5,
                              shape: const CircleBorder(),
                              padding: const EdgeInsets.all(15),
                              backgroundColor: Colors.amber, // <-- Button color
                            ),
                            child: const Icon(Icons.add, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      //color: Colors.amber,
                      width: width,
                      height: height * 0.25,
                      decoration: BoxDecoration(
                          color: Colors.indigoAccent,
                          borderRadius: BorderRadius.circular(15)),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Container(
                      //color: Colors.amber,
                      width: width,
                      height: height * 0.25,
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(15),
                      ),

                      // child: image ,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Wallet',
                      style: TextStyle(
                          color: Colors.amber,
                          fontSize: height * 0.035,
                          fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: ListTile(
                            leading: ClipOval(
                              child: Container(
                                height: height * 0.07,
                                width: width * 0.12,
                                color: Colors.white,
                              ),
                            ),
                            title: Text(
                              'Deposit',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: height * 0.028,
                                  fontWeight: FontWeight.w400),
                            ),
                            subtitle: Text(
                              '25 June 2021',
                              style: TextStyle(
                                  color: Colors.white60,
                                  fontSize: height * 0.020,
                                  ),
                            ),
                            trailing:  Text(
                              '+\$5600.00',
                              style: TextStyle(
                                  color: Colors.amber,
                                  fontSize: height * 0.028,
                                  ),
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
