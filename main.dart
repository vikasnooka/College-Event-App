return Card(
  elevation: 3,
  margin: const EdgeInsets.only(bottom: 16),
  child: Padding(
    padding: const EdgeInsets.all(12),
    child: ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.indigo.shade100,
        child: const Icon(
          Icons.event,
          color: Colors.indigo,
        ),
      ),
      title: Text(
        event.title,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Padding(
        padding: const EdgeInsets.only(top: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(event.description),
            const SizedBox(height: 8),
            Text('📅 ${event.date}'),
            Text('📍 ${event.venue}'),
            const SizedBox(height: 6),
            Chip(
              label: Text(event.category),
            ),
          ],
        ),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => EventDetailsScreen(event: event),
          ),
        );
      },
    ),
  ),
);
