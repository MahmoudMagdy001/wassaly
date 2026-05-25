import 'package:wassaly/core/imports/imports.dart';

class HelpCenterPage extends StatefulWidget {
  const HelpCenterPage({super.key});

  @override
  State<HelpCenterPage> createState() => _HelpCenterPageState();
}

class _HelpCenterPageState extends State<HelpCenterPage> {
  int? _expandedIndex;

  @override
  Widget build(BuildContext context) {
    final cs = context.theme.colorScheme;
    final tt = context.theme.textTheme;

    final faqs = <_FaqItem>[
      _FaqItem(
        question: context.l10n.profile_help_faq_q1,
        answer: context.l10n.profile_help_faq_a1,
      ),
      _FaqItem(
        question: context.l10n.profile_help_faq_q2,
        answer: context.l10n.profile_help_faq_a2,
      ),
      _FaqItem(
        question: context.l10n.profile_help_faq_q3,
        answer: context.l10n.profile_help_faq_a3,
      ),
    ];

    return Scaffold(
      backgroundColor: cs.surfaceContainerLowest,
      body: CustomScrollView(
        slivers: [
          AppSliverTopBar(
            title: context.l10n.profile_help_center,
            snap: true,
            floating: true,
          ),
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
            sliver: SliverList(
              delegate: SliverChildListDelegate(
                [
                  _HeroBanner(cs: cs, tt: tt),
                  24.verticalSpace,
                  _SectionLabel(
                    label: context.l10n.profile_help_contact_support,
                    tt: tt,
                    cs: cs,
                  ),
                  8.verticalSpace,
                  _ContactCard(cs: cs, tt: tt),
                  24.verticalSpace,
                  _SectionLabel(
                    label: context.l10n.profile_help_faqs,
                    tt: tt,
                    cs: cs,
                  ),
                  8.verticalSpace,
                  _FaqCard(
                    faqs: faqs,
                    cs: cs,
                    tt: tt,
                    expandedIndex: _expandedIndex,
                    onExpand: (index) => setState(
                      () => _expandedIndex =
                          _expandedIndex == index ? null : index,
                    ),
                  ),
                  24.verticalSpace,
                  _SectionLabel(
                    label: context.l10n.profile_help_links,
                    tt: tt,
                    cs: cs,
                  ),
                  8.verticalSpace,
                  _LinksCard(cs: cs, tt: tt),
                  32.verticalSpace,
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _FaqItem {
  const _FaqItem({required this.question, required this.answer});

  final String question;
  final String answer;
}

class _HeroBanner extends StatelessWidget {
  const _HeroBanner({required this.cs, required this.tt});
  final ColorScheme cs;
  final TextTheme tt;

  @override
  Widget build(BuildContext context) {
    return AppCard(
      showShadow: true,
      color: cs.primary,
      child: Row(
        children: [
          Container(
            width: 52.r,
            height: 52.r,
            decoration: BoxDecoration(
              color: cs.onPrimary.withValues(alpha: 0.15),
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.headset_mic_outlined,
              size: 26.r,
              color: cs.onPrimary,
            ),
          ),
          14.horizontalSpace,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  context.l10n.profile_help_center,
                  style: tt.titleMedium?.copyWith(
                    fontWeight: FontWeight.w700,
                    color: cs.onPrimary,
                  ),
                ),
                6.verticalSpace,
                Text(
                  context.l10n.profile_help_center_description,
                  style: tt.bodySmall?.copyWith(
                    color: cs.onPrimary.withValues(alpha: 0.85),
                    height: 1.5,
                  ),
                ),
                10.verticalSpace,
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
                  decoration: BoxDecoration(
                    color: cs.onPrimary.withValues(alpha: 0.15),
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        width: 7.r,
                        height: 7.r,
                        decoration: const BoxDecoration(
                          color: Color(0xFF4ADE80),
                          shape: BoxShape.circle,
                        ),
                      ),
                      6.horizontalSpace,
                      Text(
                        'Online now',
                        style: tt.labelSmall?.copyWith(
                          color: cs.onPrimary,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _ContactCard extends StatelessWidget {
  const _ContactCard({required this.cs, required this.tt});
  final ColorScheme cs;
  final TextTheme tt;

  @override
  Widget build(BuildContext context) {
    return AppCard(
      showShadow: true,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AppButton(
            isFullWidth: true,
            label: context.l10n.profile_help_start_chat,
            prefixIcon: const Icon(Icons.chat_bubble_outline, size: 18),
            onPressed: () => context.showTypedSnackBar(
              context.l10n.profile_help_contacting_support,
              type: SnackBarType.info,
            ),
          ),
          10.verticalSpace,
          AppButton(
            isFullWidth: true,
            label: context.l10n.profile_help_email_support,
            prefixIcon: const Icon(Icons.email_outlined, size: 18),
            variant: ButtonVariant.outline,
            onPressed: () => context.showTypedSnackBar(
              context.l10n.profile_help_open_mail,
              type: SnackBarType.info,
            ),
          ),
          14.verticalSpace,
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
            decoration: BoxDecoration(
              color: cs.surfaceContainerLowest,
              borderRadius: BorderRadius.circular(8.r),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.phone_outlined,
                  size: 18.r,
                  color: cs.onSurfaceVariant,
                ),
                8.horizontalSpace,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      context.l10n.profile_help_hours,
                      style: tt.labelSmall?.copyWith(
                        color: cs.onSurfaceVariant,
                      ),
                    ),
                    4.verticalSpace,
                    Text(
                      '${context.l10n.profile_help_phone}: ${context.l10n.profile_help_phone_number}',
                      style: tt.bodySmall?.copyWith(color: cs.onSurface),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _FaqCard extends StatelessWidget {
  const _FaqCard({
    required this.faqs,
    required this.cs,
    required this.tt,
    required this.expandedIndex,
    required this.onExpand,
  });

  final List<_FaqItem> faqs;
  final ColorScheme cs;
  final TextTheme tt;
  final int? expandedIndex;
  final void Function(int) onExpand;

  @override
  Widget build(BuildContext context) {
    return AppCard(
      showShadow: true,
      padding: EdgeInsets.zero,
      child: Column(
        children: List.generate(faqs.length, (index) {
          final isOpen = expandedIndex == index;
          final isLast = index == faqs.length - 1;
          final faq = faqs[index];

          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () => onExpand(index),
                  borderRadius: BorderRadius.vertical(
                    top: index == 0 ? Radius.circular(12.r) : Radius.zero,
                    bottom:
                        isLast && !isOpen ? Radius.circular(12.r) : Radius.zero,
                  ),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            faq.question,
                            style: tt.bodyMedium?.copyWith(
                              fontWeight: FontWeight.w500,
                              color: isOpen ? cs.primary : cs.onSurface,
                            ),
                          ),
                        ),
                        8.horizontalSpace,
                        AnimatedRotation(
                          turns: isOpen ? 0.5 : 0,
                          duration: const Duration(milliseconds: 200),
                          child: Icon(
                            Icons.keyboard_arrow_down_rounded,
                            size: 20.r,
                            color: isOpen ? cs.primary : cs.onSurfaceVariant,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              AnimatedSize(
                duration: const Duration(milliseconds: 200),
                curve: Curves.easeInOut,
                child: ClipRect(
                  child: Align(
                    heightFactor: isOpen ? 1 : 0,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 16.w,
                        right: 16.w,
                        bottom: 16.h,
                      ),
                      child: Text(
                        faq.answer,
                        style: tt.bodySmall?.copyWith(
                          color: cs.onSurfaceVariant,
                          height: 1.6,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              if (!isLast)
                Divider(
                  height: 1,
                  thickness: 0.5,
                  color: cs.outlineVariant.withValues(alpha: 0.5),
                ),
            ],
          );
        }),
      ),
    );
  }
}

class _LinksCard extends StatelessWidget {
  const _LinksCard({required this.cs, required this.tt});
  final ColorScheme cs;
  final TextTheme tt;

  @override
  Widget build(BuildContext context) {
    return AppCard(
      showShadow: true,
      padding: EdgeInsets.zero,
      child: Column(
        children: [
          _LinkTile(
            icon: Icons.shield_outlined,
            label: context.l10n.profile_help_links_privacy,
            cs: cs,
            tt: tt,
            isFirst: true,
            onTap: () => GoRouter.of(context).push(AppRoutes.privacyPolicy),
          ),
          Divider(
            height: 1,
            thickness: 0.5,
            color: cs.outlineVariant.withValues(alpha: 0.5),
          ),
          _LinkTile(
            icon: Icons.article_outlined,
            label: context.l10n.profile_help_links_terms,
            cs: cs,
            tt: tt,
            isLast: true,
            onTap: () => GoRouter.of(context).push(AppRoutes.termsOfService),
          ),
        ],
      ),
    );
  }
}

class _LinkTile extends StatelessWidget {
  const _LinkTile({
    required this.icon,
    required this.label,
    required this.cs,
    required this.tt,
    required this.onTap,
    this.isFirst = false,
    this.isLast = false,
  });

  final IconData icon;
  final String label;
  final ColorScheme cs;
  final TextTheme tt;
  final VoidCallback onTap;
  final bool isFirst;
  final bool isLast;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.vertical(
          top: isFirst ? Radius.circular(12.r) : Radius.zero,
          bottom: isLast ? Radius.circular(12.r) : Radius.zero,
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.all(8.r),
                decoration: BoxDecoration(
                  color: cs.primaryContainer,
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: Icon(icon, size: 18.r, color: cs.primary),
              ),
              12.horizontalSpace,
              Expanded(
                child: Text(
                  label,
                  style: tt.bodyMedium?.copyWith(fontWeight: FontWeight.w500),
                ),
              ),
              Icon(
                Icons.arrow_forward_ios_rounded,
                size: 14.r,
                color: cs.onSurfaceVariant,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _SectionLabel extends StatelessWidget {
  const _SectionLabel({
    required this.label,
    required this.tt,
    required this.cs,
  });

  final String label;
  final TextTheme tt;
  final ColorScheme cs;

  @override
  Widget build(BuildContext context) {
    return Text(
      label.toUpperCase(),
      style: tt.labelSmall?.copyWith(
        color: cs.onSurfaceVariant,
        fontWeight: FontWeight.w600,
        letterSpacing: 0.8,
      ),
    );
  }
}
