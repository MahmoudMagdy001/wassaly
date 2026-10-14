[ui-ux-pro-max](slashCommand;ui-ux-pro-max)
[ui-styling](slashCommand;ui-styling)
[brand](slashCommand;brand)
[banner-design](slashCommand;banner-design)
[bloc](slashCommand;bloc)
[dart-3-updates](slashCommand;dart-3-updates)

# ROLE

Act as a Senior Flutter UI/UX Engineer, Product Designer, Brand Designer,
Design-System Architect, and Flutter Performance Engineer.

Your task is to perform a COMPLETE visual redesign of the entire Flutter application.

This is NOT a simple UI cleanup.
This is a full product-level redesign while preserving all existing business
logic, functionality, navigation behavior, API contracts, state management,
and user workflows unless a UX improvement requires a clearly justified change.

You MUST use the available skills listed above throughout the entire process.

---

# PRIMARY OBJECTIVE

Redesign the entire application into a:

- Modern
- Premium
- Professional
- Consistent
- Highly usable
- Accessible
- Responsive
- Production-ready
- Visually polished
- Performance-conscious

Flutter application.

The final result should look like a professionally designed production app,
not a collection of independently designed screens.

Every screen must feel like part of ONE coherent product.

---

# IMPORTANT RULE

DO NOT START CODING IMMEDIATELY.

First inspect and understand the entire project.

You must analyze:

- Existing screens
- Navigation
- Routes
- Widgets
- Theme
- Colors
- Typography
- Spacing
- Components
- Forms
- Buttons
- Cards
- Lists
- Dialogs
- Bottom sheets
- App bars
- Navigation bars
- Empty states
- Loading states
- Error states
- Authentication screens
- Home screens
- Details screens
- Profile screens
- Settings
- Search
- Filters
- Notifications
- Any other existing feature

Also inspect:

- BLoC/Cubit architecture
- States
- Events if present
- Repositories
- Services
- Models
- API integration
- Dependency injection
- Routing
- Local storage
- Shared widgets
- Utility classes
- Existing design tokens

DO NOT modify business logic simply because you are redesigning the UI.

---

# PHASE 1 — COMPLETE UI/UX AUDIT

Before changing anything, perform a complete UI/UX audit.

For every screen identify:

1. Current visual problems
2. UX problems
3. Inconsistent components
4. Inconsistent spacing
5. Typography problems
6. Color problems
7. Poor hierarchy
8. Accessibility issues
9. Touch-target issues
10. Responsive-layout problems
11. Navigation problems
12. Excessive visual complexity
13. Redundant UI
14. Poor loading/error/empty states
15. Performance-sensitive UI patterns

Create a screen-by-screen redesign plan.

Do NOT implement yet.

---

# PHASE 2 — PRODUCT DESIGN DIRECTION

Using:

[ui-ux-pro-max]
[brand]
[ui-styling]

Define a complete visual direction for the application.

Establish:

- Design personality
- Visual hierarchy
- Brand personality
- Color philosophy
- Typography philosophy
- Shape language
- Border radius system
- Elevation/shadow strategy
- Iconography
- Illustration style
- Image treatment
- Card style
- Button style
- Input style
- Navigation style
- Motion philosophy

The design must feel intentional and consistent.

Avoid generic "AI-generated app" aesthetics.

Avoid unnecessary gradients, excessive shadows, excessive glassmorphism,
random animations, and decorative elements that do not improve UX.

Every visual decision must have a UX or branding purpose.

---

# PHASE 3 — DESIGN SYSTEM

Create a centralized reusable design system.

Do NOT style screens independently.

Create reusable tokens/components for:

## Colors

Define semantic colors such as:

- primary
- secondary
- accent
- background
- surface
- surfaceVariant
- card
- textPrimary
- textSecondary
- textDisabled
- border
- divider
- success
- warning
- error
- info

Support:

- Light mode
- Dark mode

if appropriate for the application.

Do not scatter raw colors throughout the project.

---

## Typography

Create a complete typography scale:

