// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'portfolio_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PortfolioModelImpl _$$PortfolioModelImplFromJson(Map<String, dynamic> json) =>
    _$PortfolioModelImpl(
      personalInfo: PersonalInfo.fromJson(
        json['personalInfo'] as Map<String, dynamic>,
      ),
      careerObjective: json['careerObjective'] as String,
      workExperience:
          (json['workExperience'] as List<dynamic>)
              .map((e) => WorkExperience.fromJson(e as Map<String, dynamic>))
              .toList(),
      education:
          (json['education'] as List<dynamic>)
              .map((e) => Education.fromJson(e as Map<String, dynamic>))
              .toList(),
      courses:
          (json['courses'] as List<dynamic>)
              .map((e) => Course.fromJson(e as Map<String, dynamic>))
              .toList(),
      skills:
          (json['skills'] as List<dynamic>).map((e) => e as String).toList(),
      projects:
          (json['projects'] as List<dynamic>)
              .map((e) => Project.fromJson(e as Map<String, dynamic>))
              .toList(),
      releasedApps:
          (json['releasedApps'] as List<dynamic>)
              .map((e) => ReleasedApp.fromJson(e as Map<String, dynamic>))
              .toList(),
      flutterPackages:
          (json['flutterPackages'] as List<dynamic>)
              .map((e) => FlutterPackage.fromJson(e as Map<String, dynamic>))
              .toList(),
      toolsUsed:
          (json['toolsUsed'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$PortfolioModelImplToJson(
  _$PortfolioModelImpl instance,
) => <String, dynamic>{
  'personalInfo': instance.personalInfo,
  'careerObjective': instance.careerObjective,
  'workExperience': instance.workExperience,
  'education': instance.education,
  'courses': instance.courses,
  'skills': instance.skills,
  'projects': instance.projects,
  'releasedApps': instance.releasedApps,
  'flutterPackages': instance.flutterPackages,
  'toolsUsed': instance.toolsUsed,
};

_$PersonalInfoImpl _$$PersonalInfoImplFromJson(Map<String, dynamic> json) =>
    _$PersonalInfoImpl(
      name: json['name'] as String,
      phone: json['phone'] as String,
      email: json['email'] as String,
      location: json['location'] as String,
      dateOfBirth: json['dateOfBirth'] as String,
      languagesKnown:
          (json['languagesKnown'] as List<dynamic>)
              .map((e) => e as String)
              .toList(),
    );

Map<String, dynamic> _$$PersonalInfoImplToJson(_$PersonalInfoImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'phone': instance.phone,
      'email': instance.email,
      'location': instance.location,
      'dateOfBirth': instance.dateOfBirth,
      'languagesKnown': instance.languagesKnown,
    };

_$WorkExperienceImpl _$$WorkExperienceImplFromJson(Map<String, dynamic> json) =>
    _$WorkExperienceImpl(
      company: json['company'] as String,
      location: json['location'] as String,
      designation: json['designation'] as String,
      duration: json['duration'] as String,
    );

Map<String, dynamic> _$$WorkExperienceImplToJson(
  _$WorkExperienceImpl instance,
) => <String, dynamic>{
  'company': instance.company,
  'location': instance.location,
  'designation': instance.designation,
  'duration': instance.duration,
};

_$EducationImpl _$$EducationImplFromJson(Map<String, dynamic> json) =>
    _$EducationImpl(
      degree: json['degree'] as String,
      institution: json['institution'] as String,
      percentage: json['percentage'] as String,
      year: (json['year'] as num).toInt(),
    );

Map<String, dynamic> _$$EducationImplToJson(_$EducationImpl instance) =>
    <String, dynamic>{
      'degree': instance.degree,
      'institution': instance.institution,
      'percentage': instance.percentage,
      'year': instance.year,
    };

_$CourseImpl _$$CourseImplFromJson(Map<String, dynamic> json) => _$CourseImpl(
  courseName: json['courseName'] as String,
  topics: (json['topics'] as List<dynamic>).map((e) => e as String).toList(),
);

Map<String, dynamic> _$$CourseImplToJson(_$CourseImpl instance) =>
    <String, dynamic>{
      'courseName': instance.courseName,
      'topics': instance.topics,
    };

_$ProjectImpl _$$ProjectImplFromJson(Map<String, dynamic> json) =>
    _$ProjectImpl(
      name: json['name'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$$ProjectImplToJson(_$ProjectImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
    };

_$ReleasedAppImpl _$$ReleasedAppImplFromJson(Map<String, dynamic> json) =>
    _$ReleasedAppImpl(
      name: json['name'] as String,
      link: json['link'] as String,
    );

Map<String, dynamic> _$$ReleasedAppImplToJson(_$ReleasedAppImpl instance) =>
    <String, dynamic>{'name': instance.name, 'link': instance.link};

_$FlutterPackageImpl _$$FlutterPackageImplFromJson(Map<String, dynamic> json) =>
    _$FlutterPackageImpl(
      name: json['name'] as String,
      link: json['link'] as String,
    );

Map<String, dynamic> _$$FlutterPackageImplToJson(
  _$FlutterPackageImpl instance,
) => <String, dynamic>{'name': instance.name, 'link': instance.link};
