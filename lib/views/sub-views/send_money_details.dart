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
          const TextField(
            keyboardType: TextInputType.number,
          ),
          const SizedBox(
            height: 12.0,
          ),
          const Text("some-random-text"),
          const SizedBox(
            height: 12.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FilledButton(
                onPressed: () {
                  Navigator.of(context).pushNamedAndRemoveUntil(
                      "/send-money-amount/", (route) => true);
                },
                style: const ButtonStyle(
                    padding: MaterialStatePropertyAll(EdgeInsets.symmetric(
                        vertical: 12.0, horizontal: 20.0))),
                child: const Text("Proceed"),
              ),
              OutlinedButton(
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

class SendMoneyEnterAmount extends StatefulWidget {
  const SendMoneyEnterAmount({super.key});

  @override
  State<SendMoneyEnterAmount> createState() => _SendMoneyEnterAmountState();
}

class _SendMoneyEnterAmountState extends State<SendMoneyEnterAmount> {
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
          const TextField(),
          const SizedBox(
            height: 12.0,
          ),
          const Text("some-random-text"),
          const SizedBox(
            height: 12.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FilledButton(
                onPressed: () {},
                style: const ButtonStyle(
                    padding: MaterialStatePropertyAll(EdgeInsets.symmetric(
                        vertical: 12.0, horizontal: 20.0))),
                child: const Text("Proceed"),
              ),
              OutlinedButton(
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
