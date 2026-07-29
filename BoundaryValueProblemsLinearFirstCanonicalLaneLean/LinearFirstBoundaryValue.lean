import BoundaryValueProblemsLinearFirstCanonicalLaneLean.BVPLinearFirstPackage

namespace HautevilleHouse
namespace BoundaryValueProblemsLinearFirstCanonicalLaneLean

structure LinearFirstBoundaryValuePackage {P : BVPLinearFirstPackage} where
  solutionExistence : Prop
  solutionUniqueness : Prop
  continuousDependence : Prop
  existenceUniquenessProof : solutionExistence ∧ solutionUniqueness
  continuousDependenceProof : continuousDependence

structure LinearFirstBoundaryValueEvidence {P : BVPLinearFirstPackage}
    (L : LinearFirstBoundaryValuePackage P) where
  solutionExistenceClosed : L.solutionExistence
  solutionUniquenessClosed : L.solutionUniqueness
  continuousDependenceClosed : L.continuousDependence

def LinearFirstBoundaryValueClosed {P : BVPLinearFirstPackage}
    (L : LinearFirstBoundaryValuePackage P) : Prop :=
  L.solutionExistence ∧ L.solutionUniqueness ∧ L.continuousDependence

theorem linear_first_boundary_value_closed_from_evidence
    {P : BVPLinearFirstPackage} (L : LinearFirstBoundaryValuePackage P)
    (E : LinearFirstBoundaryValueEvidence L) : LinearFirstBoundaryValueClosed L := by
  exact And.intro E.solutionExistenceClosed
    (And.intro E.solutionUniquenessClosed E.continuousDependenceClosed)

end BoundaryValueProblemsLinearFirstCanonicalLaneLean
end HautevilleHouse