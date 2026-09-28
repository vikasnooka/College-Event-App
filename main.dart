import 'package:flutter/material.dart';
import '../models/event.dart';

class EventDetailsScreen extends StatelessWidget {
  final Event event;

  const EventDetailsScreen({
    super.key,
    required this.event,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Event Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              event.title,
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              event.description,
              style: const TextStyle(fontSize: 17),
            ),
            const SizedBox(height: 25),
            Text('📅 Date: ${event.date}'),
            const SizedBox(height: 10),
            Text('⏰ Time: ${event.time}'),
            const SizedBox(height: 10),
            Text('📍 Venue: ${event.venue}'),
            const SizedBox(height: 10),
            Text('🏷 Category: ${event.category}'),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Successfully registered!'),
                    ),
                  );
                },
                child: const Text('Register for Event'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