- Display
- Headline
- Title
- Body
- Label
- Caption
- Button
- Overline if needed

Ensure:

- Proper font weights
- Proper line heights
- Correct hierarchy
- Arabic support if the application uses Arabic
- English support if applicable

---

## Spacing

Create a consistent spacing system.

For example:

4
8
12
16
20
24
32
40
48
64

Use tokens instead of random padding/margin values.

---

## Radius

Define consistent radius tokens.

For example:

- small
- medium
- large
- extraLarge
- pill

---

## Elevation

Define a small number of elevation levels.

Avoid random shadows across components.

---

# PHASE 4 — GLOBAL THEME

Create/refactor a centralized Flutter Theme system.

Use:

- ThemeData
- ColorScheme
- TextTheme
- InputDecorationTheme
- ElevatedButtonTheme
- OutlinedButtonTheme
- TextButtonTheme
- CardTheme
- DialogTheme
- BottomSheetTheme
- AppBarTheme
- NavigationBarTheme
- DividerTheme
- ChipTheme

Do not hardcode styling inside individual screens when it can be represented
by the global theme.

The theme should become the single source of truth for the visual language.

---

# PHASE 5 — COMPONENT LIBRARY

Create reusable UI components.

Examples:

- AppButton
- AppTextButton
- AppOutlinedButton
- AppTextField
- AppPasswordField
- AppSearchField
- AppCard
- AppChip
- AppBadge
- AppAvatar
- AppAppBar
- AppBottomNavigation
- AppDialog
- AppBottomSheet
- AppLoader
- AppErrorState
- AppEmptyState
- AppSkeleton
- AppSectionHeader
- AppListTile
- AppDivider
- AppImage
- AppNetworkImage

Only create components that are actually reusable.

Follow YAGNI.

Do NOT create unnecessary abstractions.

---

# PHASE 6 — COMPLETE SCREEN REDESIGN

Redesign EVERY screen in the application.

Do not leave screens partially redesigned.

For every screen improve:

- Layout
- Visual hierarchy
- Typography
- Spacing
- Colors
- Cards
- Buttons
- Forms
- Navigation
- Information density
- Loading states
- Empty states
- Error states
- Micro-interactions
- Accessibility
- Responsive behavior

Maintain existing functionality.

---

# PHASE 7 — HOME / MAIN EXPERIENCE

Pay special attention to the primary user journey.

The home screen must immediately communicate:

- What the application does
- The most important action
- Important information
- Primary navigation
- Relevant content

Avoid overwhelming the user.

Use progressive disclosure where appropriate.

Prioritize the most important content above the fold.

---

# PHASE 8 — FORMS & INPUT UX

Redesign all forms.

Improve:

- Field hierarchy
- Labels
- Hints
- Validation
- Error messages
- Focus states
- Keyboard behavior
- Password visibility
- Input formatting
- Submit states
- Loading states

Make forms fast and comfortable to use.

Ensure proper keyboard types and input actions.

---

# PHASE 9 — LOADING / EMPTY / ERROR STATES

Every asynchronous screen must have intentional states.

Implement polished:

- Loading
- Skeleton loading where appropriate
- Empty state
- Error state
- Retry state
- Offline state where applicable
- Success feedback

Never leave users staring at a blank screen or generic CircularProgressIndicator
without context.

---

# PHASE 10 — RESPONSIVE DESIGN

The application must work properly across:

- Small phones
- Normal phones
- Large phones
- Tablets
- Different aspect ratios
- Portrait
- Landscape where applicable

Avoid fixed dimensions unless absolutely necessary.

Use appropriate Flutter responsive techniques.

Prevent:

- Overflow
- RenderFlex overflow
- Clipped content
- Tiny touch targets
- Unusable layouts

---

# PHASE 11 — ACCESSIBILITY

Apply accessibility best practices.

Check:

- Contrast
- Font scaling
- Touch targets
- Semantic labels
- Screen-reader support
- Focus behavior
- Button labels
- Form labels
- Error messages
- Color-only communication

