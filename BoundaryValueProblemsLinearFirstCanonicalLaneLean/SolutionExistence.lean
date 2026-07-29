import canonicalLaneMathlib.AdmissibleClass

/-!
# Solution Existence Package
-/

namespace HautevilleHouse
namespace BoundaryValueProblemsLinearFirstCanonicalLaneLean

structure SolutionExistencePackage where
  operator : FirstOrderLinearOperator
  condition : BoundaryCondition
  solutionSpace : Type
  existence : Prop
  uniqueness : Prop

def SolutionExistenceClosed (S : SolutionExistencePackage) : Prop :=
  S.existence ∧ S.uniqueness

structure SolutionExistenceEvidence (S : SolutionExistencePackage) where
  existenceClosed : S.existence
  uniquenessClosed : S.uniqueness

theorem solution_existence_closed_from_evidence (S : SolutionExistencePackage) (E : SolutionExistenceEvidence S) :
    SolutionExistenceClosed S := by
  exact And.intro E.existenceClosed E.uniquenessClosed

end BoundaryValueProblemsLinearFirstCanonicalLaneLean
end HautevilleHouse