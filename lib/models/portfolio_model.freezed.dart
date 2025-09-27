// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'portfolio_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

PortfolioModel _$PortfolioModelFromJson(Map<String, dynamic> json) {
  return _PortfolioModel.fromJson(json);
}

/// @nodoc
mixin _$PortfolioModel {
  PersonalInfo get personalInfo => throw _privateConstructorUsedError;
  String get careerObjective => throw _privateConstructorUsedError;
  List<WorkExperience> get workExperience => throw _privateConstructorUsedError;
  List<Education> get education => throw _privateConstructorUsedError;
  List<Course> get courses => throw _privateConstructorUsedError;
  List<String> get skills => throw _privateConstructorUsedError;
  List<Project> get projects => throw _privateConstructorUsedError;
  List<ReleasedApp> get releasedApps => throw _privateConstructorUsedError;
  List<FlutterPackage> get flutterPackages =>
      throw _privateConstructorUsedError;
  List<String> get toolsUsed => throw _privateConstructorUsedError;

  /// Serializes this PortfolioModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PortfolioModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PortfolioModelCopyWith<PortfolioModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PortfolioModelCopyWith<$Res> {
  factory $PortfolioModelCopyWith(
    PortfolioModel value,
    $Res Function(PortfolioModel) then,
  ) = _$PortfolioModelCopyWithImpl<$Res, PortfolioModel>;
  @useResult
  $Res call({
    PersonalInfo personalInfo,
    String careerObjective,
    List<WorkExperience> workExperience,
    List<Education> education,
    List<Course> courses,
    List<String> skills,
    List<Project> projects,
    List<ReleasedApp> releasedApps,
    List<FlutterPackage> flutterPackages,
    List<String> toolsUsed,
  });

  $PersonalInfoCopyWith<$Res> get personalInfo;
}

