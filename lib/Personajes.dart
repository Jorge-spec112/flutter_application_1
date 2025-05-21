class Personaje {
  final String nombre;
  final String rol;
  final String imagen;
  final String recompensa;

  Personaje({
    required this.nombre,
    required this.rol,
    required this.imagen,
    required this.recompensa,
  });
}

final List<Personaje> tripulacionLuffy = [
  Personaje(
    nombre: 'Monkey D. Luffy',
    rol: 'Capitán',
    recompensa: '3,000,000,000 Berries',
    imagen: 'assets/imagenes/luffy.png',
  ),
  Personaje(
    nombre: 'Roronoa Zoro',
    rol: 'Espadachín',
    recompensa: '1,111,000,000 Berries',
    imagen: 'assets/zoro.png',
  ),
  Personaje(
    nombre: 'Nami',
    rol: 'Navegante',
    recompensa: '366,000,000 Berries',
    imagen: 'assets/nami.png',
  ),
  Personaje(
    nombre: 'Usopp',
    rol: 'Francotirador',
    recompensa: '500,000,000 Berries',
    imagen: 'assets/usopp.png',
  ),
  Personaje(
    nombre: 'Sanji',
    rol: 'Cocinero',
    recompensa: '1,032,000,000 Berries',
    imagen: 'assets/sanji.png',
  ),
  Personaje(
    nombre: 'Tony Tony Chopper',
    rol: 'Médico',
    recompensa: '1,000 Berries',
    imagen: 'assets/chopper.png',
  ),
  Personaje(
    nombre: 'Nico Robin',
    rol: 'Arqueóloga',
    recompensa: '930,000,000 Berries',
    imagen: 'assets/robin.png',
  ),
  Personaje(
    nombre: 'Franky',
    rol: 'Carpintero',
    recompensa: '394,000,000 Berries',
    imagen: 'assets/franky.png',
  ),
  Personaje(
    nombre: 'Brook',
    rol: 'Músico',
    recompensa: '383,000,000 Berries',
    imagen: 'assets/brook.png',
  ),
  Personaje(
    nombre: 'Jinbe',
    rol: 'Timonel',
    recompensa: '1,100,000,000 Berries',
    imagen: 'assets/jinbe.png',
  ),
];
