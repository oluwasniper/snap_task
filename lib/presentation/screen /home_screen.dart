import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:snap_task/core/routes/app_router.gr.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Drawer(),
          actions: [
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.notifications),
                ),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Text('A'),
                ),
              ],
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Hi Snap Task',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    Text('Let\'s get started'),
                    SizedBox(height: 20),
                    SizedBox(
                      height: 124,
                      child: ElevatedButton(
                          onPressed: () {
                            context.router.push(const SplashRoute());
                          },
                          style: ButtonStyle(
                            backgroundColor:
                                WidgetStateProperty.all(Color(0xFF060713)),
                            shape: WidgetStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10))),
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text('Running Task',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white)),
                                  Spacer(),
                                  Text('65',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          fontSize: 30)),
                                ],
                              ),
                              // Positioned(
                              //   top: 20,
                              //   left: 20,
                              //   child: Text('Running Task',
                              //       style: TextStyle(
                              //           fontWeight: FontWeight.bold,
                              //           color: Colors.white)),
                              // ),
                              // Positioned(
                              //   bottom: 20,
                              //   left: 20,
                              //   child: Text('65',
                              //       style: TextStyle(
                              //           fontWeight: FontWeight.bold,
                              //           color: Colors.white,
                              //           fontSize: 30)),
                              // ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  Text(
                                    '65',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: 30),
                                  )
                                ],
                              )
                            ],
                          )),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      height: 214,
                      child: Container(
                        color: Color(0xFFEBEDF7),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Activity',
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                                Spacer(),
                                DropdownButton<String>(
                                  value: 'All',
                                  items: [
                                    DropdownMenuItem(
                                      value: 'All',
                                      child: Text('All'),
                                    ),
                                    DropdownMenuItem(
                                      value: 'Today',
                                      child: Text('Today'),
                                    ),
                                    DropdownMenuItem(
                                      value: 'Yesterday',
                                      child: Text('Yesterday'),
                                    ),
                                  ],
                                  onChanged: (String? value) {},
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Center(
                              child: SizedBox(
                                height: 130,
                                width: 237,
                                child: Container(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
        // body: SingleChildScrollView(
        //   child: Column(
        //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //     crossAxisAlignment: CrossAxisAlignment.start,
        //     children: [
        //       Text('Hi Snap Task',
        //           style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        //       Text('Let\'s get started'),
        //       SizedBox(height: 20),
        //       SizedBox(
        //         width: 317,
        //         height: 124,
        //         child: ElevatedButton(
        //             onPressed: () {
        //               context.router.push(const SplashRoute());
        //             },
        //             style: ButtonStyle(
        //               backgroundColor:
        //                   WidgetStateProperty.all(Color(0xFF060713)),
        //               shape: WidgetStateProperty.all(RoundedRectangleBorder(
        //                   borderRadius: BorderRadius.circular(10))),
        //             ),
        //             child: Stack(
        //               children: [
        //                 Positioned(
        //                   top: 20,
        //                   left: 20,
        //                   child: Text('Running Task',
        //                       style: TextStyle(
        //                           fontWeight: FontWeight.bold,
        //                           color: Colors.white)),
        //                 ),
        //                 Positioned(
        //                   bottom: 20,
        //                   left: 20,
        //                   child: Text('65',
        //                       style: TextStyle(
        //                           fontWeight: FontWeight.bold,
        //                           color: Colors.white,
        //                           fontSize: 30)),
        //                 ),
        //               ],
        //             )),
        //       ),
        //       SizedBox(
        //         height: 100,
        //       ),
        //       SizedBox(
        //         width: 327,
        //         height: 214,
        //         child: Container(
        //           color: Color(0xFFEBEDF7),
        //           child: Stack(
        //             children: [
        //               Row(
        //                 crossAxisAlignment: CrossAxisAlignment.start,
        //                 children: [
        //                   Positioned(
        //                     top: 20,
        //                     left: 20,
        //                     child: Text('Activity'),
        //                   ),
        //                   Positioned(
        //                     top: 20,
        //                     right: 20,
        //                     child: DropdownButton<String>(
        //                       value: 'All',
        //                       items: [
        //                         DropdownMenuItem(
        //                           value: 'All',
        //                           child: Text('All'),
        //                         ),
        //                         DropdownMenuItem(
        //                           value: 'Today',
        //                           child: Text('Today'),
        //                         ),
        //                         DropdownMenuItem(
        //                           value: 'Yesterday',
        //                           child: Text('Yesterday'),
        //                         ),
        //                       ],
        //                       onChanged: (String? value) {},
        //                     ),
        //                   )
        //                 ],
        //               )
        //             ],
        //           ),
        //         ),
        //       ),
        //     ],
        //   ),
        );
  }
}
