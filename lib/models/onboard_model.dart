class OnboardModel {
  final String image;

  final String title;

  final String description;

  OnboardModel(
      {required this.image, required this.title, required this.description});
}

final List<OnboardModel> onboard_data = [
  OnboardModel(
      image: 'assets/images/logo.png',
      title: 'Selamat Datang',
      description: 'EduScan adalah Scanner KTP \nberbasis Mobile Android'),
  OnboardModel(
      image: 'assets/images/onboard1.png',
      title: 'OCR KTP Cepat',
      description: 'Nikmati Pengalaman OCR\nScan KTP dengan cepat dan akurat'),
  OnboardModel(
      image: 'assets/images/onboard2.png',
      title: 'Data Aman',
      description:
          'EduScan melindungi data anda\ndengan mematuhu pedoman komunitas'),
];
