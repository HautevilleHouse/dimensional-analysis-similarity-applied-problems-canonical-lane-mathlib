import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionalAnalysisSimilarityAppliedProblemsCanonicalLaneLean

structure DimensionalAnalysisObject where
  modelSpace : Type
  similarityParameters : List String
  scalingLawsApplied : Prop

def DimensionalAnalysisWitnessClosed (O : DimensionalAnalysisObject) : Prop :=
  O.scalingLawsApplied

end DimensionalAnalysisSimilarityAppliedProblemsCanonicalLaneLean
end HautevilleHouse
