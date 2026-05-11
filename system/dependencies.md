# Logische Abhängigkeiten

> Welches Paper setzt welches voraus?

---

## Direktabhängigkeiten (Quadrature Line)

> Alle Papers vollständig in `core/papers/` migriert.

```
p01_quadrature
  └──► p02_quadrature
         └──► p03
                └──► p04_semiclassical
                       └──► p05 … p09_superconcentration
                              └──► p10_coercivity_gap
                                     └──► p11_fredholm_microlocal … p13_gap_s
                                            └──► p14_airy_resolvent
                                                   └──► p15_quasimode … p17_cliff
                                                          └──► p18_airy_universality
                                                                 └──► p19 … p21_foundations
                                                                        └──► XXII (Fusion)
```

---

## Direktabhängigkeiten (Weil/CCM Line)

> Nur `p01_weil.tex` migriert. Alle weiteren Papers noch in `prolate-primes-paper`.

```
p01_weil  [= paper1_FINAL.tex, migriert ✅]
  └──► p02_weil  [= paper2_FINAL.tex, ❌ noch nicht migriert]
         └──► p03_weil  [= paper3_FINAL.tex, ❌ noch nicht migriert]
                └──► p04_weil … p08_weil  [_FINAL, ❌ noch nicht migriert]
                       └──► p09_weil … p12_weil  [teils DRAFT, ❌ noch nicht migriert]
                              └──► p13a_weil, p13b_weil, p13cc_weil  [❌ noch nicht migriert]
                                     └──► p14_weil … p17_weil  [❌ noch nicht migriert]
                                            └──► XXII (Fusion)
```

**Empfohlene Migrationsreihenfolge:**
1. Zuerst `paper2_FINAL.tex` – `paper8_FINAL.tex` als `p02_weil.tex` – `p08_weil.tex`
2. Dann `paper13a`, `paper13b`, `paper13cc` (Completeness-Schicht)
3. Zuletzt DRAFT-Dateien (p09–p17) sobald Inhalt stabil

---

## Noch nicht angelegte Verzeichnisse

| Verzeichnis | Inhalt | Priorität |
|---|---|---|
| `core/open/` | O4/O5-Problemdateien aus `prolate-gram-coercivity` (6 Dateien) | Mittel |
| `numerics/` | Numerische Evidenz aus beiden Quell-Repos | Niedrig |
| `p22/` | Paper XXII als Research Module | Hoch |

---

## Lemmata als Abhängigkeiten

| Lemma | Verwendet in | Migriert |
|---|---|---|
| `bridge_lemma.tex` | p16, XXII | ✅ |
| `phase_nondeg_lemma.tex` | O3, p03 | ✅ |
| `airy_discrete_stability_lemma.tex` | p14, p18 | ✅ |
| `bstrong_reduction_lemma.tex` | p10–p13 | ✅ |
| `olver_growth_lemma.tex` | p14–p17 | ✅ |
| `structural_stability_metatheorem.tex` | p18–p21, XXII | ✅ |
| `O4_B2a_langer_amplitude_control.tex` | O4-Abschluss, p10 | ✅ |
| `O4_uniformity_guard.tex` | O4-Abschluss | ✅ |
| `O5_transfer_lemma.tex` | O5-Abschluss, p18 | ✅ |
| `O5_spectral_cluster_stability.tex` | O5-Abschluss, p18–p20 | ✅ |
| `O4_B2_T2_triple_scaling.tex` | O4-Abschluss | ❌ noch nicht migriert |
| `O4_B2_airy_offdiag_decay.tex` | p14 | ❌ noch nicht migriert |
| `O5_B2_airy_sampling_coercivity.tex` | O5-Abschluss | ❌ noch nicht migriert |
| `O5_Ec_operator_norm.tex` | O5-Abschluss | ❌ noch nicht migriert |

---

## Offene Probleme als Abhängigkeiten

| Problem | Blockiert | Status |
|---|---|---|
| O4 (Frame Stability) | p10+, XXII | ✅ CLOSED (9. Mai 2026) |
| O5 (Airy Gap) | p14, p18, XXII | ✅ CLOSED (9. Mai 2026) |

---

## State Transition Rules

Ein Artefakt darf von `core/open/` nach `core/lemmas/` migrieren, wenn:
1. **Vollständiger Beweis** (alle Schritte lückenlos, keine FIX-Marker)
2. **Unabhängiger Status** (kein externer Axiom-Input nötig außer dokumentierten)
3. **Interface-Kompatibilität** (Notation konsistent mit p01_quadrature-Präambel)

Ein Artefakt darf von `core/lemmas/` nach `core/papers/` migrieren, wenn:
1. Es sich in ≥2 Papers als Baustein bewährt hat
2. Es einen eigenen Abstract-würdigen Hauptsatz enthält
