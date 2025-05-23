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
    imagen: 'assets/imagenes/zoro.png',
  ),
  Personaje(
    nombre: 'Nami',
    rol: 'Navegante',
    recompensa: '366,000,000 Berries',
    imagen: 'assets/imagenes/nami.png',
  ),
  Personaje(
    nombre: 'Usopp',
    rol: 'Francotirador',
    recompensa: '500,000,000 Berries',
    imagen: 'assets/imagenes/ussop.png',
  ),
  Personaje(
    nombre: 'Sanji',
    rol: 'Cocinero',
    recompensa: '1,032,000,000 Berries',
    imagen: 'assets/imagenes/sanji.png',
  ),
  Personaje(
    nombre: 'Tony Tony Chopper',
    rol: 'Doctor',
    recompensa: '1,000 Berries',
    imagen: 'assets/imagenes/choper.png',
  ),
  Personaje(
    nombre: 'Nico Robin',
    rol: 'Arqueóloga',
    recompensa: '930,000,000 Berries',
    imagen: 'assets/imagenes/robin.png',
  ),
  Personaje(
    nombre: 'Franky',
    rol: 'Carpintero',
    recompensa: '394,000,000 Berries',
    imagen: 'assets/imagenes/franky.png',
  ),
  Personaje(
    nombre: 'Brook',
    rol: 'Músico',
    recompensa: '383,000,000 Berries',
    imagen: 'assets/imagenes/brook.png',
  ),
  Personaje(
    nombre: 'Jinbe',
    rol: 'Timón',
    recompensa: '1,100,000,000 Berries',
    imagen: 'assets/imagenes/jinbe.png',
  ),
];
