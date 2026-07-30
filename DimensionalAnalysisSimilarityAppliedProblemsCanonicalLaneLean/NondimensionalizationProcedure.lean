import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionalAnalysisSimilarityAppliedProblemsCanonicalLaneLean

structure NondimensionalizationPackage where
  initialVariables : List String
  characteristicScales : List String
  transformedEquations : Prop
  boundaryConditionInvariant : Prop

structure NondimensionalizationEvidence (N : NondimensionalizationPackage) where
  equationsNondimensional : N.transformedEquations
  boundaryInvariant : N.boundaryConditionInvariant

def NondimensionalizationClosed (N : NondimensionalizationPackage) : Prop :=
  N.transformedEquations ∧ N.boundaryConditionInvariant

theorem nondimensionalization_closed_from_evidence (N : NondimensionalizationPackage) (E : NondimensionalizationEvidence N) : NondimensionalizationClosed N :=
  And.intro E.equationsNondimensional E.boundaryInvariant

end DimensionalAnalysisSimilarityAppliedProblemsCanonicalLaneLean
end HautevilleHouse
