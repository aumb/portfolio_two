import 'package:equatable/equatable.dart';

class Work extends Equatable {
  const Work({
    required this.companyName,
    required this.title,
    required this.imageUrl,
    required this.startDate,
    required this.location,
    required this.description,
    this.endDate,
  });

  final String companyName;
  final String title;
  final String imageUrl;
  final DateTime startDate;
  final DateTime? endDate;
  final String location;
  final String description;

  @override
  List<Object?> get props => [
        companyName,
        title,
        imageUrl,
        startDate,
        endDate,
        location,
        description,
      ];
}
