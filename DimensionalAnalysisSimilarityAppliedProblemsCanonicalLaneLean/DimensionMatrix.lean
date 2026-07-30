import DimensionalAnalysisSimilarityAppliedProblemsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DimensionalAnalysisSimilarityAppliedProblemsCanonicalLaneLean

structure DimensionMatrixPackage where
  dimensionNames : List String
  exponentMatrix : Matrix (Fin 5) (Fin 5) ℝ
  rank : Nat
  nullspaceBasis : List (Fin 5 → ℝ)
  piGroupFormation : Prop
  rankCondition : Prop
  nullspaceCondition : Prop

structure DimensionMatrixEvidence (D : DimensionMatrixPackage) where
  rankConditionClosed : D.rankCondition
  nullspaceConditionClosed : D.nullspaceCondition
  piGroupFormationClosed : D.piGroupFormation

def DimensionMatrixClosed (D : DimensionMatrixPackage) : Prop :=
  D.rankCondition ∧ D.nullspaceCondition ∧ D.piGroupFormation

theorem dimension_matrix_closed_from_evidence
    (D : DimensionMatrixPackage) (E : DimensionMatrixEvidence D) :
    DimensionMatrixClosed D := by
  exact And.intro E.rankConditionClosed
    (And.intro E.nullspaceConditionClosed E.piGroupFormationClosed)

end DimensionalAnalysisSimilarityAppliedProblemsCanonicalLaneLean
end HautevilleHouse