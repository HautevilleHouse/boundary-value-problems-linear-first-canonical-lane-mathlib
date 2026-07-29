import BoundaryValueProblemsLinearFirstCanonicalLaneLean.LinearFirstOrderSystem

namespace HautevilleHouse
namespace BoundaryValueProblemsLinearFirstCanonicalLaneLean

structure BoundaryCondition {G : RiemannianCurvaturePackage}
    (L : LinearFirstOrderSystem G) where
  boundarySubmanifold : Submanifold G.manifold
  boundaryData : G.manifold → ℝ
  bvpType : BVPType
  wellPosed : Prop
  uniqueness : Prop
  existence : Prop
  continuousDependence : Prop

def BoundaryConditionsClosed {G : RiemannianCurvaturePackage}
    {L : LinearFirstOrderSystem G} (B : BoundaryCondition L) : Prop :=
  B.wellPosed ∧ B.uniqueness ∧ B.existence ∧ B.continuousDependence

theorem boundary_conditions_closed_from_evidence
    {G : RiemannianCurvaturePackage} {L : LinearFirstOrderSystem G}
    (B : BoundaryCondition L) (E : BoundaryConditionEvidence B) :
    BoundaryConditionsClosed B := by
  exact And.intro E.wellPosedClosed (And.intro E.uniquenessClosed (And.intro E.existenceClosed E.continuousDependenceClosed))

structure BoundaryConditionEvidence {G : RiemannianCurvaturePackage}
    {L : LinearFirstOrderSystem G} (B : BoundaryCondition L) where
  wellPosedClosed : B.wellPosed
  uniquenessClosed : B.uniquenessClosed
  existenceClosed : B.existenceClosed
  continuousDependenceClosed : B.continuousDependenceClosed

end BoundaryValueProblemsLinearFirstCanonicalLaneLean
end HautevilleHouse