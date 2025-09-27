import 'package:flutter/material.dart';
import '../models/portfolio_model.dart';
import '../utils/responsive_helper.dart';
import 'scroll_animated_widget.dart';

class EducationSection extends StatelessWidget {
  final List<Education> education;

  const EducationSection({
    super.key,
    required this.education,
  });

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
            id: 'education-title',
            slideBegin: const Offset(0, -0.3),
            child: Text(
              'Education',
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
              maxWidth: ResponsiveHelper.isDesktop(context) ? 1200 : double.infinity,
            ),
            child: ResponsiveHelper.isDesktop(context)
                ? _buildDesktopGrid(context)
                : _buildMobileList(context),
          ),
        ],
      ),
    );
  }

  Widget _buildDesktopGrid(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: ResponsiveHelper.getResponsiveGridCount(
          context,
          mobile: 1,
          tablet: 2,
          desktop: 2,
        ),
        crossAxisSpacing: 30,
        mainAxisSpacing: 30,
        childAspectRatio: 1.2,
      ),
      itemCount: education.length,
      itemBuilder: (context, index) {
        return ScrollAnimatedWidget(
          id: 'education-$index',
          delay: Duration(milliseconds: 200 * index),
          scaleBegin: 0.8,
          child: _buildEducationCard(context, education[index], index),
        );
      },
    );
  }

  Widget _buildMobileList(BuildContext context) {
    return Column(
      children: education.asMap().entries.map((entry) {
        final index = entry.key;
        final edu = entry.value;
        return ScrollAnimatedWidget(
          id: 'education-mobile-$index',
          delay: Duration(milliseconds: 200 * index),
          scaleBegin: 0.8,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: _buildEducationCard(context, edu, index),
          ),
        );
      }).toList(),
    );
  }

  Widget _buildEducationCard(BuildContext context, Education edu, int index) {
    final theme = Theme.of(context);
    final isMobile = ResponsiveHelper.isMobile(context);
    
    return Container(
      padding: EdgeInsets.all(isMobile ? 16 : 24),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            theme.colorScheme.primary.withOpacity(0.05),
            theme.colorScheme.secondary.withOpacity(0.05),
          ],
        ),
        borderRadius: BorderRadius.circular(isMobile ? 12 : 16),
        border: Border.all(
          color: theme.colorScheme.primary.withOpacity(0.2),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: isMobile ? 10 : 15,
            offset: Offset(0, isMobile ? 3 : 5),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(isMobile ? 8 : 12),
                decoration: BoxDecoration(
                  color: theme.colorScheme.primary,
                  borderRadius: BorderRadius.circular(isMobile ? 8 : 12),
                ),
                child: Icon(
                  Icons.school,
                  color: Colors.white,
                  size: isMobile ? 20 : 24,
                ),
              ),
              SizedBox(width: isMobile ? 12 : 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      edu.degree,
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
                    Text(
                      edu.year.toString(),
                      style: theme.textTheme.bodyMedium?.copyWith(
                        color: theme.colorScheme.primary,
                        fontWeight: FontWeight.w500,
                        fontSize: isMobile ? 12 : 14,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          
          SizedBox(height: isMobile ? 12 : 16),
          
          Text(
            edu.institution,
            style: theme.textTheme.bodyLarge?.copyWith(
              fontWeight: FontWeight.w600,
              fontSize: ResponsiveHelper.getResponsiveFontSize(
                context,
                mobile: 14,
                tablet: 15,
                desktop: 16,
              ),
            ),
          ),
          
          SizedBox(height: isMobile ? 6 : 8),
          
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: isMobile ? 8 : 12,
              vertical: isMobile ? 4 : 6,
            ),
            decoration: BoxDecoration(
              color: theme.colorScheme.secondary.withOpacity(0.1),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              'Score: ${edu.percentage}',
              style: theme.textTheme.bodyMedium?.copyWith(
                color: theme.colorScheme.secondary,
                fontWeight: FontWeight.w600,
                fontSize: isMobile ? 11 : 14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}