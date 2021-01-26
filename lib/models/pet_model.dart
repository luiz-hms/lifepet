class PetModel {
  String id, name, gender, imageUrl, description, color, bio;
  int age;

  PetModel({
    this.id,
    this.name,
    this.gender,
    this.imageUrl,
    this.description,
    this.color,
    this.bio,
    this.age,
  });
}

var pet = [
  PetModel(
      name: 'Toto',
      imageUrl: 'assets/images/arnaldo.png',
      description: 'cachorro',
      age: 2,
      gender: 'Macho',
      bio: 'cachorro bonito e sudavel',
      id: '1',
      color: 'preto'),
  PetModel(
      name: 'Kiba',
      imageUrl: 'assets/images/kiba.png',
      description: 'cachoooorro',
      age: 2,
      gender: 'Macho',
      bio: 'cachorro bonito e sudavel',
      id: '2',
      color: 'Branco'),
];
