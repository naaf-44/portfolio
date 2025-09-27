import 'package:flutter/material.dart';
import '../models/portfolio_model.dart';
import '../utils/responsive_helper.dart';
import 'scroll_animated_widget.dart';

class WorkExperienceSection extends StatelessWidget {
  final List<WorkExperience> workExperience;

  const WorkExperienceSection({super.key, required this.workExperience});

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
      decoration: BoxDecoration(color: theme.colorScheme.surface),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ScrollAnimatedWidget(
            id: 'experience-title',
            slideBegin: const Offset(0, -0.3),
            child: Text(
              'Work Experience',
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

          SizedBox(height: isMobile ? 30 : 50),

          Container(
            constraints: BoxConstraints(
              maxWidth:
                  ResponsiveHelper.isDesktop(context) ? 1000 : double.infinity,
            ),
            child: Column(
              children:
                  workExperience.asMap().entries.map((entry) {
                    final index = entry.key;
                    final experience = entry.value;

                    return ScrollAnimatedWidget(
                      id: 'experience-$index',
                      delay: Duration(milliseconds: 200 * index),
                      slideBegin: Offset(index.isEven ? -0.3 : 0.3, 0),
                      child: _buildExperienceCard(context, experience, index),
                    );
                  }).toList(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildExperienceCard(
    BuildContext context,
    WorkExperience experience,
    int index,
  ) {
    final theme = Theme.of(context);
    final isMobile = ResponsiveHelper.isMobile(context);

    return Container(
      margin: EdgeInsets.only(bottom: isMobile ? 20 : 30),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Timeline indicator
          Column(
            children: [
              Container(
                width: isMobile ? 16 : 20,
                height: isMobile ? 16 : 20,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: theme.colorScheme.primary,
                  boxShadow: [
                    BoxShadow(
                      color: theme.colorScheme.primary.withValues(alpha: 0.3),
                      blurRadius: isMobile ? 8 : 10,
                      spreadRadius: isMobile ? 1 : 2,
                    ),
                  ],
                ),
              ),
              if (index < workExperience.length - 1)
                Container(
                  width: 2,
                  height: isMobile ? 60 : 80,
                  color: theme.colorScheme.primary.withValues(alpha: 0.3),
                ),
            ],
          ),

          SizedBox(width: isMobile ? 12 : 20),

          // Experience card
          Expanded(
            child: Container(
              padding: EdgeInsets.all(isMobile ? 16 : 24),
              decoration: BoxDecoration(
                color: theme.colorScheme.surface,
                borderRadius: BorderRadius.circular(isMobile ? 12 : 16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.05),
                    blurRadius: isMobile ? 10 : 15,
                    offset: Offset(0, isMobile ? 3 : 5),
                  ),
                ],
                border: Border.all(
                  color: theme.colorScheme.primary.withValues(alpha: 0.1),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    experience.designation,
                    style: theme.textTheme.headlineMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: theme.colorScheme.primary,
                      fontSize: ResponsiveHelper.getResponsiveFontSize(
                        context,
                        mobile: 16,
                        tablet: 18,
                        desktop: 20,
                      ),
                    ),
                  ),

                  SizedBox(height: isMobile ? 6 : 8),

                  Text(
                    experience.company,
                    style: theme.textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.w600,
                      color: theme.colorScheme.onSurface,
                      fontSize: ResponsiveHelper.getResponsiveFontSize(
                        context,
                        mobile: 14,
                        tablet: 15,
                        desktop: 16,
                      ),
                    ),
                  ),

                  SizedBox(height: isMobile ? 6 : 4),

                  Wrap(
                    spacing: isMobile ? 10 : 20,
                    runSpacing: 4,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.location_on,
                            size: isMobile ? 14 : 16,
                            color: theme.colorScheme.primary,
                          ),
                          SizedBox(width: isMobile ? 3 : 4),
                          Flexible(
                            child: Text(
                              experience.location,
                              style: theme.textTheme.bodyMedium?.copyWith(
                                fontSize: isMobile ? 12 : 14,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.calendar_today,
                            size: isMobile ? 14 : 16,
                            color: theme.colorScheme.primary,
                          ),
                          SizedBox(width: isMobile ? 3 : 4),
                          Flexible(
                            child: Text(
                              experience.duration,
                              style: theme.textTheme.bodyMedium?.copyWith(
                                fontSize: isMobile ? 12 : 14,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
