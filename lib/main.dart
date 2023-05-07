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
import 'package:stkclone/views/home_view.dart';
import 'package:stkclone/views/safaricom_plus_view.dart';
import 'package:stkclone/views/mpesa_menu_view.dart';
import 'package:stkclone/views/sub-views/send_money_details.dart';
import 'package:stkclone/views/sub-views/password_input.dart';

void main() {
  runApp(MaterialApp(
    title: "Flutter STK Clone",
    home: const StkHomePage(),
    routes: {
      "/home/": (context) => const StkHomePage(),
      "/saf-plus/": (context) => const SafaricomPlus(),
      "/mpesa-menu/": (context) => const MpesaMenu(),
      "/send-money-number/": (context) => const SendMoneyEnterNumber(),
      "/send-money-amount/": (context) => const SendMoneyEnterAmount(),
      "/enter-password/": (context) => const PasswordInput(),
    },
  ));
}
