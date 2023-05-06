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
import 'package:stkclone/objects/mpesa_menu_entries.dart';

class MpesaMenu extends StatelessWidget {
  const MpesaMenu({super.key});

  static const List<MpesaMenuEntries> mpesaOptions = [
    MpesaMenuEntries("Send Money", "/send-money-number/"),
    MpesaMenuEntries("Withdraw Cash", ""),
    MpesaMenuEntries("Buy Airtime", ""),
    MpesaMenuEntries("Loans and Savings", ""),
    MpesaMenuEntries("Lipa na M-PESA", ""),
    MpesaMenuEntries("My Account", ""),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter M-Pesa"),
        elevation: 0.0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: mpesaOptions.map((option) {
          return TextButton(
              onPressed: () {
                Navigator.of(context)
                    .pushNamedAndRemoveUntil(option.routeName, (route) => true);
              },
              child: Text(
                option.entryText,
                style: const TextStyle(
                    color: Colors.black, fontWeight: FontWeight.normal),
              ));
        }).toList(),
      ),
    );
  }
}
