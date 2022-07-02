class AppConstants {
  static final careerStart = DateTime(2019);

  static String get yearsOfWork {
    final currentTime = DateTime.now();
    final difference = currentTime.difference(AppConstants.careerStart);
    final differenceInYears = difference.inDays * 0.002738;

    return differenceInYears.floor().toString();
  }
}
