class Event {
  final String title;
  final String description;
  final String date;
  final String time;
  final String venue;
  final String category;

  Event({
    required this.title,
    required this.description,
    required this.date,
    required this.time,
    required this.venue,
    required this.category,
  });
}

final List<Event> events = [
  Event(
    title: 'Tech Fest 2026',
    description: 'A technical festival featuring coding and technology competitions.',
    date: '10 October 2026',
    time: '10:00 AM',
    venue: 'Main Auditorium',
    category: 'Technical',
  ),
  Event(
    title: 'Cultural Fest',
    description: 'Enjoy music, dance, drama and other cultural performances.',
    date: '15 October 2026',
    time: '4:00 PM',
    venue: 'College Ground',
    category: 'Cultural',
  ),
  Event(
    title: 'Sports Meet',
    description: 'Annual inter-department sports competition.',
    date: '20 October 2026',
    time: '9:00 AM',
    venue: 'Sports Complex',
    category: 'Sports',
  ),
];
