void main() {
  // Estructura: [liga][equipo][temporada][dato]
  // dato: [nombre, ciudad, puntos, goles marcados, goles recibidos]

  List<List<List<List<dynamic>>>> futbol = [
    // Liga 0: Premier League
    [
      // Equipo 0: Manchester City
      [
        // Temporada 0: 2022-23
        ["Manchester City", "Manchester", 89, 94, 33],
        // Temporada 1: 2023-24
        ["Manchester City", "Manchester", 91, 96, 34],
      ],
      // Equipo 1: Arsenal
      [
        ["Arsenal", "Londres", 84, 88, 43],
        ["Arsenal", "Londres", 89, 91, 29],
      ],
    ],
    // Liga 1: La Liga
    [
      // Equipo 0: Real Madrid
      [
        ["Real Madrid", "Madrid", 78, 75, 36],
        ["Real Madrid", "Madrid", 95, 87, 26],
      ],
      // Equipo 1: Barcelona
      [
        ["Barcelona", "Barcelona", 88, 70, 20],
        ["Barcelona", "Barcelona", 85, 79, 44],
      ],
    ],
  ];

  // Nombres descriptivos para índices
  const ligas = ["Premier League", "La Liga"];
  const temporadas = ["2022-23", "2023-24"];
  const campos = [
    "Nombre",
    "Ciudad",
    "Puntos",
    "Goles marcados",
    "Goles recibidos",
  ];

  // ── Recorrido con for clásico ──────────────────────────────────
  print("╔══════════════════════════════════════════════╗");
  print("║  RECORRIDO CON FOR CLÁSICO (4 dimensiones)  ║");
  print("╚══════════════════════════════════════════════╝\n");

  for (int i = 0; i < futbol.length; i++) {
    print("🏆 Liga: ${ligas[i]}");
    for (int j = 0; j < futbol[i].length; j++) {
      print("  ⚽ Equipo ${j + 1}:");
      for (int k = 0; k < futbol[i][j].length; k++) {
        print("    📅 Temporada: ${temporadas[k]}");
        for (int l = 0; l < futbol[i][j][k].length; l++) {
          print("       ${campos[l]}: ${futbol[i][j][k][l]}");
        }
      }
    }
    print("");
  }

  // ── Recorrido con for-in ───────────────────────────────────────
  print("╔════════════════════════════════════════════╗");
  print("║  RECORRIDO CON FOR-IN (4 dimensiones)     ║");
  print("╚════════════════════════════════════════════╝\n");

  int ligaIdx = 0;
  for (var liga in futbol) {
    print("🏆 Liga: ${ligas[ligaIdx]}");
    int equipoIdx = 0;
    for (var equipo in liga) {
      int tempIdx = 0;
      for (var temporada in equipo) {
        print("  ⚽ ${temporada[0]} | 📅 ${temporadas[tempIdx]}");
        for (int d = 0; d < temporada.length; d++) {
          print("     ${campos[d]}: ${temporada[d]}");
        }
        tempIdx++;
      }
      equipoIdx++;
    }
    ligaIdx++;
    print("");
  }

  // ── forEach con lambda ─────────────────────────────────────────
  print("╔════════════════════════════════════════════╗");
  print("║  RECORRIDO CON FOREACH + LAMBDA           ║");
  print("╚════════════════════════════════════════════╝\n");

  futbol.asMap().forEach((iLiga, liga) {
    liga.asMap().forEach((iEquipo, equipo) {
      equipo.asMap().forEach((iTemp, datos) {
        print(
          "${ligas[iLiga]} | ${datos[0]} | ${temporadas[iTemp]} | "
          "Puntos: ${datos[2]} | GF: ${datos[3]} | GC: ${datos[4]}",
        );
      });
    });
  });
}
