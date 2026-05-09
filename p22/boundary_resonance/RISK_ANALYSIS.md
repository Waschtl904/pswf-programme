# Risk Analysis: What Could Still Kill the Paper
# Honest assessment | May 2026

=======================================================================
TIER 1 — STRUCTURAL RISKS (would require architectural response)
=======================================================================

RISK 1: "The edge sector definition is ad hoc"
─────────────────────────────────────────────
  Claim at risk: The sector I_edge = {k : mu_k > -1/2} is the natural object.
  Referee attack: Why -1/2? Why not 0, or -1, or c-dependent threshold?
  Current status: Threshold chosen by numerical convenience, not by an intrinsic criterion.
  Kill potential: MEDIUM
  Fix: Show result is stable under threshold variation in [-1, 0].
       Add one sentence + one table column. Cost: 1 hour.

RISK 2: "c = 32, 48, 64 is too narrow a range"
───────────────────────────────────────────────
  Claim at risk: ||R^perp|| <= 0.017, alignment >= 0.9975.
  Referee attack: Three data points. Trend could reverse at c = 128.
  Current status: c=96 showed instability due to N=0.40c being too large.
  Kill potential: HIGH (computationally minded referee)
  Fix: Run c = 96, 128 with N = 0.32c. Cost: 30 minutes.
       If numbers hold: kill potential drops to LOW.

=======================================================================
TIER 2 — LOGICAL RISKS (would require proof adjustment)
=======================================================================

RISK 3: "lambda_eff -> inf is asserted but not proved"
──────────────────────────────────────────────────────
  Claim at risk: Theorem part (i): lambda_eff(c) -> inf.
  Referee attack: phi_k(1;c)->inf does not immediately give lambda_eff->inf
                  without knowing |I_edge| and growth rate.
  Current status: Step is implicit.
  Kill potential: MEDIUM
  Fix: Add 2 sentences:
       "Since |I_edge| >= 1 for c >= c_0, and phi_k(1;c)->inf for fixed
        mu_k >= 0 by [Olver74], lambda_eff >= (2/c)phi_k(1;c)^2 - alpha_c -> inf."
       Cost: 2 sentences. No new mathematics.

RISK 4: "Bulk stability O(c^{-1/2}) stated without proof"
─────────────────────────────────────────────────────────
  Claim at risk: ||G_N^bulk - I||_op = O(c^{-1/2}).
  Referee attack: Near-barrier PSWFs may not satisfy standard EM hypotheses.
  Kill potential: LOW-MEDIUM
  Fix: Cite Osipov-Rokhlin 2014 for below-barrier PSWF smoothness. One citation.

=======================================================================
TIER 3 — PRESENTATION RISKS (R&R, not rejection)
=======================================================================

RISK 5: "Rank-1 collapse of R_c not proved, only measured"
  Kill potential: LOW — already handled by Remark[status] in journal_kernel.tex.

RISK 6: "No comparison to existing PSWF sampling literature"
  Kill potential: LOW — causes revision request.
  Missing: Xiao-Rokhlin-Yarvin (2001), Israel (2017), or similar.
  Fix: 1 paragraph in §1, 2-3 citations.

=======================================================================
PRIORITY ORDER
=======================================================================

  MUST FIX (before submission):
    Risk 2: extend numerics to c = 96, 128 with N = 0.32c
    Risk 3: add 2 explicit sentences on lambda_eff -> inf

  SHOULD FIX (low cost, high protection):
    Risk 1: threshold stability check
    Risk 4: cite Osipov-Rokhlin for bulk smoothness
    Risk 6: 1 paragraph on related literature

  CAN DEFER:
    Risk 5: already handled by Remark[status]

=======================================================================
BOTTOM LINE
=======================================================================

  No risk requires new mathematics.
  All fixes: computation (Risk 2), explicit logic (Risk 3), citations (4, 6).
  Estimated pre-submission work: 3-4 hours.
  Kill probability after fixes: LOW.
  Most likely outcome: accept with minor revisions.
