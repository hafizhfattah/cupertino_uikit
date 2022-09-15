import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      resizeToAvoidBottomInset: true,
      child: SafeArea(
        child: SingleChildScrollView(
          controller: ScrollController(),
          child: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 30.0,
                ),
                const Text(
                  'CupertinoTextField\nCupertinoTextField.filled',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10.0,
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
                      //CupertinoTextField
                      CupertinoTextField(
                        autofocus: false,
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
                      //CupertinoTextField.borderless
                      CupertinoTextField.borderless(
                        autofocus: false,
                        placeholder: 'Your Card Number',
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
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  'CupertinoFormSection',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                //CupertinoFormSection
                SizedBox(
                  width: 300,
                  child: CupertinoFormSection(
                      header: const Center(
                        child: Text(
                          'Title',
                          style: TextStyle(
                              color: CupertinoColors.black, fontSize: 30),
                        ),
                      ),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            16.0,
                          ),
                        ),
                      ),
                      backgroundColor: Colors.white,
                      children: const [
                        Text(
                          '     Irure consectetur ex sit sunt esse irure culpa aliqua ad dolore cupidatat ullamco nullaIpsum fugiat pariatur ut sit incididunt laborum..\n\n    Deserunt mollitExcepteur est sit ad aute mollit ad aliqua dolor eu tempor sit culpa. occaecat ipsum eiusmod voluptate sint laborum.',
                          style: TextStyle(
                            color: CupertinoColors.black,
                          ),
                        ),
                      ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
