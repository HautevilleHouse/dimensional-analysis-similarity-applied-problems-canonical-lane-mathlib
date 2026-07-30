import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionalAnalysisSimilarityAppliedProblemsCanonicalLaneLean

structure ModelPrototypeScalingPackage where
  modelGeometry : Type u
  prototypeGeometry : Type v
  scalingFactors : Type w
  kinematicSimilarity : Prop
  dynamicSimilarity : Prop
  geometricSimilarity : Prop
  kinematicSimilarityTerm : kinematicSimilarity
  dynamicSimilarityTerm : dynamicSimilarity
  geometricSimilarityTerm : geometricSimilarity

structure ModelPrototypeScalingEvidence (M : ModelPrototypeScalingPackage) where
  kinematicSimilarityClosed : M.kinematicSimilarity
  dynamicSimilarityClosed : M.dynamicSimilarity
  geometricSimilarityClosed : M.geometricSimilarity

def ModelPrototypeScalingClosed (M : ModelPrototypeScalingPackage) : Prop :=
  M.kinematicSimilarity ∧ M.dynamicSimilarity ∧ M.geometricSimilarity

theorem model_prototype_scaling_closed_from_evidence
    (M : ModelPrototypeScalingPackage) (E : ModelPrototypeScalingEvidence M) :
    ModelPrototypeScalingClosed M := by
  exact And.intro E.kinematicSimilarityClosed
    (And.intro E.dynamicSimilarityClosed E.geometricSimilarityClosed)

end DimensionalAnalysisSimilarityAppliedProblemsCanonicalLaneLean
end HautevilleHouse
