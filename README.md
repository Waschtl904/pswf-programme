# pswf-programme

**PSWF Gram Coercivity — unified proof programme**

Dieses Repository vereinigt zwei bisher getrennte Beweislinien
für denselben Zielsatz (Gram-Koerzitivität auf dem PSWF-Unterraum)
in einer gemeinsamen, klar geschichteten Struktur.

---

## Zwei Beweislinien

| Linie | Fundament | Schlüsselobjekt | Papers |
|---|---|---|---|
| **Quadrature** | Sampling-Defektgeometrie, DSTP-Axiom | `E_N` Fehlermatrix, Bulk/Turning-Zerlegung | p01_quadrature, p02_quadrature, p03–p21 |
| **Weil** | Chebyshev-System, Kulikov-Konstante | Weil-Zerlegung `Q = ⟨Kf,f⟩ + R_N` | p01_weil |

Die beiden Linien **fusionieren im IR-Kernel** (Paper XXII) —
siehe `system/IR_KERNEL.md` und `p22/`.

---

## Struktur

```
pswf-programme/
│
├── README.md                 ← diese Datei
│
├── core/
│   ├── papers/               ← fertige / aktiv bearbeitete Papers (p01–p21)
│   ├── lemmas/               ← eigenständige, wiederverwendbare Lemmata
│   └── open/                 ← aktive offene Probleme (O4, O5)
│
├── system/                   ← Steuerungsebene (kein Beweis, aber Beweissystem)
│   ├── program_map.md        ← Gesamtübersicht Programmlinien + Abhängigkeiten
│   ├── IR_KERNEL.md          ← semantischer Kern (Fusionspunkt Quadrature/Weil)
│   ├── dependencies.md       ← logische Abhängigkeiten zwischen Papers
│   └── status.md             ← aktueller Projektstatus
│
└── p22/                      ← Sonderfall: XXII ist kein Paper, sondern
    │                           ein mehrschichtiges Research Module
    ├── abstract.tex
    ├── architecture.tex
    ├── ir_kernel.md
    └── status.md
```

---

## Täglich relevante Dateien

- **Wo bin ich?** → `system/status.md`
- **Was hängt wovon ab?** → `system/dependencies.md`
- **O4 / O5?** → `core/open/`
- **IR-Kernel / XXII?** → `p22/` + `system/IR_KERNEL.md`

---

## Migrationsregeln (kanonische Entscheidungen)

| Datei (Quellrepo) | Ziel | Begründung |
|---|---|---|
| `prolate-gram-coercivity/paper1.tex` | `core/papers/p01_quadrature.tex` | DSTP-Linie, May 2026, kanonisch |
| `prolate-primes-paper/paper1_FINAL.tex` | `core/papers/p01_weil.tex` | Weil/CCM-Linie, eigenständige Beweiswelt |
| `paper2_quadrature.tex` | `core/papers/p02_quadrature.tex` | evolutionär dominant über paper2.tex |
| `paper2.tex` | *archive im Quellrepo* | pre-refinement snapshot |
| `XXII_*.tex / *.md` | `p22/` | epistemische Schichtung erhalten |
| `program_map.md` | `system/program_map.md` | Steuerungsebene |
| `XXII_ir_kernel.md` | `system/IR_KERNEL.md` + `p22/ir_kernel.md` | doppelt referenziert |
| `PROMPT.md`, `context_summary.md`, `paper20_context_prompt.md` | *nicht migrieren* | AI-Sitzungsartefakte, kein Beweisinhalt |
| `HEBELSTELLE.md`, `PHASE_NONDEG_NOTE.md` | *nicht migrieren* | Inhalt in Lemmata absorbiert |
