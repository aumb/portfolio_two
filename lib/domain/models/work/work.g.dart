// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'work.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Work _$$_WorkFromJson(Map<String, dynamic> json) => _$_Work(
      companyName: json['companyName'] as String,
      description: json['description'] as String,
      imageUrl: json['imageUrl'] as String,
      title: json['title'] as String,
      location: json['location'] as String,
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: json['endDate'] == null
          ? null
          : DateTime.parse(json['endDate'] as String),
    );

Map<String, dynamic> _$$_WorkToJson(_$_Work instance) => <String, dynamic>{
      'companyName': instance.companyName,
      'description': instance.description,
      'imageUrl': instance.imageUrl,
      'title': instance.title,
      'location': instance.location,
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate?.toIso8601String(),
    };
