// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Project _$$_ProjectFromJson(Map<String, dynamic> json) => _$_Project(
      description: json['description'] as String,
      imageUrl: json['imageUrl'] as String,
      url: json['url'] as String,
      status: $enumDecode(_$ProjectStatusEnumMap, json['status']),
    );

Map<String, dynamic> _$$_ProjectToJson(_$_Project instance) =>
    <String, dynamic>{
      'description': instance.description,
      'imageUrl': instance.imageUrl,
      'url': instance.url,
      'status': _$ProjectStatusEnumMap[instance.status],
    };

const _$ProjectStatusEnumMap = {
  ProjectStatus.completed: 'COMPLETED',
  ProjectStatus.inDevelopment: 'DEVELOPMENT',
};
