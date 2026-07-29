import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryValueProblemsLinearFirstCanonicalLaneLean

structure SolutionExistencePackage where
  solutionSpace : Type u
  solutionTopology : TopologicalSpace solutionSpace
  existence : Prop
  uniqueness : Prop
  continuousDependence : Prop

structure SolutionExistenceEvidence (S : SolutionExistencePackage) where
  existenceClosed : S.existence
  uniquenessClosed : S.uniqueness
  continuousDependenceClosed : S.continuousDependence

def SolutionExistenceClosed (S : SolutionExistencePackage) : Prop :=
  S.existence ∧ S.uniqueness ∧ S.continuousDependence

theorem solution_existence_closed_from_evidence (S : SolutionExistencePackage)
    (E : SolutionExistenceEvidence S) : SolutionExistenceClosed S := by
  exact And.intro E.existenceClosed (And.intro E.uniquenessClosed E.continuousDependenceClosed)

end BoundaryValueProblemsLinearFirstCanonicalLaneLean
end HautevilleHouse