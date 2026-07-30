import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionalAnalysisSimilarityAppliedProblemsCanonicalLaneLean

structure SimilaritySolutionPackage where
  pdeSystem : Prop
  similarityVariable : String
  reductionODESystem : Prop
  boundaryConditionsScaled : Prop
  analyticSolutionExists : Prop

structure SimilaritySolutionEvidence (P : SimilaritySolutionPackage) where
  pdeSystemClosed : P.pdeSystem
  reductionODESystemClosed : P.reductionODESystem
  boundaryConditionsScaledClosed : P.boundaryConditionsScaled
  analyticSolutionExistsClosed : P.analyticSolutionExists

def SimilaritySolutionClosed (P : SimilaritySolutionPackage) : Prop :=
  P.pdeSystem ∧ P.reductionODESystem ∧ P.boundaryConditionsScaled ∧ P.analyticSolutionExists

theorem similarity_solution_closed_from_evidence (P : SimilaritySolutionPackage)
    (E : SimilaritySolutionEvidence P) : SimilaritySolutionClosed P := by
  exact And.intro E.pdeSystemClosed
    (And.intro E.reductionODESystemClosed
      (And.intro E.boundaryConditionsScaledClosed E.analyticSolutionExistsClosed))

end DimensionalAnalysisSimilarityAppliedProblemsCanonicalLaneLean
end HautevilleHouse