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

class PasswordInput extends StatefulWidget {
  const PasswordInput({super.key});

  @override
  State<PasswordInput> createState() => _PasswordInputState();
}

class _PasswordInputState extends State<PasswordInput> {
  late final TextEditingController _passwordEditingController;

  @override
  void initState() {
    super.initState();
    _passwordEditingController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    _passwordEditingController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter: Password Input"),
        elevation: 0.0,
      ),
      body: Container(
        color: Colors.white,
        padding: const EdgeInsets.fromLTRB(10.0, 30.0, 10.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Enter Your Password"),
            TextField(
              controller: _passwordEditingController,
              keyboardType: TextInputType.number,
              obscureText: true,
            ),
            const SizedBox(
              height: 12.0,
            ),
            const Text(
              "(Any Four Digits)",
              style: TextStyle(fontSize: 11.0),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FilledButton(
                    onPressed: () {
                      if (_passwordEditingController.text.length == 4) {
                        Navigator.of(context).pushNamedAndRemoveUntil(
                            "/home/", (route) => false);
                      }
                    },
                    child: const Text("Send Money"))
              ],
            )
          ],
        ),
      ),
    );
  }
}
