import 'package:flutter/material.dart';

class MusicClassifications {
  final String title;
  final IconData icon;

  const MusicClassifications({@required this.title, this.icon});
}

const List<MusicClassifications> musicClass = <MusicClassifications>[
  MusicClassifications(title: "Songs", icon: Icons.ac_unit_outlined),
  MusicClassifications(title: "Playlists"),
  MusicClassifications(title: "Artists"),
  MusicClassifications(title: "Albums"),
  MusicClassifications(title: "Genre"),
];