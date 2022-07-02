class AppConstants {
  static final careerStart = DateTime(2019);

  static String get yearsOfWork {
    final currentTime = DateTime.now();
    final difference = currentTime.difference(AppConstants.careerStart);
    final differenceInYears = difference.inDays * 0.002738;

    return differenceInYears.floor().toString();
  }

  static const githubUrl = 'https://github.com/aumb';
  static const linkedinUrl = 'https://www.linkedin.com/in/mathiewabbas';
  static const facebookUrl = 'https://www.facebook.com/mathiew.abbas';
  static const instagramUrl = 'https://www.instagram.com/mathiewabbas';
  static const email = 'mathiew95@gmail.com';
}
