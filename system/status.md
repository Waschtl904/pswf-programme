# Programme Status

> Letztes Update: 11. Mai 2026  
> Aktiver Knoten: **IR-Kernel-Globalstruktur (P22 / O4+O5 Zusammenführung)**

---

## Migrationsübersicht

Dieses Repo (`pswf-programme`) fusioniert zwei ältere Repos:

| Quell-Repo | Inhalt | Migrationsstatus |
|---|---|---|
| `prolate-gram-coercivity` | Quadrature-Linie P01–P21, Lemmata, O4/O5-Materialien | ✅ **Weitgehend vollständig** |
| `prolate-primes-paper` | Weil/CCM-Linie Paper I–XVII+ | ⚠️ **Unvollständig — nur P01 migriert** |

---

## Migrationsstatus: `core/papers/`

### Quadrature-Linie (aus `prolate-gram-coercivity`) — ✅ vollständig

| Datei in `core/papers/` | Ursprungsdatei | Status |
|---|---|---|
| `p01_quadrature.tex` | erstes Paper Quadrature | ✅ migriert |
| `p02_quadrature.tex` | zweites Paper Quadrature | ✅ migriert |
| `p03.tex` | p03 | ✅ migriert |
| `p04_semiclassical.tex` | p04 | ✅ migriert |
| `p05.tex` – `p09_superconcentration.tex` | p05–p09 | ✅ migriert |
| `p10_coercivity_gap.tex` | p10 | ✅ migriert |
| `p11_fredholm_microlocal.tex` – `p13_gap_s.tex` | p11–p13 | ✅ migriert |
| `p14_airy_resolvent.tex` | p14 | ✅ migriert |
| `p15_quasimode.tex` – `p17_cliff.tex` | p15–p17 | ✅ migriert |
| `p18_airy_universality.tex` | p18 | ✅ migriert |
| `p19_quantitative_rate.tex` – `p21_foundations.tex` | p19–p21 | ✅ migriert |

### Weil/CCM-Linie (aus `prolate-primes-paper`) — ⚠️ unvollständig

| Soll-Datei in `core/papers/` | Ursprungsdatei | Status |
|---|---|---|
| `p01_weil.tex` | `paper1_FINAL.tex` | ✅ migriert |
| `p02_weil.tex` | `paper2_FINAL.tex` | ❌ fehlt |
| `p03_weil.tex` | `paper3_FINAL.tex` | ❌ fehlt |
| `p04_weil.tex` | `paper4_FINAL.tex` | ❌ fehlt |
| `p05_weil.tex` – `p08_weil.tex` | `paper5_FINAL.tex` – `paper8_FINAL.tex` | ❌ fehlen |
| `p09_weil.tex` – `p17_weil.tex` | `paper9_DRAFT.tex` – `paper17_FINAL.tex` | ❌ fehlen (teils DRAFT) |
| `p13a_weil.tex`, `p13b_weil.tex`, `p13cc_weil.tex` | `paper13a.tex`, `paper13b.tex`, `paper13cc.tex` | ❌ fehlen |
| `p16_xvi.tex`, `p17_xvii.tex` | `paper_xvi_draft.tex`, `paper_xvii.tex` | ❌ fehlen |

**Empfohlene Migrationsreihenfolge:** Zuerst alle `_FINAL`-Dateien (paper2–paper8), dann erst die DRAFT-Dateien sobald sie stabil sind.

---

## Migrationsstatus: `core/lemmas/`

### Vorhanden ✅

| Datei | Inhalt |
|---|---|
| `bridge_lemma.tex` | Bridge-Lemma (p16) |
| `phase_nondeg_lemma.tex` | Phase Non-Degeneracy (O3) |
| `airy_discrete_stability_lemma.tex` | Diskrete Airy-Stabilität |
| `ax5_independence_remark.tex` | AX5 Unabhängigkeitsbemerkung |
| `bstrong_reduction_lemma.tex` | Starke Reduktion (B-starke Kontrolle) |
| `olver_growth_lemma.tex` | Olver-Wachstumslemma |
| `structural_stability_metatheorem.tex` | Strukturelles Stabilitäts-Metatheorem |
| `O4_B2a_langer_amplitude_control.tex` | Langer W^{1,1}-Amplitudenkontrolle (O4) |
| `O4_uniformity_guard.tex` | Uniformity Guard (O4) |
| `O5_transfer_lemma.tex` | Transfer-Lemma S3: PSWF↔Airy-Basiswechsel (O5) |
| `O5_spectral_cluster_stability.tex` | Kato-Spektralcluster-Stabilität (O5) |

