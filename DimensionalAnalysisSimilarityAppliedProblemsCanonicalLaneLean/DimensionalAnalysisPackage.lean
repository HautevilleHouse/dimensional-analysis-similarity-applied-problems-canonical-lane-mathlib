import HautevilleHouse.DimensionalAnalysisSimilarityAppliedProblemsCanonicalLaneLean.BridgeLemmas
import Mathlib.Analysis.Calculus.Deriv

namespace HautevilleHouse
namespace DimensionalAnalysisSimilarityAppliedProblemsCanonicalLaneLean

structure DimensionalAnalysisPackage where
  baseDimensions : List String
  derivedDimensions : List String
  scalingLaws : Prop
  buckinghamPiTheorem : Prop
  similarityTransformationGroup : Prop

structure DimensionalAnalysisEvidence (D : DimensionalAnalysisPackage) where
  scalingLawsClosed : D.scalingLaws
  buckinghamPiTheoremClosed : D.buckinghamPiTheorem
  similarityTransformationGroupClosed : D.similarityTransformationGroup

def DimensionalAnalysisClosed (D : DimensionalAnalysisPackage) : Prop :=
  D.scalingLaws ∧ D.buckinghamPiTheorem ∧ D.similarityTransformationGroup

theorem dimensional_analysis_closed_from_evidence
    (D : DimensionalAnalysisPackage) (E : DimensionalAnalysisEvidence D) :
    DimensionalAnalysisClosed D := by
  exact And.intro E.scalingLawsClosed
    (And.intro E.buckinghamPiTheoremClosed E.similarityTransformationGroupClosed)

end DimensionalAnalysisSimilarityAppliedProblemsCanonicalLaneLean
end HautevilleHouse