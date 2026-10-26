// SPDX-FileCopyrightText: 2019-Present Christian Kußowski
// SPDX-FileCopyrightText: 2019-Present Contributors to FluffyChat
//
// SPDX-License-Identifier: AGPL-3.0-or-later

import 'package:material_ui/material_ui.dart';

extension StringColor on String {
  static final _monochromeScheme = ColorScheme.fromSeed(
    seedColor: Colors.black,
    dynamicSchemeVariant: DynamicSchemeVariant.monochrome,
  );

  ColorScheme get colorScheme => _monochromeScheme;
}
