import 'package:cu_guide/data/static_data.dart';
import 'package:cu_guide/features/departments/view/department_tab_screen.dart';
import 'package:cu_guide/features/home/widgets/slider_screen_widget.dart';
import 'package:flutter/material.dart';

class HomeTabScreen extends StatelessWidget {
  const HomeTabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                  height: 170,
                  child: Container(
                      color: Colors.green[100], //late for bg color
                      padding: EdgeInsets.all(1),
                      child: SliderScreenWidget(),
                    ),
              ),

              SizedBox(height: 5),

              // train schedule box
              SizedBox(
                  height: 140,
                  width: double.infinity,
                  child: Container(
                    color: Colors.green[200], //late for bg color
                    padding: EdgeInsets.all(5),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: trainScheduleList.map((schedule) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 1.0), // 👈 spacing between cards
                            child: Card(
                              elevation: 2,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              color: Colors.green[100],
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      ClipOval(
                                        child: Image.asset(
                                          schedule.imageUrl, // TODO: replace with schedule.image
                                          width: 70,
                                          height: 60,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      const SizedBox(height: 2),
                                      Text(
                                        schedule.title, // TODO: replace with schedule.dayType
                                        style: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.purple,
                                          // color: Colors.orange,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                      const SizedBox(height: 5),
                                      Text(
                                        schedule.subtitle, // TODO: replace with schedule.route
                                        style: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                      const SizedBox(height: 8),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  )
              ),

              SizedBox(height: 24),

              // SizedBox(
              //   child: Padding(
              //     padding: const EdgeInsets.all(8.0),
              //     child: Text(
              //       'Welcome to Chittagong University',
              //       style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              //     ),
              //
              //   ),
              // ),


              SizedBox(height: 5),

              SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 15.0),
                      child: const Text(
                        "অনুষদ :",
                        style: TextStyle(color: Colors.green,fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                    ),

                    const SizedBox(height: 5),
        
                    // Faculty cards as part of the column
                    ListView.builder(
                      shrinkWrap: true, // ✅ makes ListView take only needed height
                      physics: const NeverScrollableScrollPhysics(), // ✅ let outer scroll handle it
                      itemCount: facultyList.length,
                      itemBuilder: (context, index) {
                        final faculty = facultyList[index];
                        return Card(
                          child: ListTile(
                            leading: Image.asset(
                                faculty.imageUrl ?? '',
                            ),
                            title: Text(faculty.name, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold), ),
                            subtitle: Text(faculty.shortDescription ?? ''),
                          ),
                        );
                      },
                    ),


                  ],
                ),
              )


      ],







        ),

    );
  }
}
