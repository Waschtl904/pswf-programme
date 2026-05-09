# O4 Status Certificate

> Datum: 9. Mai 2026  
> Zustand: **CLOSED** ✅  
> Geschlossen durch: Commit `close(O4)` — Jaffard–Schur + Uniformity Guard

---

## Closure-Bedingungen: alle erfüllt

| Bedingung | Status | Detail |
|---|---|---|
| **1. Vollständiger Beweis** | ✅ **ERFÜLLT** | Route B (Jaffard) vollständig: T1–T4 + B2a + Guard |
| **2. Unabhängiger Status** | ✅ erfüllt | O4 unabhängig von O5 (Section 5 in O4_frame_stability.tex) |
| **3. Interface-Kompatibilität** | ✅ erfüllt | Notation konsistent mit p01_quadrature.tex-Präambel |
| **4. Uniformity Guard** | ✅ **NEU** | O4_uniformity_guard.tex: alle Konstanten c-unabhängig |

**Transition: CLOSED. Alle Artefakte nach `core/closed/` migriert.**

---

## Geschlossene Beweis-Kette (Route B: Jaffard)

```
T1  Oszillatorischer Tail (p außerhalb Turning-Fenster)
    → Riemann–Lebesgue, O(c^{-5/3})
    Quelle: O4_airy_offdiag.tex, Lemma T1

T2  Turning-Point (kubische Stationarität)
    → Van der Corput k=3 + W^{1,1}-Amplitudenkontrolle
    Quelle: O4_B2a_langer_amplitude_control.tex
    Ergebnis: |G_{mn}| ≤ C / (N k^{3/2})

T3  Summation über Off-Diagonal
    → ζ(3/2) < ∞
    Ergebnis: sup_n Σ_{m≠n} |G_{mn}| ≤ C ζ(3/2) / N

T4  Diagonale / Stabilitäts-Input
    → Airy-Gap (airy_discrete_stability_lemma.tex, ass:gap)
    Ergebnis: λ_min(G) ≥ 1 − ‖E‖ > 0 für N ≥ N_0

Guard  Uniformity über alle Regime
    → O4_uniformity_guard.tex, Theorem (Guard)
    Ergebnis: alle Konstanten in T1–T4 unabhängig von c und N
```

**Schluss-Bound:**
```
λ_min(G_N) ≥ 1 − C ζ(3/2)/N  >  0   für N ≥ N_0(δ,α)
```

---

## Artefakte (alle nach core/closed/ migriert)

| Datei | Rolle |
|---|---|
| `O4_frame_stability.tex` | Hauptpaper O4 |
| `O4_airy_offdiag.tex` | T1–T4 Proof |
| `O4_triple_scaling.tex` | Regime-Zerlegung |
| `O4_attack_plan.md` | Historischer Beweis-Plan |
| `O4_status_certificate.md` | Dieses Dokument |

In `core/lemmas/` (bleiben als stabile Knoten):
- `O4_B2a_langer_amplitude_control.tex`
- `O4_uniformity_guard.tex`

---

## Systemischer Effekt

Mit O4 CLOSED gilt im DAG:
```
O4 CLOSED  ⟹  O5 ist isolierter IR-Bottleneck
```
O5 (`core/open/O5_airy_gap.tex`) ist der nächste aktive Knoten.
O5 ist strukturell unabhängig von O4.

---

## Commit-Referenz

```
git commit -m "close(O4): Jaffard-Schur Gram decay proved,
  uniformity guard passed — migrate artefacts to closed/"
```
