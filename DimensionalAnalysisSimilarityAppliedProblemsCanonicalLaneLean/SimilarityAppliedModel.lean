import HautevilleHouse.DimensionalAnalysisSimilarityAppliedProblemsCanonicalLaneLean.DimensionalAnalysisPackage

namespace HautevilleHouse
namespace DimensionalAnalysisSimilarityAppliedProblemsCanonicalLaneLean

structure SimilarityAppliedModel {D : DimensionalAnalysisPackage}
    (DA : DimensionalAnalysisEvidence D) where
  similarityVariable : String
  scalingExponent : ℝ
  invariantRelationship : Prop

def SimilarityAppliedModelClosed {D : DimensionalAnalysisPackage}
    {DA : DimensionalAnalysisEvidence D} (M : SimilarityAppliedModel DA) : Prop :=
  M.invariantRelationship

end DimensionalAnalysisSimilarityAppliedProblemsCanonicalLaneLean
end HautevilleHouse