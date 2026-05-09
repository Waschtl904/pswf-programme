# Programme Status

> Letztes Update: 9. Mai 2026  
> Aktiver Knoten: **O5**

---

## DAG-Zustand

| Node | Zustand | Datum | Beweis-Route |
|---|---|---|---|
| O1 | ✅ CLOSED | früher | Gram-Koerzivität, direkt |
| O2 | ✅ CLOSED | früher | Spektralabfall, Paley-Wiener |
| O3 | ✅ CLOSED | früher | Phase Non-Degeneracy |
| **O4** | ✅ **CLOSED** | **9. Mai 2026** | **Jaffard–Schur + Langer W^{1,1} + Uniformity Guard** |
| **O5** | 🔴 **OPEN** | — | IR-Kern, Airy-Gap-Persistence |

---

## O4 Closure Summary

O4 (Frame Stability: λ_min(G_N) > 0) wurde geschlossen durch:

1. **T1–T4** (Turning-Point + Oszillatorik): `O4_airy_offdiag.tex`
2. **Lemma W11** (Langer W^{1,1}-Kontrolle): `O4_B2a_langer_amplitude_control.tex`
3. **Uniformity Guard** (Regime-Konsistenz): `O4_uniformity_guard.tex`
4. **Schur-Bound**: `sup_n Σ_{m≠n} |G_{mn}| ≤ C ζ(3/2)/N → 0`

Alle Konstanten sind c- und N-unabhängig.

---

## O5: Aktiver Knoten

**Problem:** Airy-Gap-Persistence im IR-Regime.  
**Kern:** Zeige, dass der spektrale Gap `λ_N - λ_{N+1} ≥ κ c^{-1/3}` uniform in `c` persistiert,  
wenn `N ~ αc` und der Sampling-Operator auf den IR-Kern eingeschränkt wird.

**Artefakte in `core/open/`:**
- `O5_airy_gap.tex` — Hauptproblem
- `O5_airy_sampling.tex` — Sampling-Operator-Analyse
- `O5_operator_norm.tex` — Operatornorm-Kontrolle
- `O5_attack_plan.md` — Angriffsstrategie
- `O5_gap_persistence.md` — Gap-Persistenz-Skizze

**Offener Kern:**  
Die Uniformität des Gaps unter Störung durch den diskreten Sampling-Operator
ist der eigentliche IR-Bottleneck des Programms.

**O5 ist strukturell unabhängig von O4.**

---

## Nächster Schritt

Strukturanalyse von O5 analog zu O4:
1. Isoliere den eigentlichen Engpass in O5 (analog zu T2 bei O4)
2. Identifiziere, welcher der drei Mechanismen (Gap, Sampling, Norm) der bindende ist
3. Suche nach einem O4-analogen Guard-Lemma-Kandidaten
