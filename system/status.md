# Projektstatus

> Zuletzt aktualisiert: Mai 2026

## Aktiver Arbeitsstand

| Bereich | Status |
|---|---|
| p01_quadrature | ✅ vollständig, FIX-Marker aufgelöst |
| p01_weil | ✅ vollständig (FINAL) |
| p02_quadrature | ✅ kanonische Version (≫ paper2.tex) |
| p03–p19 | 🔄 migriert aus prolate-gram-coercivity, Status je nach Paper |
| p20_universality | 🔄 aktiv |
| p21_foundations | 🔄 aktiv |
| XXII | 🔄 fragmentiert → in p22/ strukturiert |
| O4 (Frame Stability) | ⚠️ offen — blockiert p10+ |
| O5 (Airy Gap) | ⚠️ offen — blockiert p14, p18 |

## Kritischer Pfad

```
O4 lösen → p10–p13 finalisieren → O5 lösen → p14–p18 → XXII abschließen
```

## Nächste Schritte

1. `core/papers/` befüllen (lokale Migration via `migrate.sh`)
2. `core/lemmas/` befüllen (airy, bridge, phase_nondeg, olver, bstrong)
3. `core/open/` befüllen (O4 und O5 Dateien)
4. `p22/` vollständig befüllen (XXII-Fragmente)