### Noch nicht migriert ❌ (aus `prolate-gram-coercivity` Root)

| Soll-Datei | Ursprungsdatei |
|---|---|
| `O4_B2_T2_triple_scaling.tex` | `O4_B2_T2_triple_scaling.tex` |
| `O4_B2_airy_offdiag_decay.tex` | `O4_B2_airy_offdiag_decay.tex` |
| `O4_frame_stability_problem.tex` | `O4_frame_stability_problem.tex` |
| `O5_B2_airy_sampling_coercivity.tex` | `O5_B2_airy_sampling_coercivity.tex` |
| `O5_Ec_operator_norm.tex` | `O5_Ec_operator_norm.tex` |
| `O5_airy_gap_problem.tex` | `O5_airy_gap_problem.tex` |

---

## Noch nicht migrierte Begleitdateien

| Datei | Ursprungs-Repo | Soll-Ziel |
|---|---|---|
| `trilogy_dag.tex` | `prolate-gram-coercivity` | `system/` oder `p22/` |
| `paper22_dag.tex`, `paper22_outline.tex` | `prolate-gram-coercivity` | `p22/` |
| `fold_model.tex` | `prolate-primes-paper` | `core/` oder `p22/` |
| `section5_numerical_evidence.tex` | `prolate-primes-paper` | `numerics/` (noch nicht angelegt) |
| `numerics/`-Verzeichnis | beide Repos | `numerics/` (noch nicht im Repo) |

---

## DAG-Zustand der offenen Probleme

| Node | Zustand | Datum | Beweis-Route |
|---|---|---|---|
| O1 | ✅ CLOSED | früher | Gram-Koerzivität, direkt |
| O2 | ✅ CLOSED | früher | Spektralabfall, Paley-Wiener |
| O3 | ✅ CLOSED | früher | Phase Non-Degeneracy |
| **O4** | ✅ **CLOSED** | 9. Mai 2026 | Jaffard–Schur + Langer W^{1,1} + Uniformity Guard |
| **O5** | ✅ **CLOSED** | 9. Mai 2026 | Transfer-Lemma (S3) + Kato-Spektralstabilität |

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

### Ebene 2 — Strukturelle Kopplung

| Schritt | Leistung | Datei |
|---|---|---|
| **S3: Transfer-Lemma** | `‖Φ̃_c φ_k − Ψ_k‖_{L²} ≤ C_Ai c^{-1/3}` | `core/lemmas/O5_transfer_lemma.tex` |
| **Kato-Stabilität** | `inf σ(D^Ai) ≥ δ − η(c) > 0` via Weyl + Selbstadjungiertheit | `core/lemmas/O5_spectral_cluster_stability.tex` |

**Einzige verbleibende numerische Bedingung:**  
`C < F_TW(0) / ζ(3/2) ≈ 0.367`

---

## O4 Closure Summary

O4 (Frame Stability: λ_min(G_N) > 0) wurde geschlossen durch:

1. **T1–T4** (Turning-Point + Oszillatorik): `O4_airy_offdiag.tex`
2. **Lemma W11** (Langer W^{1,1}-Kontrolle): `core/lemmas/O4_B2a_langer_amplitude_control.tex`
3. **Uniformity Guard**: `core/lemmas/O4_uniformity_guard.tex`
4. **Schur-Bound**: `sup_n Σ_{m≠n} |G_{mn}| ≤ C ζ(3/2)/N → 0`

---

## S4: Neueinstufung

> **S4 ist kein logischer Gatekeeper mehr.**

| | Vor Kato-Schritt | Nach Kato-Schritt |
|---|---|---|
| **Rolle von S4** | Notwendige Bedingung | Validierung der Schranken-Schärfe |
| **O5-Positivität** | Hängt an `C < 0.367` | Gesichert durch `δ ≈ 0.96 ≫ η(c)` |
| **Priorität** | BLOCKER | REFINEMENT |

---

## Aktiver Knoten: O4 + O5 → IR-Kernel-Globalstruktur

**Frage:** Wie stabilisieren O4 und O5 gemeinsam den IR-Kernel in P22?

**Nächster Schritt:**  
Lesen: `system/IR_KERNEL.md` + `p22/`-Struktur.  
Frage: Gibt es einen analogen `O6`-Knoten für die globale Koerzivität,
oder folgt sie direkt aus O4+O5 per Spektraldekomposition?
