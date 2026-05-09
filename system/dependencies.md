# Logische Abhängigkeiten

> Welches Paper setzt welches voraus?

## Direktabhängigkeiten (Quadrature Line)

```
p01_quadrature
  └──► p02_quadrature
         └──► p03
                └──► p04_semiclassical
                       └──► p05 … p09
                              └──► p10_coercivity_gap
                                     └──► p11 … p13
                                            └──► p14_airy_resolvent
                                                   └──► p15 … p17
                                                          └──► p18_airy_universality
                                                                 └──► p19 … p21
                                                                        └──► XXII
```

## Direktabhängigkeiten (Weil Line)

```
p01_weil
  └──► [Paper II der Weil-Linie — noch nicht im Repo]
         └──► XXII (Fusion)
```

## Offene Probleme als Abhängigkeiten

| Problem | Blockiert |
|---|---|
| O4 (Frame Stability) | p10+, XXII |
| O5 (Airy Gap) | p14, p18, XXII |

## State Transition Rules

Ein Artefakt darf von `open/` nach `core/lemmas/` migrieren, wenn:
1. **Vollständiger Beweis** (alle Schritte lückenlos, keine FIX-Marker)
2. **Unabhängiger Status** (kein externer Axiom-Input nötig außer dokumentierten)
3. **Interface-Kompatibilität** (Notation konsistent mit p01_quadrature-Präambel)

Ein Artefakt darf von `core/lemmas/` nach `core/papers/` migrieren, wenn:
1. Es sich in ≥2 Papers als Baustein bewährt hat
2. Es einen eigenen Abstract-würdigen Hauptsatz enthält
