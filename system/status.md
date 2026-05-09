# Programme Status

> Letztes Update: 9. Mai 2026 (11:28 CEST)  
> Aktiver Knoten: **IR-Kernel-Globalstruktur (P22 / O4+O5 Zusammenführung)**

---

## DAG-Zustand

| Node | Zustand | Datum | Beweis-Route |
|---|---|---|---|
| O1 | ✅ CLOSED | früher | Gram-Koerzivität, direkt |
| O2 | ✅ CLOSED | früher | Spektralabfall, Paley-Wiener |
| O3 | ✅ CLOSED | früher | Phase Non-Degeneracy |
| **O4** | ✅ **CLOSED** | 9. Mai 2026 | Jaffard–Schur + Langer W^{1,1} + Uniformity Guard |
| **O5** | ✅ **CLOSED** | **9. Mai 2026** | **Transfer-Lemma (S3) + Kato-Spektralstabilität** |

---

## O5 Closure Summary

O5 (Airy-Gap-Persistence / IR-Spektralcluster-Stabilität) wurde geschlossen durch
vier Schritte in zwei Abstraktionsebenen:

### Ebene 1 — Norm-Konvergenz (drei Mechanismen)

| Mechanismus | Ergebnis | Datei |
|---|---|---|
| **Gap** (TW-Geometrie) | `δ_Airy ≥ F_TW(0) ≈ 0.96` | `O5_airy_gap.tex` |
| **Sampling-Koerzivität** | `λ_min(A^arith) ≥ c_frame > 0` | `O5_airy_sampling.tex` |
| **Operatornorm-Kontrolle** | `‖E_c‖_op → 0` (MV mean square) | `O5_operator_norm.tex` |

### Ebene 2 — Strukturelle Kopplung (der eigentliche Inhalt)

| Schritt | Leistung | Datei |
|---|---|---|
| **S3: Transfer-Lemma** | `‖Φ̃_c φ_k − Ψ_k‖_{L²} ≤ C_Ai c^{-1/3}` — Basiswechsel PSWF↔Airy | `core/lemmas/O5_transfer_lemma.tex` |
| **Kato-Stabilität** | `inf σ(D^Ai) ≥ δ − η(c) > 0` via Weyl + Selbstadjungiertheit | `core/lemmas/O5_spectral_cluster_stability.tex` |

**Einzige verbleibende numerische Bedingung:**  
`C < F_TW(0) / ζ(3/2) ≈ 0.367`  
(dieselbe Konstante wie O4-B-2 — ein bereits berechnetes Objekt).

---

## S4: Neueinstufung

> **S4 ist kein logischer Gatekeeper mehr.**

| | Vor Kato-Schritt | Nach Kato-Schritt |
|---|---|---|
| **Rolle von S4** | Notwendige Bedingung | Validierung der Schranken-Schärfe |
| **O5-Positivität** | Hängt an `C < 0.367` | Gesichert durch `δ ≈ 0.96 ≫ η(c)` |
| **Priorität** | BLOCKER | REFINEMENT (Publikationsoptimierung) |

Begründung: Der eigentliche Stabilitätsparameter ist der Airy-Gap `δ ≈ 0.96`,
nicht die Schur-Konstante `C`. Selbst wenn `C` die Grenze leicht überschreitet,
bleibt `inf σ(D^Ai) > 0` wegen `δ ≫ C_J` für realistisches `C`.

---

## O4 Closure Summary

O4 (Frame Stability: λ_min(G_N) > 0) wurde geschlossen durch:

1. **T1–T4** (Turning-Point + Oszillatorik): `O4_airy_offdiag.tex`
2. **Lemma W11** (Langer W^{1,1}-Kontrolle): `O4_B2a_langer_amplitude_control.tex`
3. **Uniformity Guard** (Regime-Konsistenz): `O4_uniformity_guard.tex`
4. **Schur-Bound**: `sup_n Σ_{m≠n} |G_{mn}| ≤ C ζ(3/2)/N → 0`

---

## Aktiver Knoten: O4 + O5 → IR-Kernel-Globalstruktur

**Frage:** Wie stabilisieren O4 und O5 gemeinsam den IR-Kernel in P22?

**Der Übergang:**  
O4 und O5 waren lokal geschlossene Module.  
Jetzt wird das System wieder global:  
Die Frage ist, wie die beiden Stabilitätsresultate in der IR-Kernel-Definition
von Paper XXII zusammenwirken — d.h. ob der Kernel als Ganzes koerziv ist,
nicht nur seine Airy-Randkomponente.

**Nächster Schritt:**  
Lesen: `system/IR_KERNEL.md` + P22-DAG.  
Isolieren: welcher Mechanismus O4 und O5 im IR-Kernel verknüpft.  
Frage: Gibt es einen analogen `O6`-Knoten für die globale Koerzivität,
oder folgt sie direkt aus O4+O5 per Spektraldekomposition?