Minimum touch target should generally follow platform accessibility standards.

Do not sacrifice usability for visual aesthetics.

---

# PHASE 12 — MOTION & MICRO-INTERACTIONS

Introduce subtle, purposeful animations.

Use animation only when it improves:

- Feedback
- Navigation
- Hierarchy
- State transitions
- User understanding

Examples:

- Page transitions
- Button feedback
- List appearance
- Expand/collapse
- Bottom sheets
- Success/error feedback
- Skeleton transitions

Avoid:

- Excessive animation
- Long animations
- Distracting effects
- Animation that impacts performance

Animations must respect reduced-motion/accessibility preferences where practical.

---

# PHASE 13 — BANNERS & VISUAL CONTENT

Use:

[banner-design](slashCommand;banner-design)

for:

- Promotional banners
- Hero sections
- Feature banners
- Empty states
- Important announcements
- Visual callouts

Banners must have:

- Clear hierarchy
- Strong CTA
- Proper image composition
- Correct text contrast
- Responsive behavior
- Brand consistency

Do not create banners just to fill empty space.

---

# PHASE 14 — BLoC/CUBIT COMPATIBILITY

Use:

[bloc](slashCommand;bloc)

The redesign MUST NOT break existing BLoC/Cubit architecture.

Separate UI from business logic.

Widgets should primarily:

- Render state
- Dispatch actions
- React to state changes

Do NOT put business logic inside widgets.

Avoid unnecessary rebuilds.

Use appropriate techniques such as:

- BlocBuilder
- BlocSelector
- buildWhen
- BlocListener
- MultiBlocBuilder where justified

Do not rebuild large widget trees when only a small part of the UI changes.

Preserve existing state-management behavior unless there is a clear
architectural reason to improve it.

---

# PHASE 15 — DART 3 MODERNIZATION

Use:

[dart-3-updates](slashCommand;dart-3-updates)

to ensure the redesigned code follows modern Dart practices.

Review:

- Null safety
- Pattern matching
- Sealed classes
- Records where useful
- Switch expressions
- Modern collection features
- Type safety
- Final variables
- Exhaustiveness
- Modern syntax
- Unnecessary nullable values
- Unnecessary casts
- Dead code

Do not introduce modern Dart features just for the sake of using them.

Use them only when they improve:

- Readability
- Safety
- Maintainability
- Architecture

Respect the project's current Dart/Flutter SDK constraints.

---

# PHASE 16 — PERFORMANCE

The redesign MUST NOT make the application slower.

Review UI performance for:

- Unnecessary rebuilds
- Expensive build methods
- Large widget trees
- Excessive nesting
- Heavy animations
- Large images
- Unoptimized lists
- Unnecessary opacity layers
- Excessive clipping
- Expensive shadows
- Repeated calculations
- Improper const usage

Use:

- const widgets
- ListView.builder
- SliverList where appropriate
- cached images where appropriate
- BlocSelector
- selective rebuilds
- efficient layouts

Avoid premature optimization.

Optimize measurable bottlenecks.

---

# PHASE 17 — ARCHITECTURE & FILE ORGANIZATION

Keep the UI architecture clean.

Organize reusable UI components separately from feature-specific UI.

Avoid:

- 1000+ line widgets
- Giant build methods
- Duplicate components
- Duplicate styling
- Circular dependencies
- UI/business-logic mixing

Break large screens into meaningful widgets.

But DO NOT over-engineer simple screens.

Follow:

- SOLID
- DRY
- KISS
- YAGNI

---

# PHASE 18 — ICONS & IMAGES

Review all icons and images.

Ensure:

- Consistent icon style
- Consistent icon sizes
- Correct semantic icons
- Proper image aspect ratios
- Proper image loading
- Proper placeholders
- Proper error handling

Do not use random icons from different visual families.

---

# PHASE 19 — RTL / LOCALIZATION

If Arabic is supported:

Ensure the redesign works correctly with:

