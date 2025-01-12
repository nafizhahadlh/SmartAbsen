import 'package:flutter/material.dart';

class CoursePage extends StatelessWidget {
  const CoursePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Halaman Mata Kuliah",
            style: TextStyle(color: Colors.grey)),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header Section
            Container(
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                color: Color(0xFFE3F2FD),
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(30)),
              ),
              child: Column(
                children: [
                  const Text(
                    "SmartAbsen",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("Ramadhan M.Com",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text("Teknik Informatika"),
                        ],
                      ),
                      const CircleAvatar(
                        backgroundColor: Colors.blue,
                        radius: 25,
                        child: Icon(Icons.person, color: Colors.white),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  // Search Box
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Cari Mata Kuliah",
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.search, color: Colors.grey),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            // Course List Section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Mata Kuliah",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            // GridView for Courses
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: GridView.count(
                shrinkWrap: true,
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  CourseCard(
                    title: "Pemrograman Mobile",
                    lecturer: "Safriadi, S.T, M.Kom",
                    schedule: "Senin / 07:30 - 12:00",
                    room: "Ruang 304",
                  ),
                  CourseCard(
                    title: "Pemrograman",
                    lecturer: "Muhammad, S.T, M",
                    schedule: "Senin / 13:30 - 12:00",
                    room: "Ruang 103",
                  ),
                  CourseCard(
                    title: "Rancangan Analisa",
                    lecturer: "Muhammad Arhami, S.Si, M.Kom",
                    schedule: "Selasa / 07:30 - 11:20",
                    room: "Ruang 211",
                  ),
                  CourseCard(
                    title: "Praktikum PE",
                    lecturer: "Mulyadi S.T, M.Kom",
                    schedule: "Selasa / 13:30 - 12:00",
                    room: "Ruang 108",
                  ),
                  CourseCard(
                    title: "Pengolahan Citra",
                    lecturer: "Safriadi, S.T, M.Kom",
                    schedule: "Rabu / 07:30 - 09:10",
                    room: "Ruang 314",
                  ),
                  CourseCard(
                    title: "Praktikum PE",
                    lecturer: "Khadri, S.T, M.Kom",
                    schedule: "Rabu / 13:30 - 12:00",
                    room: "Ruang 110",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      // Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: ""),
        ],
      ),
    );
  }
}

class CourseCard extends StatelessWidget {
  final String title;
  final String lecturer;
  final String schedule;
  final String room;

  const CourseCard({
    Key? key,
    required this.title,
    required this.lecturer,
    required this.schedule,
    required this.room,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          const SizedBox(height: 5),
          Text(lecturer, style: const TextStyle(color: Colors.grey)),
          const SizedBox(height: 10),
          Text(schedule, style: const TextStyle(color: Colors.grey)),
          Text(room, style: const TextStyle(color: Colors.grey)),
        ],
      ),
    );
  }
}