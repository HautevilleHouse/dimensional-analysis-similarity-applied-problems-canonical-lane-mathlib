import DimensionalAnalysisSimilarityAppliedProblemsCanonicalLaneLean.BuckinghamPiGroups

namespace HautevilleHouse
namespace DimensionalAnalysisSimilarityAppliedProblemsCanonicalLaneLean

structure ScalingSimilarityPackage where
  scalingGroups : List (String × ℝ)
  similarityTransformation : Prop
  invarianceUnderScaling : Prop
  monotonicityProperty : Prop

structure ScalingSimilarityEvidence (S : ScalingSimilarityPackage) where
  similarityTransformationClosed : S.similarityTransformation
  invarianceUnderScalingClosed : S.invarianceUnderScaling
  monotonicityPropertyClosed : S.monotonicityProperty

def ScalingSimilarityClosed (S : ScalingSimilarityPackage) : Prop :=
  S.similarityTransformation ∧ S.invarianceUnderScaling ∧ S.monotonicityProperty

theorem scaling_similarity_closed_from_evidence
    (S : ScalingSimilarityPackage) (E : ScalingSimilarityEvidence S) :
    ScalingSimilarityClosed S := by
  exact And.intro E.similarityTransformationClosed
    (And.intro E.invarianceUnderScalingClosed E.monotonicityPropertyClosed)

end DimensionalAnalysisSimilarityAppliedProblemsCanonicalLaneLean
end HautevilleHouse