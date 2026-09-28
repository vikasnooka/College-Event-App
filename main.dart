import 'package:flutter/material.dart';
import '../models/event.dart';
import 'event_details.dart';

class MainNavigation extends StatefulWidget {
  const MainNavigation({super.key});

  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  int selectedIndex = 0;

  final List<String> registeredEvents = [];

  @override
  Widget build(BuildContext context) {
    final pages = [
      _buildHome(),
      _buildRegistrations(),
      _buildProfile(),
    ];

    return Scaffold(
      body: pages[selectedIndex],
      bottomNavigationBar: NavigationBar(
        selectedIndex: selectedIndex,
        onDestinationSelected: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            selectedIcon: Icon(Icons.home),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.bookmark_outline),
            selectedIcon: Icon(Icons.bookmark),
            label: 'My Events',
          ),
          NavigationDestination(
            icon: Icon(Icons.person_outline),
            selectedIcon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  Widget _buildHome() {
    return Scaffold(
      appBar: AppBar(
        title: const Text('College Events'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: events.length,
        itemBuilder: (context, index) {
          final event = events[index];

          return Card(
            margin: const EdgeInsets.only(bottom: 15),
            child: ListTile(
              leading: const CircleAvatar(
                child: Icon(Icons.event),
              ),
              title: Text(event.title),
              subtitle: Text('${event.date}\n${event.venue}'),
              isThreeLine: true,
              onTap: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => EventDetailsScreen(event: event),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }

  Widget _buildRegistrations() {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Events'),
      ),
      body: registeredEvents.isEmpty
          ? const Center(
              child: Text('No registered events'),
            )
          : ListView.builder(
              itemCount: registeredEvents.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: const Icon(Icons.check_circle),
                  title: Text(registeredEvents[index]),
                );
              },
            ),
    );
  }

  Widget _buildProfile() {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 45,
              child: Icon(Icons.person, size: 45),
            ),
            SizedBox(height: 15),
            Text(
              'Student',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text('student@college.edu'),
          ],
        ),
      ),
    );
  }
}
