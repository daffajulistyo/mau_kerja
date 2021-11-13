// ignore_for_file: file_names

class RecommendedJob {
  final int? id;
  final String? picture;
  final String? salary;
  final String? title;
  final String? location;
  final String? schedule;
  final String? type;
  final String? place;

  RecommendedJob({
    this.id,
    this.picture,
    this.salary,
    this.title,
    this.location,
    this.schedule,
    this.type,
    this.place,
  });
}

List<RecommendedJob> mockRecommendedJob = [
  RecommendedJob(
    id: 1,
    picture: 'https://www.freepnglogos.com/uploads/google-logo-png/google-logo-png-webinar-optimizing-for-success-google-business-webinar-13.png',
    salary: '\$50K - \$60K',
    title: 'Senior Graphic Designer',
    location: 'Dsgn Agency • Jakarta, Id',
    schedule: 'Full time',
    type: 'Remote',
    place: 'Anywere',
  ),

  RecommendedJob(
    id: 2,
    picture: 'https://www.freepnglogos.com/uploads/google-logo-png/google-logo-png-webinar-optimizing-for-success-google-business-webinar-13.png',
    salary: '\$50K - \$60K',
    title: 'Senior UX UX Designer',
    location: 'Google LLC • Jakarta, Id',
    schedule: 'Full time',
    type: 'Remote',
    place: 'Anywere',
  ),

  RecommendedJob(
    id: 3,
    picture: 'https://www.freepnglogos.com/uploads/telegram-logo-png-0.png',
    salary: '\$30K - \$60K',
    title: 'Senior UX UX Designer',
    location: 'Google LLC • Jakarta, Id',
    schedule: 'Full time',
    type: 'Remote',
    place: 'Anywere',
  ),
];
