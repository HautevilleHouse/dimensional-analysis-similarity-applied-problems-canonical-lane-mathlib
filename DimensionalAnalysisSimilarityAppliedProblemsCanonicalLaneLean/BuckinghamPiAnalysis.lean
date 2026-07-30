import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionalAnalysisSimilarityAppliedProblemsCanonicalLaneLean

structure DimensionVector (n : Nat) where
  exponents : Vector ℤ n

def productDimension (v w : DimensionVector n) : DimensionVector n :=
  { exponents := v.exponents + w.exponents }

structure PhysicalQuantity (n : Nat) where
  value : ℝ
  dimension : DimensionVector n

structure PiGroup (n : Nat) where
  relations : List (DimensionVector n)

def PiGroupInvariant (n : Nat) (P : PiGroup n) (q : PhysicalQuantity n) : Prop :=
  ∀ r ∈ P.relations, (r.exponents).dotProduct (q.dimension.exponents) = 0

structure BuckinghamPiPackage where
  n : Nat
  baseDimensions : List (DimensionVector n)
  piGroup : PiGroup n
  quantity : PhysicalQuantity n
  invariant : PiGroupInvariant n piGroup quantity

structure BuckinghamPiEvidence (B : BuckinghamPiPackage) where
  baseDimensionsLinearlyIndependent : Prop
  piGroupGeneratedByNullspace : Prop
  invariantClosed : B.invariant

def BuckinghamPiClosed (B : BuckinghamPiPackage) : Prop :=
  B.piGroupInvariant B.piGroup B.quantity

theorem buckingham_pi_closed_from_evidence (B : BuckinghamPiPackage) (E : BuckinghamPiEvidence B) :
    BuckinghamPiClosed B :=
  E.invariantClosed

end DimensionalAnalysisSimilarityAppliedProblemsCanonicalLaneLean
end HautevilleHouse