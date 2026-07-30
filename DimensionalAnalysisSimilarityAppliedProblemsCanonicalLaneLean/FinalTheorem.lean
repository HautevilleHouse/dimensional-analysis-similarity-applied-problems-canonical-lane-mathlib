import HautevilleHouse.DimensionalAnalysisSimilarityAppliedProblemsCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.DimensionalAnalysisSimilarityAppliedProblemsCanonicalLaneLean.GateLemmas
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionalAnalysisSimilarityAppliedProblemsCanonicalLaneLean

def ConstrainedDimensionalAnalysisClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_dimensional_analysis_endgame (A : AdmissibleClass) :
    ConstrainedDimensionalAnalysisClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DimensionalAnalysisSimilarityAppliedProblemsCanonicalLaneLean
end HautevilleHouse