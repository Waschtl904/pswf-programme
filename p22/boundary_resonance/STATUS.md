# p22 — Boundary Resonance: Development Status
# May 2026 | pswf-programme/p22/boundary_resonance/

## Mathematical status

### What is established

| Claim | Status | Evidence |
|-------|--------|----------|
| G = I + F_c + R_c, F_c rank-1 | **Rigorous** | Euler–Maclaurin formula |
| ||R_c^perp|| ≤ 0.017 | **Measured** | c = 32, 48, 64 |
| DK bound ≤ 0.0095 | **Rigorous** | given separation + ||R^perp|| |
| |⟨v₁, e_c/‖e_c‖⟩| ≥ 0.9975 | **Measured** | c = 32, 48, 64 |
| Bulk stability O(c^{-1/2}) | **Standard** | EM accuracy, below-barrier |
| λ_eff(c) → ∞ | **Supported** | WKB (Olver 1974) + numerical trend |
| λ_eff ~ c^1.45 | **Empirical** | c ∈ {32,48,64}, not analytically derived |

### Single open point

  φ_k(1;c) → ∞  [qualitative]  →  ONE citation: Olver 1974 / Osipov–Rokhlin 2014

  Everything else is either algebraic (EM), measured (norms),
  or rigorous given the measured inputs (Davis–Kahan).

---

## Paper identity (canonical)

> The discrete PSWF sampling Gram operator exhibits a
> boundary-dominated low-rank perturbation of the identity:
> a single edge-localized direction carries asymptotically dominant
> spectral weight, while all remaining modes are stable within
> O(c^{-1/2}) of the identity. The dominant eigenvector converges
> to the endpoint profile vector e_c (Davis–Kahan bound ~ c^{-0.58}).
> This is a boundary spectral decomposition of a singularly
> discretized band-limiting operator — not a quadrature error estimate.

---

## File structure

  journal_kernel.tex        ← CANONICAL  submission-ready 1-page core
  abstract_intro_final.tex  ← ACTIVE     §Abstract + §1 for full paper
  theory_summary.tex        ← ARCHIVE    internal reference
  calibrated_theorem.tex    ← ARCHIVE    development artifact
  main_theorem.tex          ← ARCHIVE    superseded by journal_kernel
  canonical_identity.tex    ← ARCHIVE    superseded by journal_kernel

---

## Two paths forward

  (A) Submission path
      — integrate journal_kernel into full paper
      — consistent numbering (Theorem 1.1, Lemma 2.1, ...)
      — add §2 Background, §3 Gram matrix, §4 Numerics
      — Appendix A: full proof of Theorem 1.1 parts (i)+(ii)

  (B) Analytic strengthening (optional, post-submission)
      — rigorous ||e_c||² ~ c^β from WKB (closes λ_eff ~ c^1.45)
      — uniform bound on R_c^osc via Montgomery–Vaughan
      — upgrades (i) from SUPPORTED to RIGOROUS

  Path (A) is complete with current files.
  Path (B) is independent and can follow submission.
