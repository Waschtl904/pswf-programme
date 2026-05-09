# Programme Map

> Steuerungsdokument — beschreibt das Beweissystem, ist kein Teil des Beweises.

## Programmlinien

### Quadrature Line
- **Fundament:** Sampling-Defektgeometrie, DSTP-Axiom (Ax.5)
- **Kernidee:** Gram-Defekt `E_N` = Quadraturfehler; Bulk/Turning-Zerlegung kontrolliert Abfall
- **Papers:** p01_quadrature → p02_quadrature → p03 → … → p21
- **Offene Knoten:** O4 (Frame Stability), O5 (Airy Gap)
- **Abhängig von:** phase_nondeg_lemma, airy_discrete_stability_lemma, bridge_lemma

### Weil Line
- **Fundament:** Chebyshev-System-Struktur von V_N, Kulikov-Konstante κ_c
- **Kernidee:** Weil-Zerlegung `Q(f) = ⟨Kf,f⟩ + R_N` mit `R_N = O(e^{-δ'N})`
- **Papers:** p01_weil
- **Verbindung:** CCM2025-Programm (Connes–Consani–Moscovici)
- **Offene Knoten:** N→∞ Limit (Paper II der Weil-Linie)

## Fusionspunkt

Beide Linien laufen im **IR-Kernel (Paper XXII)** zusammen.
Der IR-Kernel ist die Stelle, an der:
- DSTP-Axiom ↔ Weil-Zerlegung semantisch äquivalent werden
- Quadratur-Stabilität ↔ spektrale Zerfallsrate verbunden werden

Siehe: `system/IR_KERNEL.md`, `p22/`

## Beweisgraph (topologisch)

```
p01_quadrature ──┐
                  ├──► p02_quadrature ──► p03 ──► … ──► p21 ──► XXII (Fusion)
p01_weil      ──┘                                              ↑
                                                         IR-Kernel
```

## Lemma-Abhängigkeiten

| Lemma | Verwendet in |
|---|---|
| `phase_nondeg_lemma` | p01_quadrature, p02_quadrature, p10+ |
| `airy_discrete_stability_lemma` | O5, p14, p18 |
| `bridge_lemma` | p16, XXII |
| `olver_growth_lemma` | p04, p06, p14 |
| `bstrong_reduction_lemma` | p12, p13 |
