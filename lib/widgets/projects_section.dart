import 'package:flutter/material.dart';
import '../models/portfolio_model.dart';
import '../utils/responsive_helper.dart';
import 'scroll_animated_widget.dart';

class ProjectsSection extends StatefulWidget {
  final List<Project> projects;

  const ProjectsSection({
    super.key,
    required this.projects,
  });

  @override
  State<ProjectsSection> createState() => _ProjectsSectionState();
}

class _ProjectsSectionState extends State<ProjectsSection> {
  final Set<int> _expandedProjects = {};

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
            id: 'projects-title',
            slideBegin: const Offset(0, -0.3),
            child: Text(
              'Projects',
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
            child: Column(
              children: widget.projects.asMap().entries.map((entry) {
                final index = entry.key;
                final project = entry.value;
                
                return ScrollAnimatedWidget(
                  id: 'project-$index',
                  delay: Duration(milliseconds: 200 * index),
                  slideBegin: const Offset(0, 0.3),
                  child: _buildProjectCard(context, project, index),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProjectCard(BuildContext context, Project project, int index) {
    final theme = Theme.of(context);
    final isMobile = ResponsiveHelper.isMobile(context);
    final isExpanded = _expandedProjects.contains(index);
    final truncateLength = isMobile ? 100 : 150;
    
    return Container(
      margin: EdgeInsets.only(bottom: isMobile ? 20 : 30),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            theme.colorScheme.primary.withOpacity(0.05),
            theme.colorScheme.secondary.withOpacity(0.05),
          ],
        ),
        borderRadius: BorderRadius.circular(isMobile ? 16 : 20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: isMobile ? 15 : 20,
            offset: Offset(0, isMobile ? 5 : 10),
          ),
        ],
        border: Border.all(
          color: theme.colorScheme.primary.withOpacity(0.2),
        ),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(isMobile ? 16 : 20),
          onTap: () {
            setState(() {
              if (isExpanded) {
                _expandedProjects.remove(index);
              } else {
                _expandedProjects.add(index);
              }
            });
          },
          child: Padding(
            padding: EdgeInsets.all(isMobile ? 16 : 24),
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
                        Icons.work,
                        color: Colors.white,
                        size: isMobile ? 20 : 24,
                      ),
                    ),
                    SizedBox(width: isMobile ? 12 : 16),
                    Expanded(
                      child: Text(
                        project.name,
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
                    ),
                    Icon(
                      isExpanded ? Icons.expand_less : Icons.expand_more,
                      color: theme.colorScheme.primary,
                      size: isMobile ? 24 : 28,
                    ),
                  ],
                ),
                
                SizedBox(height: isMobile ? 12 : 16),
                
                AnimatedCrossFade(
                  firstChild: Text(
                    project.description.length > truncateLength
                        ? '${project.description.substring(0, truncateLength)}...'
                        : project.description,
                    style: theme.textTheme.bodyLarge?.copyWith(
                      height: 1.6,
                      color: theme.colorScheme.onSurface,
                      fontSize: ResponsiveHelper.getResponsiveFontSize(
                        context,
                        mobile: 14,
                        tablet: 15,
                        desktop: 16,
                      ),
                    ),
                  ),
                  secondChild: Text(
                    project.description,
                    style: theme.textTheme.bodyLarge?.copyWith(
                      height: 1.6,
                      color: theme.colorScheme.onSurface,
                      fontSize: ResponsiveHelper.getResponsiveFontSize(
                        context,
                        mobile: 14,
                        tablet: 15,
                        desktop: 16,
                      ),
                    ),
                  ),
                  crossFadeState: isExpanded
                      ? CrossFadeState.showSecond
                      : CrossFadeState.showFirst,
                  duration: const Duration(milliseconds: 300),
                ),
                
                if (project.description.length > truncateLength) ...[
                  SizedBox(height: isMobile ? 8 : 12),
                  Text(
                    isExpanded ? 'Show less' : 'Read more',
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: theme.colorScheme.primary,
                      fontWeight: FontWeight.w600,
                      fontSize: isMobile ? 12 : 14,
                    ),
                  ),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }
}