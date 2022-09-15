import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageOne extends StatefulWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  String? _currentText;
  bool _cupertinoswitch = true;
  double _selectedValue = 0;
  final int _sliding = 0;
  int _selectedcupertinopicker = 0;

  final TextEditingController _isCuperTF =
      TextEditingController(text: 'Search');
  final TextEditingController _searchtext =
      TextEditingController(text: 'Search');

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        resizeToAvoidBottomInset: true,
        navigationBar: const CupertinoNavigationBar(
          middle: Text('CupertinoNavigationBar'),
          backgroundColor: CupertinoColors.white,
        ),
        child: SafeArea(
            child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 16,
                ),
                //CupertinoButton
                CupertinoButton(
                  onPressed: () {
                    showCupertinoModalPopup(
                        context: context,
                        builder: (context) {
                          //CupertinoActionSheet
                          return CupertinoActionSheet(
                            title: const Text("Hobbies"),
                            message: const Text("Select your hobbie"),
                            actions: <Widget>[
                              CupertinoActionSheetAction(
                                child: const Text("Coding"),
                                onPressed: () {},
                              ),
                              CupertinoActionSheetAction(
                                child: const Text("Main Game"),
                                onPressed: () {},
                              ),
                              CupertinoActionSheetAction(
                                child: const Text("Menulis"),
                                onPressed: () {},
                              ),
                            ],
                          );
                        });
                  },
                  child: const Text("CupertinoActionSheet"),
                ),
                const SizedBox(
                  height: 16,
                ),
                //CupertinoActivityIndicator
                const CupertinoActivityIndicator(animating: false),
                const SizedBox(
                  height: 16,
                ),
                //CupertinoButton.Filled
                CupertinoButton.filled(
                  child: const Text('CupertinoAlertDialog'),
                  onPressed: () {
                    showCupertinoDialog(
                        context: context,
                        builder: (context) {
                          //CupertinoAlertDialog
                          return CupertinoAlertDialog(
                            title: const Text("Warning"),
                            content: const Text(
                                "Are you sure want to delete this data?"),
                            actions: <Widget>[
                              CupertinoDialogAction(
                                child: const Text("No"),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
                              CupertinoDialogAction(
                                onPressed: () {},
                                isDestructiveAction: true,
                                child: const Text("Yes"),
                              ),
                            ],
                          );
                        });
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    //CupertinoContextMenuAction
                    CupertinoContextMenu(
                        actions: <Widget>[
                          CupertinoContextMenuAction(
                            child: const Text('Download'),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                          CupertinoContextMenuAction(
                            child: const Text('Share'),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          )
                        ],
                        child: const FlutterLogo(
                          size: 50,
                        )),
                    const SizedBox(
                      height: 20.0,
                    ),
                    const Text(
                      "CupertinoContextMenu (Long Press Flutter Logo)",
                      style: TextStyle(color: CupertinoColors.black),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                CupertinoButton(
                  onPressed: () {
                    showCupertinoModalPopup(
                        context: context,
                        builder: (context) {
                          return SizedBox(
                            height: 300.0,
                            //CupertinoDatePicker
                            child: CupertinoDatePicker(
                              backgroundColor: CupertinoColors.white,
                              initialDateTime: DateTime.now(),
                              onDateTimeChanged: (dateTime) {},
                            ),
                          );
                        });
                  },
                  child: const Text("CupertinoDatePicker"),
                ),
                const SizedBox(
                  height: 16,
                ),
                CupertinoButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        //CupertinoPageRoute
                        CupertinoPageRoute(builder: (BuildContext context) {
                      return const PageCupTwo();
                    }));
                  },
                  child: const Text("CupertinoPageRoute && CupertinoScrollbar"),
                ),
                const SizedBox(
                  height: 16,
                ),
                CupertinoButton(
                    child: Text('CupertinoPicker $_selectedcupertinopicker'),
                    onPressed: () => showCupertinoModalPopup(
                        context: context,
                        builder: (_) => Container(
                              color: CupertinoColors.white,
                              width: double.infinity,
                              height: MediaQuery.of(context).size.height / 3,
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    SizedBox(
                                      width: double.infinity,
                                      height:
                                          MediaQuery.of(context).size.height /
                                              4,
                                      //CupertinoPicker
                                      child: CupertinoPicker(
                                          backgroundColor:
                                              CupertinoColors.white,
                                          scrollController:
                                              FixedExtentScrollController(
                                                  initialItem: 1),
                                          itemExtent: 30,
                                          onSelectedItemChanged: (int value) {
                                            setState(() {
                                              _selectedcupertinopicker = value;
                                            });
                                          },
                                          children: const [
                                            Text('Item 1'),
                                            Text('Item 2'),
                                            Text('Item 3'),
                                          ]),
                                    ),
                                    Center(
                                      child: TextButton(
                                        child: const Text('Done'),
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ))),
                const SizedBox(
                  height: 16,
                ),
                CupertinoButton(
                    child: const Text('CupertinoPopupSurface'),
                    onPressed: () {
                      showCupertinoModalPopup(
                          context: context,
                          builder: (BuildContext builder) {
                            //CupertinoPopupSurface
                            return CupertinoPopupSurface(
                                child: Container(
                                    color: CupertinoColors.white,
                                    alignment: Alignment.center,
                                    width: double.infinity,
                                    height: 400,
                                    child: Center(
                                      child: TextButton(
                                        child: const Text('Done'),
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                      ),
                                    )));
                          });
                    }),
                const SizedBox(
                  height: 16,
                ),
                SizedBox(
                  width: 300,
                  height: 40,
                  //CupertinoSearchTextField
                  child: CupertinoSearchTextField(
                    controller: _searchtext,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Center(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        'CupertinoSegmentedControl',
                        style: TextStyle(
                          color: CupertinoColors.black,
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      //CupertinoSegmentedControl
                      CupertinoSegmentedControl(
                          children: {
                            'Flutter': Container(
                              width: double.infinity,
                              padding: const EdgeInsets.all(10),
                              color: _currentText == 'Flutter'
                                  ? CupertinoColors.activeBlue
                                  : CupertinoColors.systemGrey,
                              child: const Text(
                                'Flutter',
                                style: TextStyle(
                                  color: CupertinoColors.white,
                                ),
                              ),
                            ),
                            'React': Container(
                              width: double.infinity,
                              padding: const EdgeInsets.all(10),
                              color: _currentText == 'React'
                                  ? CupertinoColors.activeBlue
                                  : CupertinoColors.systemGrey,
                              child: const Text(
                                'React',
                                style: TextStyle(
                                  color: CupertinoColors.white,
                                ),
                              ),
                            ),
                            'Ruby': Container(
                              width: double.infinity,
                              padding: const EdgeInsets.all(10),
                              color: _currentText == 'Ruby'
                                  ? CupertinoColors.activeBlue
                                  : CupertinoColors.systemGrey,
                              child: const Text(
                                'Ruby',
                                style: TextStyle(
                                  color: CupertinoColors.white,
                                ),
                              ),
                            ),
                          },
                          onValueChanged: (String value) {
                            setState(() {
                              _currentText = value;
                            });
                          }),
                      const SizedBox(
                        height: 16,
                      ),
                      _currentText != null
                          ? Text(
                              _currentText!,
                              style: const TextStyle(
                                fontSize: 50,
                                color: CupertinoColors.black,
                              ),
                            )
                          : Container(),
                      const SizedBox(
                        height: 16,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                        onPressed: () {
                          setState(() {
                            _selectedValue--;
                          });
                        },
                        child: const Text('-1')),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      '$_selectedValue',
                      style: const TextStyle(color: CupertinoColors.black),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    TextButton(
                        onPressed: () {
                          setState(() {
                            _selectedValue++;
                          });
                        },
                        child: const Text('+1')),
                    //CupertinoSlider
                    CupertinoSlider(
                        min: 0,
                        max: 100,
                        divisions: 100,
                        activeColor: CupertinoColors.activeGreen,
                        thumbColor: CupertinoColors.white,
                        value: _selectedValue,
                        onChanged: (selectedvalue) {
                          setState(() {
                            _selectedValue = selectedvalue;
                          });
                        }),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                //CupertinoSwitch
                CupertinoSwitch(
                  value: _cupertinoswitch,
                  onChanged: (bool newValue) {
                    setState(() {
                      _cupertinoswitch = newValue;
                    });
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                //CupertinoTextField
                SizedBox(
                  width: 300,
                  child: CupertinoTextField(
                    controller: _isCuperTF,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                CupertinoButton.filled(
                  child: const Text('CupertinoSliver++'),
                  onPressed: () {
                    Navigator.of(context).push(
                        CupertinoPageRoute(builder: (BuildContext context) {
                      return const CupertinoNavBarSample();
                    }));
                  },
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        )));
  }
}

class CupertinoNavBarSample extends StatelessWidget {
  const CupertinoNavBarSample({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: <Widget>[
          //CupertinoSliver++
          const CupertinoSliverNavigationBar(
            leading: Icon(CupertinoIcons.person_2),
            largeTitle: Text('Contacts'),
            trailing: Icon(CupertinoIcons.add_circled),
          ),
          SliverFillRemaining(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                const Text('Drag me up', textAlign: TextAlign.center),
                CupertinoButton.filled(
                  onPressed: () {
                    Navigator.of(context).pop(
                        CupertinoPageRoute(builder: (BuildContext context) {
                      return const CupertinoNavBarSample();
                    }));
                  },
                  child: const Text('Go to Main page'),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class PageCupTwo extends StatelessWidget {
  const PageCupTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        backgroundColor: CupertinoColors.white,
        navigationBar: const CupertinoNavigationBar(
          middle: Text(
            'PageTwo',
          ),
          backgroundColor: CupertinoColors.white,
        ),
        //CupertinoScrollbar
        child: CupertinoScrollbar(
            child: ListView.builder(
                itemCount: 50,
                itemBuilder: (BuildContext context, int index) {
                  return Center(
                    child: Text(
                      '$index',
                      style: const TextStyle(color: CupertinoColors.black),
                    ),
                  );
                })));
  }
}
