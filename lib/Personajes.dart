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
    imagen: 'assets/imagenes/luffy.png',
    recompensa: '3,000,000,000 Berries',
  ),
  Personaje(
    nombre: 'Roronoa Zoro',
    rol: 'Espadachín',
    imagen: 'assets/imagenes/zoro.png',
    recompensa: '1,111,000,000 Berries',
  ),
  Personaje(
    nombre: 'Nami',
    rol: 'Navegante',
    imagen: 'assets/imagenes/nami.png',
    recompensa: '366,000,000 Berries',
  ),
  Personaje(
    nombre: 'Usopp',
    rol: 'Francotirador',
    imagen: 'assets/imagenes/ussop.png',
    recompensa: '500,000,000 Berries',
  ),
  Personaje(
    nombre: 'Sanji',
    rol: 'Cocinero',
    imagen: 'assets/imagenes/sanji.png',
    recompensa: '1,032,000,000 Berries',
  ),
  Personaje(
    nombre: 'Tony Tony Chopper',
    rol: 'Médico',
    imagen: 'assets/imagenes/chopper.png',
    recompensa: '1,000 Berries',
  ),
  Personaje(
    nombre: 'Nico Robin',
    rol: 'Arqueóloga',
    imagen: 'assets/imagenes/robin.png',
    recompensa: '930,000,000 Berries',
  ),
  Personaje(
    nombre: 'Franky',
    rol: 'Carpintero',
    imagen: 'assets/imagenes/franky.png',
    recompensa: '394,000,000 Berries',
  ),
  Personaje(
    nombre: 'Brook',
    rol: 'Músico',
    imagen: 'assets/imagenes/brook.png',
    recompensa: '383,000,000 Berries',
  ),
  Personaje(
    nombre: 'Jinbe',
    rol: 'Timonel',
    imagen: 'assets/imagenes/jinbe.png',
    recompensa: '1,100,000,000 Berries',
  ),
];