- RTL
- Arabic typography
- Arabic text wrapping
- Bidirectional text
- Icons
- Navigation
- Alignment
- Padding
- Forms
- Dialogs
- Bottom sheets

Never implement RTL by manually reversing every widget.

Use Flutter's localization and directionality mechanisms correctly.

Also ensure English/LTR remains correct.

---

# PHASE 20 — SCREEN-BY-SCREEN IMPLEMENTATION

After completing the audit and design system:

Implement the redesign screen by screen.

Recommended order:

1. Global theme
2. Design tokens
3. Shared components
4. Authentication
5. Main navigation
6. Home
7. Core feature screens
8. Details screens
9. Forms
10. Profile
11. Settings
12. Secondary screens
13. Dialogs
14. Bottom sheets
15. Loading/error/empty states
16. Final polish

After each screen:

- Run analyzer
- Fix errors
- Verify layout
- Verify navigation
- Verify state behavior
- Verify responsiveness
- Verify accessibility

---

# PHASE 21 — VISUAL CONSISTENCY AUDIT

After implementation, review the ENTIRE application again.

Look specifically for:

- Different border radii
- Different button heights
- Different font sizes
- Different colors
- Different card styles
- Different spacing
- Different icon sizes
- Different shadows
- Inconsistent app bars
- Inconsistent loading states
- Inconsistent error states
- Inconsistent empty states

Everything should look like one unified product.

---

# PHASE 22 — FINAL QA

Run:

- flutter analyze
- flutter test
- flutter build

when applicable.

Fix all:

- Errors
- Warnings
- Analyzer issues
- Overflow issues
- Deprecated APIs
- Broken routes
- Broken states
- UI regressions

Do not leave known issues unresolved.

---

# STRICT RULES

1. DO NOT delete existing functionality.
2. DO NOT break APIs.
3. DO NOT change backend contracts.
4. DO NOT remove BLoC/Cubit functionality.
5. DO NOT introduce unnecessary packages.
6. DO NOT duplicate components.
7. DO NOT hardcode colors everywhere.
8. DO NOT hardcode dimensions unnecessarily.
9. DO NOT create giant widgets.
10. DO NOT over-engineer.
11. DO NOT redesign only the home screen.
12. DO NOT leave old UI patterns mixed with the new design.
13. DO NOT use random gradients.
14. DO NOT use excessive glassmorphism.
15. DO NOT use excessive shadows.
16. DO NOT sacrifice performance for visuals.
17. DO NOT sacrifice accessibility for aesthetics.
18. DO NOT change business logic unless necessary.
19. DO NOT create abstractions without real reuse.
20. DO NOT stop after implementing only a few screens.

---

# EXECUTION STRATEGY

Work PHASE BY PHASE.

Before each phase:

1. Inspect the relevant code.
2. Explain what you found.
3. Identify what needs to change.
4. Implement the changes.
5. Run validation.
6. Fix issues.
7. Move to the next phase.

Do NOT skip phases.

Do NOT ask for permission after every small change.

Use your judgment and continue autonomously unless a decision would materially
change the product requirements or existing business behavior.

---

# FINAL DELIVERABLE

At the end provide a concise report containing:

## Design
- New design direction
- New color system
- Typography system
- Spacing system
- Component system

## UI
- Screens redesigned
- Components created
- UX improvements

## Architecture
- Files reorganized
- Reusable components
- BLoC/Cubit improvements

## Performance
- Rebuild optimizations
- Image optimizations
- Widget optimizations

## Accessibility
- Contrast
- Touch targets
- Semantics
- RTL/localization

## Validation
- flutter analyze result
- flutter test result
- flutter build result

## Remaining Issues
List ONLY genuine remaining issues.

---

# MOST IMPORTANT EXPECTATION

Do not treat this as "make the app prettier".

Treat this as a complete PRODUCT REDESIGN.

The final application should feel like a new, professionally designed,
production-grade Flutter product while preserving the existing functionality,
business logic, data flow, and reliability.

Use the available skills intelligently and consistently throughout the entire
redesign.