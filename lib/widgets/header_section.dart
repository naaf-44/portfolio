import 'package:flutter/material.dart';
import '../models/portfolio_model.dart';
import '../utils/responsive_helper.dart';
import 'scroll_animated_widget.dart';

class HeaderSection extends StatelessWidget {
  final PersonalInfo personalInfo;

  const HeaderSection({super.key, required this.personalInfo});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isMobile = ResponsiveHelper.isMobile(context);
    ResponsiveHelper.isTablet(context);

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
          mobile: 60,
          tablet: 80,
          desktop: 120,
        ),
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            theme.colorScheme.primary.withValues(alpha: 0.1),
            theme.colorScheme.secondary.withValues(alpha: 0.1),
          ],
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Profile Avatar
          ScrollAnimatedWidget(
            id: 'header-avatar',
            delay: const Duration(milliseconds: 300),
            scaleBegin: 0.5,
            child: Container(
              width: ResponsiveHelper.getResponsiveFontSize(
                context,
                mobile: 100,
                tablet: 130,
                desktop: 150,
              ),
              height: ResponsiveHelper.getResponsiveFontSize(
                context,
                mobile: 100,
                tablet: 130,
                desktop: 150,
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors: [
                    theme.colorScheme.primary,
                    theme.colorScheme.secondary,
                  ],
                ),
                boxShadow: [
                  BoxShadow(
                    color: theme.colorScheme.primary.withValues(alpha: 0.3),
                    blurRadius: isMobile ? 15 : 20,
                    offset: Offset(0, isMobile ? 5 : 10),
                  ),
                ],
              ),
              child: Center(
                child: Text(
                  personalInfo.name.split(' ').map((e) => e[0]).join(),
                  style: theme.textTheme.displayMedium?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: ResponsiveHelper.getResponsiveFontSize(
                      context,
                      mobile: 24,
                      tablet: 28,
                      desktop: 32,
                    ),
                  ),
                ),
              ),
            ),
          ),

          SizedBox(height: isMobile ? 20 : 30),

          // Name
          ScrollAnimatedWidget(
            id: 'header-name',
            delay: const Duration(milliseconds: 500),
            slideBegin: const Offset(0, 0.3),
            child: Text(
              personalInfo.name,
              style: theme.textTheme.displayLarge?.copyWith(
                fontSize: ResponsiveHelper.getResponsiveFontSize(
                  context,
                  mobile: 28,
                  tablet: 36,
                  desktop: 48,
                ),
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),

          SizedBox(height: isMobile ? 8 : 10),

          // Title
          ScrollAnimatedWidget(
            id: 'header-title',
            delay: const Duration(milliseconds: 700),
            slideBegin: const Offset(0, 0.3),
            child: Text(
              'Senior Flutter Developer',
              style: theme.textTheme.headlineMedium?.copyWith(
                color: theme.colorScheme.primary,
                fontSize: ResponsiveHelper.getResponsiveFontSize(
                  context,
                  mobile: 16,
                  tablet: 20,
                  desktop: 24,
                ),
              ),
              textAlign: TextAlign.center,
            ),
          ),

          SizedBox(height: isMobile ? 20 : 30),

          // Contact Info
          ScrollAnimatedWidget(
            id: 'header-contact',
            delay: const Duration(milliseconds: 900),
            slideBegin: const Offset(0, 0.3),
            child: Wrap(
              alignment: WrapAlignment.center,
              spacing: isMobile ? 15 : 30,
              runSpacing: isMobile ? 10 : 15,
              children: [
                _buildContactItem(
                  context,
                  Icons.location_on,
                  personalInfo.location,
                ),
                _buildContactItem(context, Icons.email, personalInfo.email),
                _buildContactItem(context, Icons.phone, personalInfo.phone),
              ],
            ),
          ),

          SizedBox(height: isMobile ? 20 : 30),

          // Languages
          ScrollAnimatedWidget(
            id: 'header-languages',
            delay: const Duration(milliseconds: 1100),
            scaleBegin: 0.8,
            child: Wrap(
              alignment: WrapAlignment.center,
              spacing: isMobile ? 8 : 10,
              runSpacing: isMobile ? 8 : 10,
              children:
                  personalInfo.languagesKnown.map((language) {
                    return Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: isMobile ? 12 : 16,
                        vertical: isMobile ? 6 : 8,
                      ),
                      decoration: BoxDecoration(
                        color: theme.colorScheme.primary.withValues(alpha: 0.1),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: theme.colorScheme.primary.withValues(
                            alpha: 0.3,
                          ),
                        ),
                      ),
                      child: Text(
                        language,
                        style: theme.textTheme.bodyMedium?.copyWith(
                          color: theme.colorScheme.primary,
                          fontWeight: FontWeight.w500,
                          fontSize: isMobile ? 12 : 14,
                        ),
                      ),
                    );
                  }).toList(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildContactItem(BuildContext context, IconData icon, String text) {
    final theme = Theme.of(context);
    final isMobile = ResponsiveHelper.isMobile(context);

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, color: theme.colorScheme.primary, size: isMobile ? 16 : 20),
        SizedBox(width: isMobile ? 6 : 8),
        Flexible(
          child: Text(
            text,
            style: theme.textTheme.bodyLarge?.copyWith(
              fontSize: isMobile ? 14 : 16,
            ),
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
