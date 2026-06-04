import 'package:permission_handler/permission_handler.dart';
import 'package:wassaly/core/utils/utils.dart';

/// A service to handle device permission requests and status checks.
class PermissionService {
  PermissionService._();
  static final PermissionService instance = PermissionService._();

  /// Check the status of a specific permission.
  FutureEither<PermissionStatus> checkStatus(Permission permission) async => runTask(() => permission.status);

  /// Request a specific permission.
  FutureEither<PermissionStatus> request(Permission permission) async => runTask(() => permission.request());

  /// Request multiple permissions at once.
  FutureEither<Map<Permission, PermissionStatus>> requestMultiple(
      List<Permission> permissions,) async => runTask(() => permissions.request());

  /// Open the app settings.
  FutureEither<bool> openSettings() async => runTask(openAppSettings);
}
