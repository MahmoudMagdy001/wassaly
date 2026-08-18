import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

/// Lightweight haptic feedback manager with safe platform checks.
abstract final class AppHaptics {
  AppHaptics._();

  /// Light impact feedback (e.g. tab switch, toggle, selection)
  static void light() {
    if (!kIsWeb) {
      unawaited(HapticFeedback.lightImpact());
    }
  }

  /// Medium impact feedback (e.g. button click, add to cart)
  static void medium() {
    if (!kIsWeb) {
      unawaited(HapticFeedback.mediumImpact());
    }
  }

  /// Heavy impact feedback (e.g. checkout, order confirmed)
  static void heavy() {
    if (!kIsWeb) {
      unawaited(HapticFeedback.heavyImpact());
    }
  }

  /// Selection click feedback (e.g. picker scrolling)
  static void selection() {
    if (!kIsWeb) {
      unawaited(HapticFeedback.selectionClick());
    }
  }

  /// Vibrate for error states
  static void error() {
    if (!kIsWeb) {
      unawaited(HapticFeedback.vibrate());
    }
  }
}
