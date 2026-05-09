#!/usr/bin/env bash
# migrate.sh — Migrationsskript: prolate-gram-coercivity + prolate-primes-paper → pswf-programme
#
# Verwendung:
#   1. Dieses Skript in ein Verzeichnis legen, das BEIDE Quellrepos als Unterordner enthält:
#      parent/
#        prolate-gram-coercivity/
#        prolate-primes-paper/
#        pswf-programme/      ← Zielrepo (dieses hier)
#        migrate.sh
#   2. bash migrate.sh

set -e

SRC1="./prolate-gram-coercivity"
SRC2="./prolate-primes-paper"
DST="./pswf-programme"

echo "=== PSWF Programme Migration ==="

# ── CORE/PAPERS ────────────────────────────────────────────────────────────────

echo "[1/5] Papers migrieren..."

# p01: Zwei Linien
cp "$SRC1/paper1.tex"               "$DST/core/papers/p01_quadrature.tex"
cp "$SRC2/paper1_FINAL.tex"         "$DST/core/papers/p01_weil.tex"

# p02: Quadrature (kanonisch), paper2.tex bleibt im Quellrepo als legacy
cp "$SRC1/paper2_quadrature.tex"    "$DST/core/papers/p02_quadrature.tex"

# p03–p21 (aus prolate-gram-coercivity)
cp "$SRC1/paper3.tex"               "$DST/core/papers/p03.tex"
cp "$SRC1/paper4_semiclassical.tex" "$DST/core/papers/p04_semiclassical.tex"
cp "$SRC1/paper5.tex"               "$DST/core/papers/p05.tex"
cp "$SRC1/paper6.tex"               "$DST/core/papers/p06.tex"
cp "$SRC1/paper7_skeleton.tex"      "$DST/core/papers/p07_skeleton.tex"
cp "$SRC1/paper8_scale_separated.tex" "$DST/core/papers/p08_scale_separated.tex"
cp "$SRC1/paper9_superconcentration.tex" "$DST/core/papers/p09_superconcentration.tex"
cp "$SRC1/paper10_coercivity_gap.tex"    "$DST/core/papers/p10_coercivity_gap.tex"
cp "$SRC1/paper11_fredholm_microlocal.tex" "$DST/core/papers/p11_fredholm_microlocal.tex"
cp "$SRC1/paper12_direct_coercivity.tex"   "$DST/core/papers/p12_direct_coercivity.tex"
cp "$SRC1/paper13_gap_s.tex"         "$DST/core/papers/p13_gap_s.tex"
cp "$SRC1/paper14_airy_resolvent.tex" "$DST/core/papers/p14_airy_resolvent.tex"
cp "$SRC1/paper15_quasimode.tex"     "$DST/core/papers/p15_quasimode.tex"
cp "$SRC1/paper16_bridge.tex"        "$DST/core/papers/p16_bridge.tex"
cp "$SRC1/paper17_cliff.tex"         "$DST/core/papers/p17_cliff.tex"
cp "$SRC1/paper18_airy_universality.tex" "$DST/core/papers/p18_airy_universality.tex"
cp "$SRC1/paper19_quantitative_rate.tex" "$DST/core/papers/p19_quantitative_rate.tex"
cp "$SRC1/paper20_universality.tex"  "$DST/core/papers/p20_universality.tex"
cp "$SRC1/paper21_foundations.tex"   "$DST/core/papers/p21_foundations.tex"

# ── CORE/LEMMAS ────────────────────────────────────────────────────────────────

echo "[2/5] Lemmata migrieren..."

cp "$SRC1/phase_nondeg_lemma.tex"           "$DST/core/lemmas/phase_nondeg_lemma.tex"
cp "$SRC1/airy_discrete_stability_lemma.tex" "$DST/core/lemmas/airy_discrete_stability_lemma.tex"
cp "$SRC1/bridge_lemma.tex"                 "$DST/core/lemmas/bridge_lemma.tex"
cp "$SRC1/olver_growth_lemma.tex"           "$DST/core/lemmas/olver_growth_lemma.tex"
cp "$SRC1/bstrong_reduction_lemma.tex"      "$DST/core/lemmas/bstrong_reduction_lemma.tex"
cp "$SRC1/ax5_independence_remark.tex"      "$DST/core/lemmas/ax5_independence_remark.tex"
cp "$SRC1/structural_stability_metatheorem.tex" "$DST/core/lemmas/structural_stability_metatheorem.tex"

# ── CORE/OPEN ──────────────────────────────────────────────────────────────────

echo "[3/5] Offene Probleme migrieren..."

cp "$SRC1/O4_frame_stability_problem.tex"   "$DST/core/open/O4_frame_stability.tex"
cp "$SRC1/O4_B2_airy_offdiag_decay.tex"     "$DST/core/open/O4_airy_offdiag.tex"
cp "$SRC1/O4_B2_T2_triple_scaling.tex"      "$DST/core/open/O4_triple_scaling.tex"
cp "$SRC1/O5_airy_gap_problem.tex"          "$DST/core/open/O5_airy_gap.tex"
cp "$SRC1/O5_B2_airy_sampling_coercivity.tex" "$DST/core/open/O5_airy_sampling.tex"
cp "$SRC1/O5_Ec_operator_norm.tex"          "$DST/core/open/O5_operator_norm.tex"

# ── P22 ────────────────────────────────────────────────────────────────────────

echo "[4/5] XXII migrieren..."

cp "$SRC1/XXII_abstract_and_meta.tex"    "$DST/p22/abstract.tex"
cp "$SRC1/XXII_architectural_remark.tex" "$DST/p22/architecture.tex"
cp "$SRC1/XXII_ir_kernel.md"             "$DST/p22/ir_kernel.md"
cp "$SRC1/XXII_closing_status.md"        "$DST/p22/status.md"
cp "$SRC1/XXII_introduction_draft.tex"   "$DST/p22/introduction_draft.tex"
cp "$SRC1/XXII_universality_theorem.tex" "$DST/p22/universality_theorem.tex"
cp "$SRC1/paper22_dag.tex"               "$DST/p22/dag.tex"
cp "$SRC1/trilogy_dag.tex"               "$DST/p22/trilogy_dag.tex"

# ── SYSTEM ─────────────────────────────────────────────────────────────────────

echo "[5/5] Systemdateien migrieren..."

cp "$SRC1/program_map.md"    "$DST/system/program_map_source.md"  # als Quelle, nicht überschreiben
cp "$SRC1/DEPENDENCIES.md"   "$DST/system/dependencies_source.md" # zum Abgleich

# ── NICHT MIGRIEREN ────────────────────────────────────────────────────────────
# Folgende Dateien werden NICHT migriert (AI-Sitzungsartefakte / absorbiert):
#   PROMPT.md, context_summary.md, paper20_context_prompt.md
#   HEBELSTELLE.md, RESEARCH_DIRECTIONS.md, PHASE_NONDEG_NOTE.md
#   assumption_2_4_target.md, REVIEW_NOTES_paper18.md
#   paper2.tex (legacy, bleibt im Quellrepo)

echo ""
echo "✅ Migration abgeschlossen."
echo "   Nächster Schritt: cd pswf-programme && git add -A && git commit -m 'migrate: papers, lemmas, open, p22'"
echo "   Danach: system/program_map.md und system/dependencies.md manuell finalisieren."
