import 'package:flutter/material.dart';

class AttendancePage extends StatelessWidget {
  const AttendancePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          "Daftar Pertemuan",
          style: TextStyle(color: Colors.grey),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFFE3F2FD),
                Colors.white,
              ],
            ),
          ),
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Label Kehadiran Anda
              const Text(
                "Kehadiran Anda:",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5),
              // Grid Kehadiran
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 5,
                ),
                itemCount: 12, // Jumlah pertemuan
                itemBuilder: (context, index) {
                  // Warna simulasi kehadiran
                  final colors = [
                    Colors.green, // Hadir
                    Colors.red, // Alpha
                    Colors.orange, // Telat
                    Colors.yellow, // Izin
                    Colors.blue, // Sakit
                    Colors.grey, // Belum Absen
                  ];
                  return Container(
                    decoration: BoxDecoration(
                      color: colors[index % colors.length], // Warna berulang
                      borderRadius: BorderRadius.circular(5),
                    ),
                  );
                },
              ),
              const SizedBox(height: 5),
              // Kode Warna
              const Text(
                "Kode Warna:",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Wrap(
                spacing: 15,
                runSpacing: 10,
                children: const [
                  StatusIndicator(color: Colors.green, label: "Hadir"),
                  StatusIndicator(color: Colors.red, label: "Alpha"),
                  StatusIndicator(color: Colors.orange, label: "Telat"),
                  StatusIndicator(color: Colors.yellow, label: "Izin"),
                  StatusIndicator(color: Colors.blue, label: "Sakit"),
                  StatusIndicator(color: Colors.grey, label: "Belum Absen"),
                ],
              ),
              const SizedBox(height: 30),
              // Tombol Scan Wajah & QR Code
              Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Aksi Scan Wajah
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        "Scan Wajah",
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      // Aksi Scan QR Code
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        "Scan QR Code",
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class StatusIndicator extends StatelessWidget {
  final Color color;
  final String label;

  const StatusIndicator({Key? key, required this.color, required this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 20,
          height: 20,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        const SizedBox(width: 5),
        Text(label, style: const TextStyle(fontSize: 14)),
      ],
    );
  }
}
