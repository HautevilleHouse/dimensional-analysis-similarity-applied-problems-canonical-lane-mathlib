import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionalAnalysisSimilarityAppliedProblemsCanonicalLaneLean

structure SimilarityScalingPackage where
  physicalQuantities : List String
  scalingExponents : List Float
  invarianceCondition : Prop
  scalingGroupDimension : Nat

structure SimilarityScalingEvidence (S : SimilarityScalingPackage) where
  invariantUnderScaling : S.invarianceCondition
  correctDimension : S.scalingGroupDimension = (S.physicalQuantities.length - S.scalingExponents.length) 

def SimilarityScalingClosed (S : SimilarityScalingPackage) : Prop :=
  S.invarianceCondition ∧ (S.scalingGroupDimension = (S.physicalQuantities.length - S.scalingExponents.length))

theorem similarity_scaling_closed_from_evidence (S : SimilarityScalingPackage) (E : SimilarityScalingEvidence S) : SimilarityScalingClosed S :=
  And.intro E.invariantUnderScaling E.correctDimension

end DimensionalAnalysisSimilarityAppliedProblemsCanonicalLaneLean
end HautevilleHouse
