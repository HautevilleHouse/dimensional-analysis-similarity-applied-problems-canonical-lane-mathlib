import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionalAnalysisSimilarityAppliedProblemsCanonicalLaneLean

structure NondimensionalizationScheme where
  characteristicScales : Type u
  nondimensionalVariables : Type v
  governingEquationNormalized : Prop
  boundaryConditionNormalized : Prop
  characteristicScalesTerm : characteristicScales
  nondimensionalVariablesTerm : nondimensionalVariables
  governingEquationNormalizedTerm : governingEquationNormalized
  boundaryConditionNormalizedTerm : boundaryConditionNormalized

structure NondimensionalizationSchemeEvidence (N : NondimensionalizationScheme) where
  characteristicScalesClosed : N.characteristicScales
  nondimensionalVariablesClosed : N.nondimensionalVariables
  governingEquationNormalizedClosed : N.governingEquationNormalized
  boundaryConditionNormalizedClosed : N.boundaryConditionNormalized

def NondimensionalizationSchemeClosed (N : NondimensionalizationScheme) : Prop :=
  N.characteristicScales ∧ N.nondimensionalVariables ∧
  N.governingEquationNormalized ∧ N.boundaryConditionNormalized

theorem nondimensionalization_scheme_closed_from_evidence
    (N : NondimensionalizationScheme) (E : NondimensionalizationSchemeEvidence N) :
    NondimensionalizationSchemeClosed N := by
  exact And.intro E.characteristicScalesClosed
    (And.intro E.nondimensionalVariablesClosed
      (And.intro E.governingEquationNormalizedClosed E.boundaryConditionNormalizedClosed))

end DimensionalAnalysisSimilarityAppliedProblemsCanonicalLaneLean
end HautevilleHouse
