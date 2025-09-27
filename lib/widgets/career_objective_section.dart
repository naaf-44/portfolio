import 'package:flutter/material.dart';
import '../utils/responsive_helper.dart';
import 'scroll_animated_widget.dart';

class CareerObjectiveSection extends StatelessWidget {
  final String objective;

  const CareerObjectiveSection({super.key, required this.objective});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isMobile = ResponsiveHelper.isMobile(context);

    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: ResponsiveHelper.getResponsivePadding(
          context,
          mobile: 16,
          tablet: 40,
          desktop: 80,
        ),
        vertical: ResponsiveHelper.getResponsivePadding(
          context,
          mobile: 40,
          tablet: 60,
          desktop: 80,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ScrollAnimatedWidget(
            id: 'career-title',
            slideBegin: const Offset(0, -0.3),
            child: Text(
              'Career Objective',
              style: theme.textTheme.displayMedium?.copyWith(
                fontWeight: FontWeight.bold,
                color: theme.colorScheme.primary,
                fontSize: ResponsiveHelper.getResponsiveFontSize(
                  context,
                  mobile: 24,
                  tablet: 28,
                  desktop: 32,
                ),
              ),
            ),
          ),

          SizedBox(height: isMobile ? 30 : 40),

          ScrollAnimatedWidget(
            id: 'career-content',
            delay: const Duration(milliseconds: 200),
            scaleBegin: 0.8,
            child: Container(
              constraints: BoxConstraints(
                maxWidth:
                    ResponsiveHelper.isDesktop(context) ? 800 : double.infinity,
              ),
              padding: EdgeInsets.all(isMobile ? 20 : 30),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    theme.colorScheme.primary.withValues(alpha: 0.05),
                    theme.colorScheme.secondary.withValues(alpha: 0.05),
                  ],
                ),
                borderRadius: BorderRadius.circular(isMobile ? 16 : 20),
                border: Border.all(
                  color: theme.colorScheme.primary.withValues(alpha: 0.2),
                  width: 1,
                ),
                boxShadow: [
                  BoxShadow(
                    color: theme.colorScheme.primary.withValues(alpha: 0.1),
                    blurRadius: isMobile ? 15 : 20,
                    offset: Offset(0, isMobile ? 5 : 10),
                  ),
                ],
              ),
              child: Text(
                objective,
                style: theme.textTheme.bodyLarge?.copyWith(
                  fontSize: ResponsiveHelper.getResponsiveFontSize(
                    context,
                    mobile: 14,
                    tablet: 16,
                    desktop: 18,
                  ),
                  height: 1.6,
                  color: theme.colorScheme.onSurface,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
