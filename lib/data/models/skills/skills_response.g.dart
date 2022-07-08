// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'skills_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SkillsResponse _$$_SkillsResponseFromJson(Map<String, dynamic> json) =>
    _$_SkillsResponse(
      title: json['title'] as String,
      index: json['index'] as num,
      items: (json['items'] as List<dynamic>).map((e) => e as String).toList(),
      iconUrl: json['iconUrl'] as String,
    );

Map<String, dynamic> _$$_SkillsResponseToJson(_$_SkillsResponse instance) =>
    <String, dynamic>{
      'title': instance.title,
      'index': instance.index,
      'items': instance.items,
      'iconUrl': instance.iconUrl,
    };
