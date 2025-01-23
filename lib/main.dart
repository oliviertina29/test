import 'package:flutter/material.dart';

void main() {
  runApp(const CropDoctorApp());
}

class CropDoctorApp extends StatelessWidget {
  const CropDoctorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CropDoctor',
      theme: ThemeData(
        primarySwatch: Colors.green,
        fontFamily: 'Roboto',
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Logo ICRISAT and Slogan
                Column(
                  children: [
                    Image.asset(
                      '/home/oliver/Downloads/image_selection/test/assets/images/icrisat.png', // Nom du fichier dans le même dossier que main.dart
                      height: 80,
                    ),
                    const SizedBox(height: 8),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 6,
                      ),
                      decoration: BoxDecoration(
                        color:
                            const Color.fromARGB(255, 1, 75, 1), // Green color
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            offset: const Offset(0, 4),
                            blurRadius: 6,
                          ),
                        ],
                      ),
                      child: const Text(
                        'Crop health is Vital',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 32),
                // CropDoctor Title
                Column(
                  children: [
                    const Icon(
                      Icons.eco_rounded,
                      size: 60,
                      color: Color.fromARGB(255, 1, 65, 1), // Green icon
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'CropDoctor',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 1, 80, 1),
                      ),
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'Welcome to CropDoctor',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Your companion in identifying and diagnosing crop health issues.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black54,
                        height: 1.5,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 40),
                // Photo Buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton.icon(
                      onPressed: () {
                        // Add functionality
                      },
                      icon: const Icon(Icons.camera_alt_rounded),
                      label: const Text('TAKE PHOTO'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color(0xFF008000), // Green button
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 24,
                          vertical: 16,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        elevation: 5,
                      ),
                    ),
                    ElevatedButton.icon(
                      onPressed: () {
                        // Add functionality
                      },
                      icon: const Icon(Icons.photo_library_rounded),
                      label: const Text('GALLERY'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color(0xFFFF8C00), // Orange button
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 24,
                          vertical: 16,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        elevation: 5,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 40),
                // Recommendations Button
                ElevatedButton(
                  onPressed: () {
                    // Add functionality
                  },
                  child: const Text(
                    'Recommendations',
                    style: TextStyle(fontSize: 18),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF008000), // Green button
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 48,
                      vertical: 16,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    elevation: 5,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
