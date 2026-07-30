import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionalAnalysisSimilarityAppliedProblemsCanonicalLaneLean

structure BuckinghamPiPackage where
  baseQuantities : List String
  derivedQuantities : List String
  dimensionalMatrix : Type u
  rankCondition : Prop
  piGroupsNumber : Nat

structure BuckinghamPiEvidence (B : BuckinghamPiPackage) where
  dimensionalMatrixRank : B.rankCondition
  piGroupsNumberComputed : B.piGroupsNumber = (B.derivedQuantities.length - B.baseQuantities.length) 

def BuckinghamPiClosed (B : BuckinghamPiPackage) : Prop :=
  B.rankCondition ∧ (B.piGroupsNumber = (B.derivedQuantities.length - B.baseQuantities.length))

theorem buckingham_pi_closed_from_evidence (B : BuckinghamPiPackage) (E : BuckinghamPiEvidence B) : BuckinghamPiClosed B :=
  And.intro E.dimensionalMatrixRank E.piGroupsNumberComputed

end DimensionalAnalysisSimilarityAppliedProblemsCanonicalLaneLean
end HautevilleHouse
