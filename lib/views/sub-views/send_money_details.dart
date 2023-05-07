// Copyright 2023 Bikathi Martin
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:flutter/material.dart';

class SendMoneyEnterNumber extends StatefulWidget {
  const SendMoneyEnterNumber({super.key});

  @override
  State<SendMoneyEnterNumber> createState() => _SendMoneyEnterNumberState();
}

class _SendMoneyEnterNumberState extends State<SendMoneyEnterNumber> {
  late final TextEditingController _phoneNumberEdittingController;

  @override
  void initState() {
    super.initState();
    _phoneNumberEdittingController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    _phoneNumberEdittingController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter: Recipient's Number"),
        elevation: 0.0,
      ),
      body: Container(
        color: Colors.white,
        padding: const EdgeInsets.fromLTRB(10.0, 30.0, 10.0, 0.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Text("Enter Recipient Phone Number"),
          TextField(
            keyboardType: TextInputType.number,
            controller: _phoneNumberEdittingController,
          ),
          const SizedBox(
            height: 12.0,
          ),
          const Text(
            "(10 Numbers)",
            style: TextStyle(fontSize: 11.0),
          ),
          const SizedBox(
            height: 12.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FilledButton(
                onPressed: () {
                  if (_phoneNumberEdittingController.text.length == 10) {
                    Navigator.of(context).pushNamedAndRemoveUntil(
                        "/send-money-amount/", (route) => true);
                  }
                },
                style: const ButtonStyle(
                    padding: MaterialStatePropertyAll(EdgeInsets.symmetric(
                        vertical: 12.0, horizontal: 20.0))),
                child: const Text("Proceed"),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context)
                      .pushNamedAndRemoveUntil("/mpesa-menu/", (route) => true);
                },
                style: const ButtonStyle(
                    foregroundColor: MaterialStatePropertyAll(Colors.blue),
                    elevation: MaterialStatePropertyAll(0.0),
                    padding: MaterialStatePropertyAll(EdgeInsets.symmetric(
                        vertical: 12.0, horizontal: 20.0))),
                child: const Text(
                  "Cancel",
                ),
              )
            ],
          )
        ]),
      ),
    );
  }
}

class SendMoneyEnterAmount extends StatefulWidget {
  const SendMoneyEnterAmount({super.key});

  @override
  State<SendMoneyEnterAmount> createState() => _SendMoneyEnterAmountState();
}

class _SendMoneyEnterAmountState extends State<SendMoneyEnterAmount> {
  late final TextEditingController _amountToSendController;

  @override
  void initState() {
    super.initState();
    _amountToSendController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    _amountToSendController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter: Amount To Send"),
        elevation: 0.0,
      ),
      body: Container(
        color: Colors.white,
        padding: const EdgeInsets.fromLTRB(10.0, 30.0, 10.0, 0.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Text("Enter Amount To Send"),
          TextField(
            keyboardType: TextInputType.number,
            controller: _amountToSendController,
          ),
          const SizedBox(
            height: 12.0,
          ),
          const Text(
            "(At Least 100 Ksh)",
            style: TextStyle(fontSize: 11.0),
          ),
          const SizedBox(
            height: 12.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FilledButton(
                onPressed: () {
                  if (int.parse(_amountToSendController.text) >= 100) {
                    Navigator.of(context).pushNamedAndRemoveUntil(
                        "/enter-password/", (route) => false);
                  }
                },
                style: const ButtonStyle(
                    padding: MaterialStatePropertyAll(EdgeInsets.symmetric(
                        vertical: 12.0, horizontal: 20.0))),
                child: const Text("Proceed"),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context)
                      .pushNamedAndRemoveUntil("/mpesa-menu/", (route) => true);
                },
                style: const ButtonStyle(
                    foregroundColor: MaterialStatePropertyAll(Colors.blue),
                    elevation: MaterialStatePropertyAll(0.0),
                    padding: MaterialStatePropertyAll(EdgeInsets.symmetric(
                        vertical: 12.0, horizontal: 20.0))),
                child: const Text("Cancel"),
              )
            ],
          )
        ]),
      ),
    );
  }
}
