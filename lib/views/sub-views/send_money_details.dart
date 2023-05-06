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
        title: const Text("Hello World"),
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
    return const Placeholder();
  }
}
