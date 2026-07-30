import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionalAnalysisSimilarityAppliedProblemsCanonicalLaneLean

structure SimilitudePackage where
  dimensionlessParameters : List String
  scalingLaws : Prop
  geometricSimilarity : Prop
  kinematicSimilarity : Prop
  dynamicSimilarity : Prop

structure SimilitudeEvidence (S : SimilitudePackage) where
  scalingLawsDerived : S.scalingLaws
  geometricSimilarityMet : S.geometricSimilarity
  kinematicSimilarityMet : S.kinematicSimilarity
  dynamicSimilarityMet : S.dynamicSimilarity

def SimilitudeClosed (S : SimilitudePackage) : Prop :=
  S.scalingLaws ∧ S.geometricSimilarity ∧ S.kinematicSimilarity ∧ S.dynamicSimilarity

theorem similitude_closed_from_evidence (S : SimilitudePackage) (E : SimilitudeEvidence S) : SimilitudeClosed S :=
  And.intro E.scalingLawsDerived (And.intro E.geometricSimilarityMet (And.intro E.kinematicSimilarityMet E.dynamicSimilarityMet))

end DimensionalAnalysisSimilarityAppliedProblemsCanonicalLaneLean
end HautevilleHouse
