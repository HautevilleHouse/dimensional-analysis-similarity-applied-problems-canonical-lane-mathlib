import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionalAnalysisSimilarityAppliedProblemsCanonicalLaneLean

structure DimensionalAnalysisProblem where
  dependentVariable : String
  independentVariables : List String
  parameters : List String
  dimensionMatrix : Matrix ℤ (Nat.succ 0) (Nat.succ 0)

structure SimilarityTransformation (P : DimensionalAnalysisProblem) where
  scalingExponents : Vector ℤ (P.independentVariables.length)
  invariantCondition : Prop
  invariantProof : invariantCondition

def transformationInvariant (P : DimensionalAnalysisProblem) (T : SimilarityTransformation P) : Prop :=
  T.invariantCondition

structure SimilaritySolutionMethodPackage where
  problem : DimensionalAnalysisProblem
  transformation : SimilarityTransformation problem
  reducedEquation : Prop
  boundaryConditions : List Prop
  solutionExists : Prop

structure SimilaritySolutionMethodEvidence (M : SimilaritySolutionMethodPackage) where
  transformationInvariantClosed : transformationInvariant M.problem M.transformation
  reducedEquationClosed : M.reducedEquation
  boundaryConditionsClosed : AllSatisfied M.boundaryConditions
  solutionExistsClosed : M.solutionExists

def SimilaritySolutionMethodClosed (M : SimilaritySolutionMethodPackage) : Prop :=
  transformationInvariant M.problem M.transformation ∧ M.reducedEquation ∧
  (∀ p ∈ M.boundaryConditions, p) ∧ M.solutionExists

theorem similarity_solution_method_closed_from_evidence (M : SimilaritySolutionMethodPackage)
    (E : SimilaritySolutionMethodEvidence M) : SimilaritySolutionMethodClosed M :=
  And.intro E.transformationInvariantClosed
    (And.intro E.reducedEquationClosed
      (And.intro E.boundaryConditionsClosed E.solutionExistsClosed))

end DimensionalAnalysisSimilarityAppliedProblemsCanonicalLaneLean
end HautevilleHouse