import DimensionalAnalysisSimilarityAppliedProblemsCanonicalLaneLean.DimensionMatrix

namespace HautevilleHouse
namespace DimensionalAnalysisSimilarityAppliedProblemsCanonicalLaneLean

structure BuckinghamPiGroupPackage where
  fundamentalDimensions : List String
  derivedDimensions : List String
  piGroups : List (List (String × ℝ))
  dimensionlessCombinations : Prop
  linearIndependence : Prop
  coverageCondition : Prop

structure BuckinghamPiGroupEvidence (B : BuckinghamPiGroupPackage) where
  dimensionlessCombinationsClosed : B.dimensionlessCombinations
  linearIndependenceClosed : B.linearIndependence
  coverageConditionClosed : B.coverageCondition

def BuckinghamPiGroupClosed (B : BuckinghamPiGroupPackage) : Prop :=
  B.dimensionlessCombinations ∧ B.linearIndependence ∧ B.coverageCondition

theorem buckingham_pi_group_closed_from_evidence
    (B : BuckinghamPiGroupPackage) (E : BuckinghamPiGroupEvidence B) :
    BuckinghamPiGroupClosed B := by
  exact And.intro E.dimensionlessCombinationsClosed
    (And.intro E.linearIndependenceClosed E.coverageConditionClosed)

end DimensionalAnalysisSimilarityAppliedProblemsCanonicalLaneLean
end HautevilleHouse