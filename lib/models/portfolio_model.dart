import 'package:freezed_annotation/freezed_annotation.dart';

part 'portfolio_model.freezed.dart';
part 'portfolio_model.g.dart';

@freezed
class PortfolioModel with _$PortfolioModel {
  const factory PortfolioModel({
    required PersonalInfo personalInfo,
    required String careerObjective,
    required List<WorkExperience> workExperience,
    required List<Education> education,
    required List<Course> courses,
    required List<String> skills,
    required List<Project> projects,
    required List<ReleasedApp> releasedApps,
    required List<FlutterPackage> flutterPackages,
    required List<String> toolsUsed,
  }) = _PortfolioModel;

  factory PortfolioModel.fromJson(Map<String, dynamic> json) =>
      _$PortfolioModelFromJson(json);
}

@freezed
class PersonalInfo with _$PersonalInfo {
  const factory PersonalInfo({
    required String name,
    required String phone,
    required String email,
    required String location,
    required String dateOfBirth,
    required List<String> languagesKnown,
  }) = _PersonalInfo;

  factory PersonalInfo.fromJson(Map<String, dynamic> json) =>
      _$PersonalInfoFromJson(json);
}

@freezed
class WorkExperience with _$WorkExperience {
  const factory WorkExperience({
    required String company,
    required String location,
    required String designation,
    required String duration,
  }) = _WorkExperience;

  factory WorkExperience.fromJson(Map<String, dynamic> json) =>
      _$WorkExperienceFromJson(json);
}

@freezed
class Education with _$Education {
  const factory Education({
    required String degree,
    required String institution,
    required String percentage,
    required int year,
  }) = _Education;

  factory Education.fromJson(Map<String, dynamic> json) =>
      _$EducationFromJson(json);
}

@freezed
class Course with _$Course {
  const factory Course({
    required String courseName,
    required List<String> topics,
  }) = _Course;

  factory Course.fromJson(Map<String, dynamic> json) =>
      _$CourseFromJson(json);
}

@freezed
class Project with _$Project {
  const factory Project({
    required String name,
    required String description,
  }) = _Project;

  factory Project.fromJson(Map<String, dynamic> json) =>
      _$ProjectFromJson(json);
}

@freezed
class ReleasedApp with _$ReleasedApp {
  const factory ReleasedApp({
    required String name,
    required String link,
  }) = _ReleasedApp;

  factory ReleasedApp.fromJson(Map<String, dynamic> json) =>
      _$ReleasedAppFromJson(json);
}

@freezed
class FlutterPackage with _$FlutterPackage {
  const factory FlutterPackage({
    required String name,
    required String link,
  }) = _FlutterPackage;

  factory FlutterPackage.fromJson(Map<String, dynamic> json) =>
      _$FlutterPackageFromJson(json);
}
