import 'package:intl/intl.dart';
import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/notifications/presentation/bloc/notifications/notifications_bloc.dart';
import 'package:wassaly/features/notifications/presentation/bloc/notifications/notifications_event.dart';
import 'package:wassaly/features/notifications/presentation/bloc/notifications/notifications_state.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({super.key});

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<NotificationsBloc>().add(const NotificationsRequested());
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(context.l10n.profile_notifications),
        actions: [
          IconButton(
            icon: const Icon(Icons.delete_forever_outlined),
            onPressed: () {
              context
                  .read<NotificationsBloc>()
                  .add(const NotificationCleared());
            },
            tooltip: context.l10n.profile_notifications,
          ),
        ],
      ),
      body: BlocBuilder<NotificationsBloc, NotificationsState>(
        builder: (context, state) {
          if (state.status.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }

          if (state.status.isFailure) {
            return Center(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Text(
                  state.errorMessage ??
                      context.l10n.errors_something_went_wrong,
                  textAlign: TextAlign.center,
                ),
              ),
            );
          }

          if (state.notifications.isEmpty) {
            return Center(
              child: Text(
                'No notifications yet.',
                style: theme.textTheme.bodyMedium,
              ),
            );
          }

          return ListView.separated(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
            itemCount: state.notifications.length,
            separatorBuilder: (_, __) => const SizedBox(height: 12),
            itemBuilder: (context, index) {
              final item = state.notifications[index];
              return Material(
                borderRadius: BorderRadius.circular(16),
                color: theme.cardColor,
                child: InkWell(
                  borderRadius: BorderRadius.circular(16),
                  onTap: () {
                    if (!item.read) {
                      context
                          .read<NotificationsBloc>()
                          .add(NotificationMarkedRead(item.id));
                    }
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Text(
                                item.title,
                                style: theme.textTheme.titleMedium,
                              ),
                            ),
                            if (!item.read)
                              Container(
                                width: 10,
                                height: 10,
                                margin: const EdgeInsets.only(left: 8),
                                decoration: BoxDecoration(
                                  color: theme.colorScheme.primary,
                                  shape: BoxShape.circle,
                                ),
                              ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        Text(
                          item.body,
                          style: theme.textTheme.bodyMedium,
                        ),
                        const SizedBox(height: 12),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            if (item.deepLink != null &&
                                item.deepLink!.isNotEmpty)
                              Expanded(
                                child: Text(
                                  item.deepLink!,
                                  style: theme.textTheme.bodySmall?.copyWith(
                                    color: theme.colorScheme.primary,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            Text(
                              DateFormat.yMMMd()
                                  .add_jm()
                                  .format(item.receivedAt),
                              style: theme.textTheme.bodySmall,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