/// @nodoc
class _$PortfolioModelCopyWithImpl<$Res, $Val extends PortfolioModel>
    implements $PortfolioModelCopyWith<$Res> {
  _$PortfolioModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PortfolioModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? personalInfo = null,
    Object? careerObjective = null,
    Object? workExperience = null,
    Object? education = null,
    Object? courses = null,
    Object? skills = null,
    Object? projects = null,
    Object? releasedApps = null,
    Object? flutterPackages = null,
    Object? toolsUsed = null,
  }) {
    return _then(
      _value.copyWith(
            personalInfo:
                null == personalInfo
                    ? _value.personalInfo
                    : personalInfo // ignore: cast_nullable_to_non_nullable
                        as PersonalInfo,
            careerObjective:
                null == careerObjective
                    ? _value.careerObjective
                    : careerObjective // ignore: cast_nullable_to_non_nullable
                        as String,
            workExperience:
                null == workExperience
                    ? _value.workExperience
                    : workExperience // ignore: cast_nullable_to_non_nullable
                        as List<WorkExperience>,
            education:
                null == education
                    ? _value.education
                    : education // ignore: cast_nullable_to_non_nullable
                        as List<Education>,
            courses:
                null == courses
                    ? _value.courses
                    : courses // ignore: cast_nullable_to_non_nullable
                        as List<Course>,
            skills:
                null == skills
                    ? _value.skills
                    : skills // ignore: cast_nullable_to_non_nullable
                        as List<String>,
            projects:
                null == projects
                    ? _value.projects
                    : projects // ignore: cast_nullable_to_non_nullable
                        as List<Project>,
            releasedApps:
                null == releasedApps
                    ? _value.releasedApps
                    : releasedApps // ignore: cast_nullable_to_non_nullable
                        as List<ReleasedApp>,
            flutterPackages:
                null == flutterPackages
                    ? _value.flutterPackages
                    : flutterPackages // ignore: cast_nullable_to_non_nullable
                        as List<FlutterPackage>,
            toolsUsed:
                null == toolsUsed
                    ? _value.toolsUsed
                    : toolsUsed // ignore: cast_nullable_to_non_nullable
                        as List<String>,
          )
          as $Val,
    );
  }

  /// Create a copy of PortfolioModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PersonalInfoCopyWith<$Res> get personalInfo {
    return $PersonalInfoCopyWith<$Res>(_value.personalInfo, (value) {
      return _then(_value.copyWith(personalInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PortfolioModelImplCopyWith<$Res>
    implements $PortfolioModelCopyWith<$Res> {
  factory _$$PortfolioModelImplCopyWith(
    _$PortfolioModelImpl value,
    $Res Function(_$PortfolioModelImpl) then,
  ) = __$$PortfolioModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    PersonalInfo personalInfo,
    String careerObjective,
    List<WorkExperience> workExperience,
    List<Education> education,
    List<Course> courses,
    List<String> skills,
    List<Project> projects,
    List<ReleasedApp> releasedApps,
    List<FlutterPackage> flutterPackages,
    List<String> toolsUsed,
  });

  @override
  $PersonalInfoCopyWith<$Res> get personalInfo;
}

/// @nodoc
class __$$PortfolioModelImplCopyWithImpl<$Res>
    extends _$PortfolioModelCopyWithImpl<$Res, _$PortfolioModelImpl>
    implements _$$PortfolioModelImplCopyWith<$Res> {
  __$$PortfolioModelImplCopyWithImpl(
    _$PortfolioModelImpl _value,
    $Res Function(_$PortfolioModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PortfolioModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? personalInfo = null,
    Object? careerObjective = null,
    Object? workExperience = null,
    Object? education = null,
    Object? courses = null,
    Object? skills = null,
    Object? projects = null,
    Object? releasedApps = null,
    Object? flutterPackages = null,
    Object? toolsUsed = null,
  }) {
    return _then(
      _$PortfolioModelImpl(
        personalInfo:
            null == personalInfo
                ? _value.personalInfo
                : personalInfo // ignore: cast_nullable_to_non_nullable
                    as PersonalInfo,
        careerObjective:
            null == careerObjective
                ? _value.careerObjective
                : careerObjective // ignore: cast_nullable_to_non_nullable
                    as String,
        workExperience:
            null == workExperience
                ? _value._workExperience
                : workExperience // ignore: cast_nullable_to_non_nullable
                    as List<WorkExperience>,
        education:
            null == education
                ? _value._education
                : education // ignore: cast_nullable_to_non_nullable
                    as List<Education>,
        courses:
            null == courses
                ? _value._courses
                : courses // ignore: cast_nullable_to_non_nullable
                    as List<Course>,
        skills:
            null == skills
                ? _value._skills
                : skills // ignore: cast_nullable_to_non_nullable
                    as List<String>,
        projects:
            null == projects
                ? _value._projects
                : projects // ignore: cast_nullable_to_non_nullable
                    as List<Project>,
        releasedApps:
            null == releasedApps
                ? _value._releasedApps
                : releasedApps // ignore: cast_nullable_to_non_nullable
                    as List<ReleasedApp>,
        flutterPackages:
            null == flutterPackages
                ? _value._flutterPackages
                : flutterPackages // ignore: cast_nullable_to_non_nullable
                    as List<FlutterPackage>,
        toolsUsed:
            null == toolsUsed
                ? _value._toolsUsed
                : toolsUsed // ignore: cast_nullable_to_non_nullable
                    as List<String>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PortfolioModelImpl implements _PortfolioModel {
  const _$PortfolioModelImpl({
    required this.personalInfo,
    required this.careerObjective,
    required final List<WorkExperience> workExperience,
    required final List<Education> education,
    required final List<Course> courses,
    required final List<String> skills,
    required final List<Project> projects,
    required final List<ReleasedApp> releasedApps,
    required final List<FlutterPackage> flutterPackages,
    required final List<String> toolsUsed,
  }) : _workExperience = workExperience,
       _education = education,
       _courses = courses,
       _skills = skills,
       _projects = projects,
       _releasedApps = releasedApps,
       _flutterPackages = flutterPackages,
       _toolsUsed = toolsUsed;

  factory _$PortfolioModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PortfolioModelImplFromJson(json);

  @override
  final PersonalInfo personalInfo;
  @override
  final String careerObjective;
  final List<WorkExperience> _workExperience;
  @override
  List<WorkExperience> get workExperience {
    if (_workExperience is EqualUnmodifiableListView) return _workExperience;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_workExperience);
  }

  final List<Education> _education;
  @override
  List<Education> get education {
    if (_education is EqualUnmodifiableListView) return _education;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_education);
  }

  final List<Course> _courses;
  @override
  List<Course> get courses {
    if (_courses is EqualUnmodifiableListView) return _courses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_courses);
  }

  final List<String> _skills;
  @override
  List<String> get skills {
    if (_skills is EqualUnmodifiableListView) return _skills;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_skills);
  }

  final List<Project> _projects;
  @override
  List<Project> get projects {
    if (_projects is EqualUnmodifiableListView) return _projects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_projects);
  }

  final List<ReleasedApp> _releasedApps;
  @override
  List<ReleasedApp> get releasedApps {
    if (_releasedApps is EqualUnmodifiableListView) return _releasedApps;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_releasedApps);
  }

  final List<FlutterPackage> _flutterPackages;
  @override
  List<FlutterPackage> get flutterPackages {
    if (_flutterPackages is EqualUnmodifiableListView) return _flutterPackages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_flutterPackages);
  }

  final List<String> _toolsUsed;
  @override
  List<String> get toolsUsed {
    if (_toolsUsed is EqualUnmodifiableListView) return _toolsUsed;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_toolsUsed);
  }

  @override
  String toString() {
    return 'PortfolioModel(personalInfo: $personalInfo, careerObjective: $careerObjective, workExperience: $workExperience, education: $education, courses: $courses, skills: $skills, projects: $projects, releasedApps: $releasedApps, flutterPackages: $flutterPackages, toolsUsed: $toolsUsed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PortfolioModelImpl &&
            (identical(other.personalInfo, personalInfo) ||
                other.personalInfo == personalInfo) &&
            (identical(other.careerObjective, careerObjective) ||
                other.careerObjective == careerObjective) &&
            const DeepCollectionEquality().equals(
              other._workExperience,
              _workExperience,
            ) &&
            const DeepCollectionEquality().equals(
              other._education,
              _education,
            ) &&
            const DeepCollectionEquality().equals(other._courses, _courses) &&
            const DeepCollectionEquality().equals(other._skills, _skills) &&
            const DeepCollectionEquality().equals(other._projects, _projects) &&
            const DeepCollectionEquality().equals(
              other._releasedApps,
              _releasedApps,
            ) &&
            const DeepCollectionEquality().equals(
              other._flutterPackages,
              _flutterPackages,
            ) &&
            const DeepCollectionEquality().equals(
              other._toolsUsed,
              _toolsUsed,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    personalInfo,
    careerObjective,
    const DeepCollectionEquality().hash(_workExperience),
    const DeepCollectionEquality().hash(_education),
    const DeepCollectionEquality().hash(_courses),
    const DeepCollectionEquality().hash(_skills),
    const DeepCollectionEquality().hash(_projects),
    const DeepCollectionEquality().hash(_releasedApps),
    const DeepCollectionEquality().hash(_flutterPackages),
    const DeepCollectionEquality().hash(_toolsUsed),
  );

  /// Create a copy of PortfolioModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PortfolioModelImplCopyWith<_$PortfolioModelImpl> get copyWith =>
      __$$PortfolioModelImplCopyWithImpl<_$PortfolioModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PortfolioModelImplToJson(this);
  }
}

