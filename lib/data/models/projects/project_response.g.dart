// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProjectResponse _$$_ProjectResponseFromJson(Map<String, dynamic> json) =>
    _$_ProjectResponse(
      description: json['description'] as String,
      imageUrl: json['imageUrl'] as String,
      url: json['url'] as String,
      index: json['index'] as num,
      status: $enumDecode(_$ProjectStatusEnumMap, json['status']),
    );

Map<String, dynamic> _$$_ProjectResponseToJson(_$_ProjectResponse instance) =>
    <String, dynamic>{
      'description': instance.description,
      'imageUrl': instance.imageUrl,
      'url': instance.url,
      'index': instance.index,
      'status': _$ProjectStatusEnumMap[instance.status],
    };

const _$ProjectStatusEnumMap = {
  ProjectStatus.completed: 'COMPLETED',
  ProjectStatus.inDevelopment: 'DEVELOPMENT',
};
