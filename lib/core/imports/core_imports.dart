// Dart SDK
export 'dart:io';

export 'package:easy_localization/easy_localization.dart'
    hide TextDirection, MapExtension;
export 'package:flutter/cupertino.dart' hide RefreshCallback;
export 'package:flutter/foundation.dart';
// Flutter SDK
export 'package:flutter/material.dart';
export 'package:flutter/services.dart';

export '../../features/onboarding/presentation/screens/onboarding_page.dart';
// Project Core — everything exported through shared.dart (theme, extensions,
// utils, widgets, enums) plus routing and services.
export '../config/app_config.dart';
export '../routing/app_router.dart';
export '../routing/app_routes.dart';
export '../routing/global_navigator.dart';
export '../services/services.dart';
export '../shared/shared.dart';