abstract class _PortfolioModel implements PortfolioModel {
  const factory _PortfolioModel({
    required final PersonalInfo personalInfo,
    required final String careerObjective,
    required final List<WorkExperience> workExperience,
    required final List<Education> education,
    required final List<Course> courses,
    required final List<String> skills,
    required final List<Project> projects,
    required final List<ReleasedApp> releasedApps,
    required final List<FlutterPackage> flutterPackages,
    required final List<String> toolsUsed,
  }) = _$PortfolioModelImpl;

  factory _PortfolioModel.fromJson(Map<String, dynamic> json) =
      _$PortfolioModelImpl.fromJson;

  @override
  PersonalInfo get personalInfo;
  @override
  String get careerObjective;
  @override
  List<WorkExperience> get workExperience;
  @override
  List<Education> get education;
  @override
  List<Course> get courses;
  @override
  List<String> get skills;
  @override
  List<Project> get projects;
  @override
  List<ReleasedApp> get releasedApps;
  @override
  List<FlutterPackage> get flutterPackages;
  @override
  List<String> get toolsUsed;

  /// Create a copy of PortfolioModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PortfolioModelImplCopyWith<_$PortfolioModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PersonalInfo _$PersonalInfoFromJson(Map<String, dynamic> json) {
  return _PersonalInfo.fromJson(json);
}

/// @nodoc
mixin _$PersonalInfo {
  String get name => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;
  String get dateOfBirth => throw _privateConstructorUsedError;
  List<String> get languagesKnown => throw _privateConstructorUsedError;

  /// Serializes this PersonalInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PersonalInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PersonalInfoCopyWith<PersonalInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonalInfoCopyWith<$Res> {
  factory $PersonalInfoCopyWith(
    PersonalInfo value,
    $Res Function(PersonalInfo) then,
  ) = _$PersonalInfoCopyWithImpl<$Res, PersonalInfo>;
  @useResult
  $Res call({
    String name,
    String phone,
    String email,
    String location,
    String dateOfBirth,
    List<String> languagesKnown,
  });
}

