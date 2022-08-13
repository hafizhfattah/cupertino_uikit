// ignore_for_file: unnecessary_import, unused_field

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
        debugShowCheckedModeBanner: false, home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Widget> _tabs = [
    const MyWidget(),
    const Empty(),
  ];

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CupertinoTabScaffold(
          tabBar: CupertinoTabBar(
            items: const [
              BottomNavigationBarItem(
                activeIcon: Icon(
                  CupertinoIcons.heart_fill,
                  color: Colors.red,
                ),
                icon: Icon(CupertinoIcons.heart),
                label: 'Main',
              ),
              BottomNavigationBarItem(
                  activeIcon: Icon(CupertinoIcons.settings_solid),
                  icon: Icon(CupertinoIcons.settings),
                  label: 'Settings'),
            ],
          ),
          tabBuilder: (BuildContext context, index) {
            return _tabs[index];
          }),
    );
  }
}

class Empty extends StatelessWidget {
  const Empty({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: Center(
      child: Column(
        children: [
          const SizedBox(
            height: 16,
          ),
          SizedBox(
            width: 300,
            child: CupertinoFormSection(
                header: const Center(
                  child: Text(
                    'Title',
                    style:
                        TextStyle(color: CupertinoColors.white, fontSize: 30),
                  ),
                ),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      16.0,
                    ),
                  ),
                ),
                backgroundColor: Colors.black,
                children: const [
                  Text(
                    '     Irure consectetur ex sit sunt esse irure culpa aliqua ad dolore cupidatat ullamco nullaIpsum fugiat pariatur ut sit incididunt laborum..\n\n    Deserunt mollitExcepteur est sit ad aute mollit ad aliqua dolor eu tempor sit culpa. occaecat ipsum eiusmod voluptate sint laborum.',
                    style: TextStyle(
                      color: CupertinoColors.white,
                    ),
                  ),
                ]),
          ),
          const SizedBox(
            height: 16,
          ),
          Container(
            padding: const EdgeInsets.all(8),
            height: 100,
            width: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey.shade300,
            ),
            child: Column(
              children: const [
                CupertinoTextField(
                  placeholder: 'Required',
                  prefix: Text(
                    'Name',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  decoration: BoxDecoration(),
                ),
                Divider(
                  thickness: 1,
                  color: Colors.grey,
                ),
                CupertinoTextField.borderless(
                  prefix: Text(
                    'Card Number',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  decoration: BoxDecoration(),
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
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
        navigationBar: const CupertinoNavigationBar(
          middle: Text('CupertinoNavigationBar'),
          backgroundColor: CupertinoColors.darkBackgroundGray,
        ),
        child: SafeArea(
            child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 16,
                ),
                CupertinoButton(
                  onPressed: () {
                    showCupertinoModalPopup(
                        context: context,
                        builder: (context) {
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
                const CupertinoActivityIndicator(),
                const SizedBox(
                  height: 16,
                ),
                CupertinoButton.filled(
                  child: const Text('CupertinoAlertDialog'),
                  onPressed: () {
                    showCupertinoDialog(
                        context: context,
                        builder: (context) {
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "CupertinoContextMenu",
                      style: TextStyle(color: CupertinoColors.white),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: 100,
                      height: 100,
                      child: CupertinoContextMenu(
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
                            child: CupertinoDatePicker(
                              backgroundColor: CupertinoColors.black,
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
                              color: CupertinoColors.black,
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
                                      child: CupertinoPicker(
                                          backgroundColor:
                                              CupertinoColors.black,
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
                        height: 50,
                      ),
                      CupertinoSegmentedControl(
                          children: {
                            'Flutter': Container(
                              width: double.infinity,
                              padding: const EdgeInsets.all(10),
                              color: _currentText == 'Flutter'
                                  ? CupertinoColors.activeBlue
                                  : CupertinoColors.black,
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
                                  : CupertinoColors.black,
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
                                  : CupertinoColors.black,
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
                                color: CupertinoColors.white,
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
                      '$_selectedValue'.toString(),
                      style: const TextStyle(color: CupertinoColors.white),
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

class PageCupTwo extends StatelessWidget {
  const PageCupTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        backgroundColor: CupertinoColors.black,
        navigationBar: const CupertinoNavigationBar(
          middle: Text(
            'PageTwo',
          ),
          backgroundColor: CupertinoColors.darkBackgroundGray,
        ),
        child: CupertinoScrollbar(
            child: ListView.builder(
                itemCount: 50,
                itemBuilder: (BuildContext context, int index) {
                  return Center(
                    child: Text(
                      '$index',
                      style: const TextStyle(color: CupertinoColors.white),
                    ),
                  );
                })));
  }
}

class CupertinoNavBarSample extends StatelessWidget {
  const CupertinoNavBarSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: <Widget>[
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
