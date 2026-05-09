# State Transition Rules

> Wann darf ein Artefakt seinen Zustand wechseln?
> Das ist die formale Steuerlogik des Proof Systems.

---

## Zustandsraum

Jedes Artefakt im Repo befindet sich in genau einem von drei Zuständen:

| Zustand | Ort | Bedeutung |
|---|---|---|
| **OPEN** | `core/open/` | Beweisziel ohne vollständigen Beweis |
| **LEMMA** | `core/lemmas/` | Eigenständiger, vollständiger Baustein |
| **PAPER** | `core/papers/` | Vollständiges Argument mit Abstract-würdigem Hauptsatz |

`p22/` und `system/` sind **kein Zustandsraum** — sie sind Steuerungsebene bzw. hybrides Research-Modul.

---

## Transition: OPEN → LEMMA

Ein Artefakt aus `core/open/` darf nach `core/lemmas/` migrieren, wenn **alle drei** Bedingungen erfüllt sind:

1. **Vollständiger Beweis**
   Alle Beweisschritte sind lückenlos ausgeführt.
   Kein `TODO`, `FIX`, `INCOMPLETE`, `?`-Marker im Quelltext.

2. **Unabhängiger Status**
   Das Artefakt setzt nur dokumentierte Axiome/Lemmata voraus.
   Keine impliziten Annahmen aus offenen Problemen.

3. **Interface-Kompatibilität**
   Notation konsistent mit `core/papers/p01_quadrature.tex`-Präambel.
   Hauptsatz zitierbar als `\label{lem:NAME}` aus anderen Papers.

**Commit-Konvention:**
```
git commit -m "transition(open→lemma): O4_frame_stability resolved"
```

---

## Transition: LEMMA → PAPER

Ein Artefakt aus `core/lemmas/` darf nach `core/papers/` migrieren, wenn:

1. **Mehrfachverwendung**
   Es wird als Baustein in ≥ 2 Papers zitiert.

2. **Eigenständiger Hauptsatz**
   Der Satz ist Abstract-würdig — er hat eine eigenständige mathematische Aussage
   jenseits seiner Rolle als Hilfsmittel.

3. **Konsistenter Slot**
   Es gibt einen freien `pNN_`-Slot in `core/papers/`, der zur logischen
   Position im Beweisgraphen passt (siehe `system/dependencies.md`).

**Commit-Konvention:**
```
git commit -m "transition(lemma→paper): airy_discrete_stability → p22-support"
```

---

## Spezialtransition: OPEN → PAPER (direkt, ohne Lemma-Stufe)

Nur erlaubt, wenn das Artefakt:
- einen vollständigen, langen Beweis enthält (> 10 Seiten)
- **und** seinen eigenen Unterabschnitt des IR-Kernels schließt

**Commit-Konvention:**
```
git commit -m "transition(open→paper): O5_airy_gap resolved, closes IR-kernel node"
```

---

## Invarianten (dürfen nie verletzt werden)

1. **Kein Artefakt in zwei Zuständen gleichzeitig.**
   Nach einer Transition wird die Quelldatei gelöscht (kein Kopieren).

2. **System-Layer beschreibt, core-Layer beweist.**
   `system/` enthält nie `.tex`-Beweisdateien.
   `core/` enthält nie strategische Beschreibungsdokumente.

3. **p22/ ist kein Zielzustand.**
   Artefakte wandern *von* p22/ nach core/ (wenn isolierbar),
   aber nie von core/ nach p22/.

4. **migrate.sh ist idempotent.**
   Mehrfaches Ausführen erzeugt keine Duplikate (cp überschreibt, rm -rf ist sicher).
