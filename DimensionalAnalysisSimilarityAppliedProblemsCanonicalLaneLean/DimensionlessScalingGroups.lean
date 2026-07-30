import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionalAnalysisSimilarityAppliedProblemsCanonicalLaneLean

structure DimensionlessScalingGroup where
  baseDimensions : Type u
  scalingLaws : Type v
  piGroups : Type w
  similarityTransform : Type x
  fundamentalDimensionsDetermined : Prop
  piGroupClosure : Prop
  scalingLawConsistency : Prop
  similarityTransformClosed : Prop
  fundamentalDimensionsDeterminedTerm : fundamentalDimensionsDetermined
  piGroupClosureTerm : piGroupClosure
  scalingLawConsistencyTerm : scalingLawConsistency
  similarityTransformClosedTerm : similarityTransformClosed

structure DimensionlessScalingGroupEvidence (G : DimensionlessScalingGroup) where
  fundamentalDimensionsDeterminedClosed : G.fundamentalDimensionsDetermined
  piGroupClosureClosed : G.piGroupClosure
  scalingLawConsistencyClosed : G.scalingLawConsistency
  similarityTransformClosedClosed : G.similarityTransformClosed

def DimensionlessScalingGroupClosed (G : DimensionlessScalingGroup) : Prop :=
  G.fundamentalDimensionsDetermined ∧ G.piGroupClosure ∧
  G.scalingLawConsistency ∧ G.similarityTransformClosed

theorem dimensionless_scaling_group_closed_from_evidence
    (G : DimensionlessScalingGroup) (E : DimensionlessScalingGroupEvidence G) :
    DimensionlessScalingGroupClosed G := by
  exact And.intro E.fundamentalDimensionsDeterminedClosed
    (And.intro E.piGroupClosureClosed
      (And.intro E.scalingLawConsistencyClosed E.similarityTransformClosedClosed))

end DimensionalAnalysisSimilarityAppliedProblemsCanonicalLaneLean
end HautevilleHouse
