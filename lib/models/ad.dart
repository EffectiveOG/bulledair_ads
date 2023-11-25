class Ad {
  final String id;
  final String title;
  final String description;
  final String imageUrl;
  final String link; // If the ad includes a link to an external website

  Ad({this.id, this.title, this.description, this.imageUrl, this.link});

  // Factory method to create an Ad from a map (e.g., from Firestore data)
  factory Ad.fromMap(Map<String, dynamic> map, String documentId) {
    if (map == null) return null;

    return Ad(
      id: documentId,
      title: map['title'],
      description: map['description'],
      imageUrl: map['imageUrl'],
      link: map['link'],
    );
  }

  // Method to convert Ad into a map, useful for uploading data to Firestore
  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'description': description,
      'imageUrl': imageUrl,
      'link': link,
    };
  }
}
