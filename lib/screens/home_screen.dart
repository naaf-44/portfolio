import 'package:flutter/material.dart';
import '../models/portfolio_model.dart';
import '../services/portfolio_service.dart';
import '../widgets/header_section.dart';
import '../widgets/career_objective_section.dart';
import '../widgets/work_experience_section.dart';
import '../widgets/education_section.dart';
import '../widgets/skills_section.dart';
import '../widgets/projects_section.dart';
import '../widgets/released_apps_section.dart';
import '../widgets/flutter_packages_section.dart';
import '../widgets/tools_section.dart';
import '../widgets/floating_contact_button.dart';
import '../widgets/navigation_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ScrollController _scrollController = ScrollController();
  final Map<String, GlobalKey> _sectionKeys = {
    'header': GlobalKey(),
    'objective': GlobalKey(),
    'experience': GlobalKey(),
    'education': GlobalKey(),
    'skills': GlobalKey(),
    'projects': GlobalKey(),
    'apps': GlobalKey(),
    'packages': GlobalKey(),
    'tools': GlobalKey(),
  };

  PortfolioModel? portfolioData;
  bool isLoading = true;
  String? error;
  bool isDarkMode = false;

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  Future<void> _loadData() async {
    try {
      final data = await PortfolioService.loadPortfolioData();
      setState(() {
        portfolioData = data;
        isLoading = false;
      });
    } catch (e) {
      setState(() {
        error = e.toString();
        isLoading = false;
      });
    }
  }

  void _scrollToSection(String section) {
    final key = _sectionKeys[section];
    if (key?.currentContext != null) {
      Scrollable.ensureVisible(
        key!.currentContext!,
        duration: const Duration(milliseconds: 800),
        curve: Curves.easeInOut,
      );
    }
  }

  void _toggleTheme() {
    setState(() {
      isDarkMode = !isDarkMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: isDarkMode ? ThemeData.dark() : ThemeData.light(),
      child: Scaffold(
        body: isLoading
            ? const Center(child: CircularProgressIndicator())
            : error != null
                ? Center(child: Text('Error: $error'))
                : Stack(
                    children: [
                      CustomScrollView(
                        controller: _scrollController,
                        slivers: [
                          SliverToBoxAdapter(
                            child: Column(
                              children: [
                                HeaderSection(
                                  key: _sectionKeys['header'],
                                  personalInfo: portfolioData!.personalInfo,
                                ),
                                
                                CareerObjectiveSection(
                                  key: _sectionKeys['objective'],
                                  objective: portfolioData!.careerObjective,
                                ),
                                
                                WorkExperienceSection(
                                  key: _sectionKeys['experience'],
                                  workExperience: portfolioData!.workExperience,
                                ),
                                
                                EducationSection(
                                  key: _sectionKeys['education'],
                                  education: portfolioData!.education,
                                ),
                                
                                SkillsSection(
                                  key: _sectionKeys['skills'],
                                  skills: portfolioData!.skills,
                                ),
                                
                                ProjectsSection(
                                  key: _sectionKeys['projects'],
                                  projects: portfolioData!.projects,
                                ),
                                
                                ReleasedAppsSection(
                                  key: _sectionKeys['apps'],
                                  releasedApps: portfolioData!.releasedApps,
                                ),
                                
                                FlutterPackagesSection(
                                  key: _sectionKeys['packages'],
                                  flutterPackages: portfolioData!.flutterPackages,
                                ),
                                
                                ToolsSection(
                                  key: _sectionKeys['tools'],
                                  tools: portfolioData!.toolsUsed,
                                ),
                                
                                const SizedBox(height: 100),
                              ],
                            ),
                          ),
                        ],
                      ),
                      
                      // Navigation Bar
                      Positioned(
                        top: 0,
                        left: 0,
                        right: 0,
                        child: NavigationBarWidget(
                          onSectionTap: _scrollToSection,
                          onThemeToggle: _toggleTheme,
                          isDarkMode: isDarkMode,
                        ),
                      ),
                      
                      // Floating Contact Button
                      Positioned(
                        bottom: 20,
                        right: 20,
                        child: FloatingContactButton(
                          personalInfo: portfolioData!.personalInfo,
                        ),
                      ),
                    ],
                  ),
      ),
    );
  }
}