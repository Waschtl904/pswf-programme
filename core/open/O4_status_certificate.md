# O4 Status Certificate

> Datum: Mai 2026  
> Zustand: **OPEN**  
> Erstellt gemäß: `system/state_transitions.md` (Transition OPEN → LEMMA)

---

## Prüfung: Darf O4 nach `core/lemmas/` migrieren?

Gemäß `system/state_transitions.md` sind drei Bedingungen nötig:

| Bedingung | Status | Detail |
|---|---|---|
| **1. Vollständiger Beweis** | ❌ **NICHT ERFÜLLT** | Kein der drei Attack-Routes (A, B, C) ist abgeschlossen |
| **2. Unabhängiger Status** | ✅ erfüllt | O4 ist explizit unabhängig von O5 (Section 5 im .tex) |
| **3. Interface-Kompatibilität** | ✅ erfüllt | Notation konsistent mit p01_quadrature.tex-Präambel |

**Transition: NICHT ERLAUBT.** Zustand bleibt OPEN.

---

## Was vollständig ist

- [x] Problemformulierung (Problem 2.1, Gleichung O4)
- [x] Drei Reformulierungen (Gram-Matrix, Paley-Wiener Frame, Kadec-Typ)
- [x] Drei Attack-Routes dokumentiert (A: BW-Doubling, B: Jaffard, C: Beurling-Kadec)
- [x] Unabhängigkeit von O5 bewiesen (Section 5)
- [x] Drei offene Sub-Probleme identifiziert (Sub1, Sub2, Sub3)

## Was fehlt (Closure-Bedingungen)

- [ ] **Route A:** Spektralschranke → pointwise sampling-Schranke über Primzahlmenge (nicht-trivial)
- [ ] **Route B:** Summierbarkeit des Airy-Abfalls der Gram-Matrix-Einträge (`|m-n| → ∞`)
- [ ] **Route C:** Effektive Bandbreite-Argument für `δ → 0` (Degradierungsrisiko)
- [ ] **Sub1:** Schur-Test-Upper-Bound → `λ_min`-Lower-Bound via Neumann-Reihe
- [ ] **Sub2:** Uniform BW-Doubling via spektrale Monotonie
- [ ] **Sub3:** Kritisches `δ_c` (unter dem Koerzivität fehlschlägt)

---

## Kritischer Pfad zur Closure

Die schwächste und zugreichste Route ist **Route B** (Jaffard):

```
Zeige: G_{mn} = (1/N) * sum_j psi_m(p_j*) * psi_n(p_j*)
       fällt ab wie |m-n|^{-k} für k ≥ 2 (summierbar)
→ G = I + E mit ||E||_{l^1 → l^1} < 1
→ lambda_min(G) ≥ 1 - ||E|| > 0
```

Dies benötigt: Langer-Olver-Approximation für `psi_n` (verfügbar in p18),
Primzahldichte im Kantenfenster (PNT, keine neue Arbeit),
summierbare Kreuzterme (offene Rechnung).

**Bottleneck:** Die Summierbarkeit der Kreuzterme ist die eigentliche offene Stelle.

---

## Systemtest-Ergebnis

Dieser Certificate ist der **erste Systemtest** des Transition-Systems:
- Das System hat korrekt verhindert, dass O4 vorzeitig geschlossen wird.
- Der Zustand OPEN ist ehrlich materialisiert.
- Der nächste Commit darf O4 erst schließen, wenn Route B (oder A oder C) vollständig ist.

**Commit-Konvention für spätere Closure:**
```
git commit -m "close(O4): Jaffard Gram decay proven, lambda_min(G) >= 1-||E|| > 0"
```
