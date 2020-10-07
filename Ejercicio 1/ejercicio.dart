import 'dart:collection';

class Spotify {
  Map<int, Artist> artistas;
  spotify(Artist artistas) {
    this.artistas = {1: artistas};
  }
}

class Artist {
  String nombre;
  String trayectoria;
  Map<int, dynamic> albums;

  Artist(String nombre, String trayectoria, Album albums) {
    this.nombre = nombre;
    this.trayectoria = trayectoria;
    this.albums = {1: albums};
  }
}

class Album {
  String fecha;
  double duracion;
  Map<int, dynamic> songs;

  Album(String fecha, double duracion, int numero, String name, String lyrics,
      double duracioncancion) {
    this.fecha = fecha;
    this.duracion = duracion;
    this.songs = {
      numero: {name, duracioncancion, lyrics}
    };
  }

  void addSong(int numero, String name, String lyrics, double duracion) {
    this.songs.addAll({
      numero: {name, duracion, lyrics}
    });
  }

  void showSongs() {
    print("La cancion es $this.songs");
    print("La cancion es $this.songs[2]");
  }
}

void main() {
  Album blackandwhite = new Album(
      "1997", 35.3, 1, "Yes no maibe i dont know", "AAAAAAAAAAAAA", 20);
  print(blackandwhite.fecha);
  blackandwhite.addSong(2, "WAAAAAAAAAAAA", "EEEEEE", 25);
  blackandwhite.songs.forEach((key, val) {
    print('{ key: $key, value: $val}');
  });
  Artist kiss = new Artist("kiss", "20", blackandwhite);
  print("\n");
  kiss.albums.forEach((key, value) {
    print('{ key: $key, value: $value}');
  });
}
