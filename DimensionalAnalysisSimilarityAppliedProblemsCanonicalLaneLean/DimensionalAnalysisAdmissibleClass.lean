import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionalAnalysisSimilarityAppliedProblemsCanonicalLaneLean

structure DimensionalAnalysisObject where
  problemSpace : Type
  dimensionVector : Type
  scalingGroup : Type
  similarityTransformation : Prop
  piGroupInvariant : Prop
  conclusion : piGroupInvariant

structure AdmissibleClass where
  object : DimensionalAnalysisObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  DimensionalAnalysisWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DimensionalAnalysisSimilarityAppliedProblemsCanonicalLaneLean
end HautevilleHouse