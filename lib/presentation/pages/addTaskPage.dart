import 'package:flutter/material.dart';
import 'package:todo_app_with_bloc/presentation/widgets/bottomNavigationBar.dart';
import 'package:todo_app_with_bloc/styleManager/colorManager.dart';
import 'package:todo_app_with_bloc/styleManager/textStyleManager.dart';
import '../widgets/chooseColorWidget.dart';
import '../widgets/textInputWidget.dart';

// controllers

TextEditingController _subTaskController = TextEditingController();

TextEditingController _taskController = TextEditingController();

String _startTimeData = 'No time set';
String _endTimeData = 'No time set';

List<String> photos = [];

class AddTaskPage extends StatefulWidget {
  const AddTaskPage({Key? key}) : super(key: key);

  @override
  State<AddTaskPage> createState() => _AddTaskPageState();
}

class _AddTaskPageState extends State<AddTaskPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Stack(children: [
          CustomScrollView(
            slivers: [
              SliverAppBar(
                backgroundColor: Colors.black,
                expandedHeight: 100.0,
                automaticallyImplyLeading: false,
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: false,
                  collapseMode: CollapseMode.parallax,
                  titlePadding: const EdgeInsets.only(left: 15, bottom: 10),
                  title: Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.arrow_back_ios_rounded,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        'Add New Task',
                        style: TextManager.titleStyle,
                      ),
                    ],
                  ),
                ),
                pinned: true,
                floating: true,
                snap: true,
              ),
              SliverToBoxAdapter(
                child: Card(
                  elevation: 0,
                  color: Colors.white,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(21),
                          topLeft: Radius.circular(21))),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const TextInputWidget(
                          hintText: 'Task Title',
                          keyboardType: TextInputType.text,
                        ),
                        // color widget
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              const Text(
                                "Task Color",
                                style: TextManager.titleStyle,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 8.0),
                                child: Padding(
                                  padding: const EdgeInsets.only(bottom: 22.0),
                                  child: Text(
                                    'Choose task color you prefer',
                                    style: TextManager.subTitleStyle,
                                  ),
                                ),
                              ),
                              Wrap(
                                spacing: 10,
                                alignment: WrapAlignment.start,
                                children: const [
                                  ChooseColorWidget(
                                    color: ColorManager.containerColor1,
                                  ),
                                  ChooseColorWidget(
                                    color: ColorManager.containerColor2,
                                  ),
                                  ChooseColorWidget(
                                    color: ColorManager.containerColor3,
                                  ),
                                  ChooseColorWidget(
                                    color: ColorManager.containerColor4,
                                  ),
                                  ChooseColorWidget(
                                    color: ColorManager.containerColor5,
                                  ),
                                  ChooseColorWidget(
                                    color: ColorManager.containerColor6,
                                  ),
                                  ChooseColorWidget(
                                    color: ColorManager.containerColor7,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        // reminder time widget
                        const Padding(
                          padding:
                          EdgeInsets.only(left: 15.0, bottom: 15, top: 15),
                          child: Text(
                            "Remind me",
                            style: TextManager.titleStyle,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 15, top: 8, bottom: 22.0),
                          child: Text(
                            'choose the days / time to remind your task',
                            style: TextManager.subTitleStyle,
                          ),
                        ),




                        // add new subtask widget
                        const Padding(
                          padding:
                              EdgeInsets.only(left: 15.0, bottom: 15, top: 15),
                          child: Text(
                            "Subtasks",
                            style: TextManager.titleStyle,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 15, top: 8, bottom: 22.0),
                          child: Text(
                            'Add your subtasks with photos and duration',
                            style: TextManager.subTitleStyle,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Expanded(
                                child: TextInputWidget(
                              hintText: 'Subtask',
                              keyboardType: TextInputType.text,
                            )),
                            IconButton(
                                onPressed: () {}, icon: const Icon(Icons.add))
                          ],
                        ),
                          // time picker widget
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  TextButton.icon(
                                      onPressed: () async {
                                        showTimePicker(
                                          context: context,
                                          initialTime: TimeOfDay.now(),
                                        ).then((value) {
                                          if (value != null &&
                                              value.toString() !=
                                                  _startTimeData) {
                                            setState(() {
                                              _startTimeData = value
                                                  .format(context)
                                                  .toString();
                                            });
                                          } else if (value.toString() !=
                                              _startTimeData) {
                                            _startTimeData = 'Invalid time';
                                          } else {
                                            return;
                                          }
                                        });
                                      },
                                      icon: const Icon(
                                          Icons.access_time_rounded),
                                      label: const Text('Starting from')),
                                  Text(_startTimeData),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  TextButton.icon(
                                      onPressed: () async {
                                        showTimePicker(
                                          context: context,
                                          initialTime: TimeOfDay.now(),
                                        ).then((value) {
                                          if (value != null &&
                                              value.toString() !=
                                                  _endTimeData) {
                                            setState(() {
                                              _endTimeData = value
                                                  .format(context)
                                                  .toString();
                                            });
                                          } else if (value.toString() ==
                                              _endTimeData) {
                                            _endTimeData = 'Invalid time';
                                          } else {
                                            return;
                                          }
                                        });
                                      },
                                      icon: const Icon(
                                          Icons.access_time_rounded),
                                      label: const Text('Ends at')),
                                  Text(_endTimeData),
                                ],
                              ),
                            ],
                          )
                        ),
                        // photos title widget
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              const Padding(
                                padding:
                                    EdgeInsets.symmetric(vertical: 12.0),
                                child: Text(
                                  "Photos",
                                  style: TextManager.titleStyle,
                                ),
                              ),
                              Text(
                                'Add Photos to the task ',
                                style: TextManager.subTitleStyle,
                              )
                            ],
                          ),
                        ),
                        // photos widget



                        SizedBox(
                          height: MediaQuery.of(context).size.height / 3,
                          child: photos.isEmpty
                              ? const EmptyPhotoListContainer()
                              : const SizedBox(),
                        ),
                        // subtask list
                        const Padding(
                          padding:
                          EdgeInsets.only(left: 15.0, bottom: 15, top: 15),
                          child: Text(
                            "Subtasks list",
                            style: TextManager.titleStyle,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 15, top: 8, bottom: 22.0),
                          child: Text(
                            'All the subtasks related to ${_taskController.value.text}',
                            style: TextManager.subTitleStyle,
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 3,
                          child: photos.isEmpty
                              ? const EmptySubTaskListContainer()
                              : const SizedBox(),
                        ),

                        const SizedBox(
                          height: 90,
                        )
                      ]),
                ),
              )
            ],
          ),
          const Positioned(bottom: 0, child: BottomNavigationBarWidget())
        ]));
  }
}

class EmptyPhotoListContainer extends StatelessWidget {
  const EmptyPhotoListContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text(
            'No photos added ,add a new photo',
            style: TextManager.subTitleStyle,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Card(
                  color: const Color.fromRGBO(96, 148, 247, 1),
                  child: InkWell(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        children: const [
                          Icon(Icons.add_a_photo_outlined, color: Colors.white),
                          SizedBox(
                            height: 4,
                          ),
                          Text('Take a photo',
                              style: TextStyle(color: Colors.white))
                        ],
                      ),
                    ),
                  )),
              Card(
                  color: const Color.fromRGBO(96, 148, 247, 1),
                  child: InkWell(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Icon(Icons.image, color: Colors.white),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            'Open Gallery',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  )),
            ],
          )
        ],
      ),
    );
  }
}

class EmptySubTaskListContainer extends StatelessWidget {
  const EmptySubTaskListContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.add_task_rounded,
            color: Colors.grey[500],
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'No Subtask added ',
            style: TextManager.subTitleStyle,
          ),
        ],
      ),
    );
  }
}