/// @nodoc
class _$PersonalInfoCopyWithImpl<$Res, $Val extends PersonalInfo>
    implements $PersonalInfoCopyWith<$Res> {
  _$PersonalInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PersonalInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? phone = null,
    Object? email = null,
    Object? location = null,
    Object? dateOfBirth = null,
    Object? languagesKnown = null,
  }) {
    return _then(
      _value.copyWith(
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String,
            phone:
                null == phone
                    ? _value.phone
                    : phone // ignore: cast_nullable_to_non_nullable
                        as String,
            email:
                null == email
                    ? _value.email
                    : email // ignore: cast_nullable_to_non_nullable
                        as String,
            location:
                null == location
                    ? _value.location
                    : location // ignore: cast_nullable_to_non_nullable
                        as String,
            dateOfBirth:
                null == dateOfBirth
                    ? _value.dateOfBirth
                    : dateOfBirth // ignore: cast_nullable_to_non_nullable
                        as String,
            languagesKnown:
                null == languagesKnown
                    ? _value.languagesKnown
                    : languagesKnown // ignore: cast_nullable_to_non_nullable
                        as List<String>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PersonalInfoImplCopyWith<$Res>
    implements $PersonalInfoCopyWith<$Res> {
  factory _$$PersonalInfoImplCopyWith(
    _$PersonalInfoImpl value,
    $Res Function(_$PersonalInfoImpl) then,
  ) = __$$PersonalInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String name,
    String phone,
    String email,
    String location,
    String dateOfBirth,
    List<String> languagesKnown,
  });
}

/// @nodoc
class __$$PersonalInfoImplCopyWithImpl<$Res>
    extends _$PersonalInfoCopyWithImpl<$Res, _$PersonalInfoImpl>
    implements _$$PersonalInfoImplCopyWith<$Res> {
  __$$PersonalInfoImplCopyWithImpl(
    _$PersonalInfoImpl _value,
    $Res Function(_$PersonalInfoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PersonalInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? phone = null,
    Object? email = null,
    Object? location = null,
    Object? dateOfBirth = null,
    Object? languagesKnown = null,
  }) {
    return _then(
      _$PersonalInfoImpl(
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
        phone:
            null == phone
                ? _value.phone
                : phone // ignore: cast_nullable_to_non_nullable
                    as String,
        email:
            null == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                    as String,
        location:
            null == location
                ? _value.location
                : location // ignore: cast_nullable_to_non_nullable
                    as String,
        dateOfBirth:
            null == dateOfBirth
                ? _value.dateOfBirth
                : dateOfBirth // ignore: cast_nullable_to_non_nullable
                    as String,
        languagesKnown:
            null == languagesKnown
                ? _value._languagesKnown
                : languagesKnown // ignore: cast_nullable_to_non_nullable
                    as List<String>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PersonalInfoImpl implements _PersonalInfo {
  const _$PersonalInfoImpl({
    required this.name,
    required this.phone,
    required this.email,
    required this.location,
    required this.dateOfBirth,
    required final List<String> languagesKnown,
  }) : _languagesKnown = languagesKnown;

  factory _$PersonalInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PersonalInfoImplFromJson(json);

  @override
  final String name;
  @override
  final String phone;
  @override
  final String email;
  @override
  final String location;
  @override
  final String dateOfBirth;
  final List<String> _languagesKnown;
  @override
  List<String> get languagesKnown {
    if (_languagesKnown is EqualUnmodifiableListView) return _languagesKnown;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_languagesKnown);
  }

  @override
  String toString() {
    return 'PersonalInfo(name: $name, phone: $phone, email: $email, location: $location, dateOfBirth: $dateOfBirth, languagesKnown: $languagesKnown)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PersonalInfoImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            const DeepCollectionEquality().equals(
              other._languagesKnown,
              _languagesKnown,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    name,
    phone,
    email,
    location,
    dateOfBirth,
    const DeepCollectionEquality().hash(_languagesKnown),
  );

  /// Create a copy of PersonalInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PersonalInfoImplCopyWith<_$PersonalInfoImpl> get copyWith =>
      __$$PersonalInfoImplCopyWithImpl<_$PersonalInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PersonalInfoImplToJson(this);
  }
}

abstract class _PersonalInfo implements PersonalInfo {
  const factory _PersonalInfo({
    required final String name,
    required final String phone,
    required final String email,
    required final String location,
    required final String dateOfBirth,
    required final List<String> languagesKnown,
  }) = _$PersonalInfoImpl;

  factory _PersonalInfo.fromJson(Map<String, dynamic> json) =
      _$PersonalInfoImpl.fromJson;

  @override
  String get name;
  @override
  String get phone;
  @override
  String get email;
  @override
  String get location;
  @override
  String get dateOfBirth;
  @override
  List<String> get languagesKnown;

  /// Create a copy of PersonalInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PersonalInfoImplCopyWith<_$PersonalInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WorkExperience _$WorkExperienceFromJson(Map<String, dynamic> json) {
  return _WorkExperience.fromJson(json);
}

/// @nodoc
mixin _$WorkExperience {
  String get company => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;
  String get designation => throw _privateConstructorUsedError;
  String get duration => throw _privateConstructorUsedError;

  /// Serializes this WorkExperience to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WorkExperience
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WorkExperienceCopyWith<WorkExperience> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkExperienceCopyWith<$Res> {
  factory $WorkExperienceCopyWith(
    WorkExperience value,
    $Res Function(WorkExperience) then,
  ) = _$WorkExperienceCopyWithImpl<$Res, WorkExperience>;
  @useResult
  $Res call({
    String company,
    String location,
    String designation,
    String duration,
  });
}

/// @nodoc
class _$WorkExperienceCopyWithImpl<$Res, $Val extends WorkExperience>
    implements $WorkExperienceCopyWith<$Res> {
  _$WorkExperienceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WorkExperience
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? company = null,
    Object? location = null,
    Object? designation = null,
    Object? duration = null,
  }) {
    return _then(
      _value.copyWith(
            company:
                null == company
                    ? _value.company
                    : company // ignore: cast_nullable_to_non_nullable
                        as String,
            location:
                null == location
                    ? _value.location
                    : location // ignore: cast_nullable_to_non_nullable
                        as String,
            designation:
                null == designation
                    ? _value.designation
                    : designation // ignore: cast_nullable_to_non_nullable
                        as String,
            duration:
                null == duration
                    ? _value.duration
                    : duration // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$WorkExperienceImplCopyWith<$Res>
    implements $WorkExperienceCopyWith<$Res> {
  factory _$$WorkExperienceImplCopyWith(
    _$WorkExperienceImpl value,
    $Res Function(_$WorkExperienceImpl) then,
  ) = __$$WorkExperienceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String company,
    String location,
    String designation,
    String duration,
  });
}

/// @nodoc
class __$$WorkExperienceImplCopyWithImpl<$Res>
    extends _$WorkExperienceCopyWithImpl<$Res, _$WorkExperienceImpl>
    implements _$$WorkExperienceImplCopyWith<$Res> {
  __$$WorkExperienceImplCopyWithImpl(
    _$WorkExperienceImpl _value,
    $Res Function(_$WorkExperienceImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WorkExperience
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? company = null,
    Object? location = null,
    Object? designation = null,
    Object? duration = null,
  }) {
    return _then(
      _$WorkExperienceImpl(
        company:
            null == company
                ? _value.company
                : company // ignore: cast_nullable_to_non_nullable
                    as String,
        location:
            null == location
                ? _value.location
                : location // ignore: cast_nullable_to_non_nullable
                    as String,
        designation:
            null == designation
                ? _value.designation
                : designation // ignore: cast_nullable_to_non_nullable
                    as String,
        duration:
            null == duration
                ? _value.duration
                : duration // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$WorkExperienceImpl implements _WorkExperience {
  const _$WorkExperienceImpl({
    required this.company,
    required this.location,
    required this.designation,
    required this.duration,
  });

  factory _$WorkExperienceImpl.fromJson(Map<String, dynamic> json) =>
      _$$WorkExperienceImplFromJson(json);

  @override
  final String company;
  @override
  final String location;
  @override
  final String designation;
  @override
  final String duration;

  @override
  String toString() {
    return 'WorkExperience(company: $company, location: $location, designation: $designation, duration: $duration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkExperienceImpl &&
            (identical(other.company, company) || other.company == company) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.designation, designation) ||
                other.designation == designation) &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, company, location, designation, duration);

  /// Create a copy of WorkExperience
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkExperienceImplCopyWith<_$WorkExperienceImpl> get copyWith =>
      __$$WorkExperienceImplCopyWithImpl<_$WorkExperienceImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$WorkExperienceImplToJson(this);
  }
}

abstract class _WorkExperience implements WorkExperience {
  const factory _WorkExperience({
    required final String company,
    required final String location,
    required final String designation,
    required final String duration,
  }) = _$WorkExperienceImpl;

  factory _WorkExperience.fromJson(Map<String, dynamic> json) =
      _$WorkExperienceImpl.fromJson;

  @override
  String get company;
  @override
  String get location;
  @override
  String get designation;
  @override
  String get duration;

  /// Create a copy of WorkExperience
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WorkExperienceImplCopyWith<_$WorkExperienceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Education _$EducationFromJson(Map<String, dynamic> json) {
  return _Education.fromJson(json);
}

/// @nodoc
mixin _$Education {
  String get degree => throw _privateConstructorUsedError;
  String get institution => throw _privateConstructorUsedError;
  String get percentage => throw _privateConstructorUsedError;
  int get year => throw _privateConstructorUsedError;

  /// Serializes this Education to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Education
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EducationCopyWith<Education> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EducationCopyWith<$Res> {
  factory $EducationCopyWith(Education value, $Res Function(Education) then) =
      _$EducationCopyWithImpl<$Res, Education>;
  @useResult
  $Res call({String degree, String institution, String percentage, int year});
}

/// @nodoc
class _$EducationCopyWithImpl<$Res, $Val extends Education>
    implements $EducationCopyWith<$Res> {
  _$EducationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Education
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? degree = null,
    Object? institution = null,
    Object? percentage = null,
    Object? year = null,
  }) {
    return _then(
      _value.copyWith(
            degree:
                null == degree
                    ? _value.degree
                    : degree // ignore: cast_nullable_to_non_nullable
                        as String,
            institution:
                null == institution
                    ? _value.institution
                    : institution // ignore: cast_nullable_to_non_nullable
                        as String,
            percentage:
                null == percentage
                    ? _value.percentage
                    : percentage // ignore: cast_nullable_to_non_nullable
                        as String,
            year:
                null == year
                    ? _value.year
                    : year // ignore: cast_nullable_to_non_nullable
                        as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$EducationImplCopyWith<$Res>
    implements $EducationCopyWith<$Res> {
  factory _$$EducationImplCopyWith(
    _$EducationImpl value,
    $Res Function(_$EducationImpl) then,
  ) = __$$EducationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String degree, String institution, String percentage, int year});
}

/// @nodoc
class __$$EducationImplCopyWithImpl<$Res>
    extends _$EducationCopyWithImpl<$Res, _$EducationImpl>
    implements _$$EducationImplCopyWith<$Res> {
  __$$EducationImplCopyWithImpl(
    _$EducationImpl _value,
    $Res Function(_$EducationImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Education
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? degree = null,
    Object? institution = null,
    Object? percentage = null,
    Object? year = null,
  }) {
    return _then(
      _$EducationImpl(
        degree:
            null == degree
                ? _value.degree
                : degree // ignore: cast_nullable_to_non_nullable
                    as String,
        institution:
            null == institution
                ? _value.institution
                : institution // ignore: cast_nullable_to_non_nullable
                    as String,
        percentage:
            null == percentage
                ? _value.percentage
                : percentage // ignore: cast_nullable_to_non_nullable
                    as String,
        year:
            null == year
                ? _value.year
                : year // ignore: cast_nullable_to_non_nullable
                    as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$EducationImpl implements _Education {
  const _$EducationImpl({
    required this.degree,
    required this.institution,
    required this.percentage,
    required this.year,
  });

  factory _$EducationImpl.fromJson(Map<String, dynamic> json) =>
      _$$EducationImplFromJson(json);

  @override
  final String degree;
  @override
  final String institution;
  @override
  final String percentage;
  @override
  final int year;

  @override
  String toString() {
    return 'Education(degree: $degree, institution: $institution, percentage: $percentage, year: $year)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EducationImpl &&
            (identical(other.degree, degree) || other.degree == degree) &&
            (identical(other.institution, institution) ||
                other.institution == institution) &&
            (identical(other.percentage, percentage) ||
                other.percentage == percentage) &&
            (identical(other.year, year) || other.year == year));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, degree, institution, percentage, year);

  /// Create a copy of Education
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EducationImplCopyWith<_$EducationImpl> get copyWith =>
      __$$EducationImplCopyWithImpl<_$EducationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EducationImplToJson(this);
  }
}

abstract class _Education implements Education {
  const factory _Education({
    required final String degree,
    required final String institution,
    required final String percentage,
    required final int year,
  }) = _$EducationImpl;

  factory _Education.fromJson(Map<String, dynamic> json) =
      _$EducationImpl.fromJson;

  @override
  String get degree;
  @override
  String get institution;
  @override
  String get percentage;
  @override
  int get year;

  /// Create a copy of Education
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EducationImplCopyWith<_$EducationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Course _$CourseFromJson(Map<String, dynamic> json) {
  return _Course.fromJson(json);
}

/// @nodoc
mixin _$Course {
  String get courseName => throw _privateConstructorUsedError;
  List<String> get topics => throw _privateConstructorUsedError;

  /// Serializes this Course to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Course
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CourseCopyWith<Course> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseCopyWith<$Res> {
  factory $CourseCopyWith(Course value, $Res Function(Course) then) =
      _$CourseCopyWithImpl<$Res, Course>;
  @useResult
  $Res call({String courseName, List<String> topics});
}

/// @nodoc
class _$CourseCopyWithImpl<$Res, $Val extends Course>
    implements $CourseCopyWith<$Res> {
  _$CourseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Course
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? courseName = null, Object? topics = null}) {
    return _then(
      _value.copyWith(
            courseName:
                null == courseName
                    ? _value.courseName
                    : courseName // ignore: cast_nullable_to_non_nullable
                        as String,
            topics:
                null == topics
                    ? _value.topics
                    : topics // ignore: cast_nullable_to_non_nullable
                        as List<String>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CourseImplCopyWith<$Res> implements $CourseCopyWith<$Res> {
  factory _$$CourseImplCopyWith(
    _$CourseImpl value,
    $Res Function(_$CourseImpl) then,
  ) = __$$CourseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String courseName, List<String> topics});
}

/// @nodoc
class __$$CourseImplCopyWithImpl<$Res>
    extends _$CourseCopyWithImpl<$Res, _$CourseImpl>
    implements _$$CourseImplCopyWith<$Res> {
  __$$CourseImplCopyWithImpl(
    _$CourseImpl _value,
    $Res Function(_$CourseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Course
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? courseName = null, Object? topics = null}) {
    return _then(
      _$CourseImpl(
        courseName:
            null == courseName
                ? _value.courseName
                : courseName // ignore: cast_nullable_to_non_nullable
                    as String,
        topics:
            null == topics
                ? _value._topics
                : topics // ignore: cast_nullable_to_non_nullable
                    as List<String>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CourseImpl implements _Course {
  const _$CourseImpl({
    required this.courseName,
    required final List<String> topics,
  }) : _topics = topics;

  factory _$CourseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CourseImplFromJson(json);

  @override
  final String courseName;
  final List<String> _topics;
  @override
  List<String> get topics {
    if (_topics is EqualUnmodifiableListView) return _topics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topics);
  }

  @override
  String toString() {
    return 'Course(courseName: $courseName, topics: $topics)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseImpl &&
            (identical(other.courseName, courseName) ||
                other.courseName == courseName) &&
            const DeepCollectionEquality().equals(other._topics, _topics));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    courseName,
    const DeepCollectionEquality().hash(_topics),
  );

  /// Create a copy of Course
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseImplCopyWith<_$CourseImpl> get copyWith =>
      __$$CourseImplCopyWithImpl<_$CourseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CourseImplToJson(this);
  }
}

abstract class _Course implements Course {
  const factory _Course({
    required final String courseName,
    required final List<String> topics,
  }) = _$CourseImpl;

  factory _Course.fromJson(Map<String, dynamic> json) = _$CourseImpl.fromJson;

  @override
  String get courseName;
  @override
  List<String> get topics;

  /// Create a copy of Course
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CourseImplCopyWith<_$CourseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Project _$ProjectFromJson(Map<String, dynamic> json) {
  return _Project.fromJson(json);
}

/// @nodoc
mixin _$Project {
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  /// Serializes this Project to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Project
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProjectCopyWith<Project> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectCopyWith<$Res> {
  factory $ProjectCopyWith(Project value, $Res Function(Project) then) =
      _$ProjectCopyWithImpl<$Res, Project>;
  @useResult
  $Res call({String name, String description});
}

/// @nodoc
class _$ProjectCopyWithImpl<$Res, $Val extends Project>
    implements $ProjectCopyWith<$Res> {
  _$ProjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Project
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? name = null, Object? description = null}) {
    return _then(
      _value.copyWith(
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String,
            description:
                null == description
                    ? _value.description
                    : description // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ProjectImplCopyWith<$Res> implements $ProjectCopyWith<$Res> {
  factory _$$ProjectImplCopyWith(
    _$ProjectImpl value,
    $Res Function(_$ProjectImpl) then,
  ) = __$$ProjectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String description});
}

/// @nodoc
class __$$ProjectImplCopyWithImpl<$Res>
    extends _$ProjectCopyWithImpl<$Res, _$ProjectImpl>
    implements _$$ProjectImplCopyWith<$Res> {
  __$$ProjectImplCopyWithImpl(
    _$ProjectImpl _value,
    $Res Function(_$ProjectImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Project
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? name = null, Object? description = null}) {
    return _then(
      _$ProjectImpl(
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
        description:
            null == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ProjectImpl implements _Project {
  const _$ProjectImpl({required this.name, required this.description});

  factory _$ProjectImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProjectImplFromJson(json);

  @override
  final String name;
  @override
  final String description;

  @override
  String toString() {
    return 'Project(name: $name, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, description);

  /// Create a copy of Project
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectImplCopyWith<_$ProjectImpl> get copyWith =>
      __$$ProjectImplCopyWithImpl<_$ProjectImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProjectImplToJson(this);
  }
}

abstract class _Project implements Project {
  const factory _Project({
    required final String name,
    required final String description,
  }) = _$ProjectImpl;

  factory _Project.fromJson(Map<String, dynamic> json) = _$ProjectImpl.fromJson;

  @override
  String get name;
  @override
  String get description;

  /// Create a copy of Project
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProjectImplCopyWith<_$ProjectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ReleasedApp _$ReleasedAppFromJson(Map<String, dynamic> json) {
  return _ReleasedApp.fromJson(json);
}

/// @nodoc
mixin _$ReleasedApp {
  String get name => throw _privateConstructorUsedError;
  String get link => throw _privateConstructorUsedError;

  /// Serializes this ReleasedApp to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReleasedApp
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReleasedAppCopyWith<ReleasedApp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReleasedAppCopyWith<$Res> {
  factory $ReleasedAppCopyWith(
    ReleasedApp value,
    $Res Function(ReleasedApp) then,
  ) = _$ReleasedAppCopyWithImpl<$Res, ReleasedApp>;
  @useResult
  $Res call({String name, String link});
}

/// @nodoc
class _$ReleasedAppCopyWithImpl<$Res, $Val extends ReleasedApp>
    implements $ReleasedAppCopyWith<$Res> {
  _$ReleasedAppCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReleasedApp
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? name = null, Object? link = null}) {
    return _then(
      _value.copyWith(
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String,
            link:
                null == link
                    ? _value.link
                    : link // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ReleasedAppImplCopyWith<$Res>
    implements $ReleasedAppCopyWith<$Res> {
  factory _$$ReleasedAppImplCopyWith(
    _$ReleasedAppImpl value,
    $Res Function(_$ReleasedAppImpl) then,
  ) = __$$ReleasedAppImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String link});
}

/// @nodoc
class __$$ReleasedAppImplCopyWithImpl<$Res>
    extends _$ReleasedAppCopyWithImpl<$Res, _$ReleasedAppImpl>
    implements _$$ReleasedAppImplCopyWith<$Res> {
  __$$ReleasedAppImplCopyWithImpl(
    _$ReleasedAppImpl _value,
    $Res Function(_$ReleasedAppImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ReleasedApp
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? name = null, Object? link = null}) {
    return _then(
      _$ReleasedAppImpl(
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
        link:
            null == link
                ? _value.link
                : link // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ReleasedAppImpl implements _ReleasedApp {
  const _$ReleasedAppImpl({required this.name, required this.link});

  factory _$ReleasedAppImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReleasedAppImplFromJson(json);

  @override
  final String name;
  @override
  final String link;

  @override
  String toString() {
    return 'ReleasedApp(name: $name, link: $link)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReleasedAppImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.link, link) || other.link == link));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, link);

  /// Create a copy of ReleasedApp
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReleasedAppImplCopyWith<_$ReleasedAppImpl> get copyWith =>
      __$$ReleasedAppImplCopyWithImpl<_$ReleasedAppImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReleasedAppImplToJson(this);
  }
}

abstract class _ReleasedApp implements ReleasedApp {
  const factory _ReleasedApp({
    required final String name,
    required final String link,
  }) = _$ReleasedAppImpl;

  factory _ReleasedApp.fromJson(Map<String, dynamic> json) =
      _$ReleasedAppImpl.fromJson;

  @override
  String get name;
  @override
  String get link;

  /// Create a copy of ReleasedApp
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReleasedAppImplCopyWith<_$ReleasedAppImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FlutterPackage _$FlutterPackageFromJson(Map<String, dynamic> json) {
  return _FlutterPackage.fromJson(json);
}

/// @nodoc
mixin _$FlutterPackage {
  String get name => throw _privateConstructorUsedError;
  String get link => throw _privateConstructorUsedError;

  /// Serializes this FlutterPackage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FlutterPackage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FlutterPackageCopyWith<FlutterPackage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlutterPackageCopyWith<$Res> {
  factory $FlutterPackageCopyWith(
    FlutterPackage value,
    $Res Function(FlutterPackage) then,
  ) = _$FlutterPackageCopyWithImpl<$Res, FlutterPackage>;
  @useResult
  $Res call({String name, String link});
}

/// @nodoc
class _$FlutterPackageCopyWithImpl<$Res, $Val extends FlutterPackage>
    implements $FlutterPackageCopyWith<$Res> {
  _$FlutterPackageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FlutterPackage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? name = null, Object? link = null}) {
    return _then(
      _value.copyWith(
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String,
            link:
                null == link
                    ? _value.link
                    : link // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$FlutterPackageImplCopyWith<$Res>
    implements $FlutterPackageCopyWith<$Res> {
  factory _$$FlutterPackageImplCopyWith(
    _$FlutterPackageImpl value,
    $Res Function(_$FlutterPackageImpl) then,
  ) = __$$FlutterPackageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String link});
}

/// @nodoc
class __$$FlutterPackageImplCopyWithImpl<$Res>
    extends _$FlutterPackageCopyWithImpl<$Res, _$FlutterPackageImpl>
    implements _$$FlutterPackageImplCopyWith<$Res> {
  __$$FlutterPackageImplCopyWithImpl(
    _$FlutterPackageImpl _value,
    $Res Function(_$FlutterPackageImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FlutterPackage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? name = null, Object? link = null}) {
    return _then(
      _$FlutterPackageImpl(
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
        link:
            null == link
                ? _value.link
                : link // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$FlutterPackageImpl implements _FlutterPackage {
  const _$FlutterPackageImpl({required this.name, required this.link});

  factory _$FlutterPackageImpl.fromJson(Map<String, dynamic> json) =>
      _$$FlutterPackageImplFromJson(json);

  @override
  final String name;
  @override
  final String link;

  @override
  String toString() {
    return 'FlutterPackage(name: $name, link: $link)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FlutterPackageImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.link, link) || other.link == link));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, link);

  /// Create a copy of FlutterPackage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FlutterPackageImplCopyWith<_$FlutterPackageImpl> get copyWith =>
      __$$FlutterPackageImplCopyWithImpl<_$FlutterPackageImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$FlutterPackageImplToJson(this);
  }
}

abstract class _FlutterPackage implements FlutterPackage {
  const factory _FlutterPackage({
    required final String name,
    required final String link,
  }) = _$FlutterPackageImpl;

  factory _FlutterPackage.fromJson(Map<String, dynamic> json) =
      _$FlutterPackageImpl.fromJson;

  @override
  String get name;
  @override
  String get link;

  /// Create a copy of FlutterPackage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FlutterPackageImplCopyWith<_$FlutterPackageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
