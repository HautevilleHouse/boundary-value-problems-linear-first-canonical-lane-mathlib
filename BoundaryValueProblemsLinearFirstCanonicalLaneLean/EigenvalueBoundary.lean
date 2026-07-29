import BoundaryValueProblemsLinearFirstCanonicalLaneLean.BoundaryConditions

namespace HautevilleHouse
namespace BoundaryValueProblemsLinearFirstCanonicalLaneLean

structure EigenvalueBoundary {G : RiemannianCurvaturePackage}
    {L : LinearFirstOrderSystem G} (B : BoundaryCondition L) where
  eigenvalueProblem : Prop
  sturmLiouvilleType : Prop
  spectrumDiscrete : Prop
  eigenfunctionBasis : Prop

def EigenvalueBoundaryClosed {G : RiemannianCurvaturePackage}
    {L : LinearFirstOrderSystem G} {B : BoundaryCondition L}
    (E : EigenvalueBoundary B) : Prop :=
  E.eigenvalueProblem ∧ E.sturmLiouvilleType ∧ E.spectrumDiscrete ∧ E.eigenfunctionBasis

theorem eigenvalue_boundary_closed_from_evidence
    {G : RiemannianCurvaturePackage} {L : LinearFirstOrderSystem G}
    {B : BoundaryCondition L} (E : EigenvalueBoundary B)
    (E2 : EigenvalueBoundaryEvidence E) : EigenvalueBoundaryClosed E := by
  exact And.intro E2.eigenvalueProblemClosed (And.intro E2.sturmLiouvilleTypeClosed (And.intro E2.spectrumDiscreteClosed E2.eigenfunctionBasisClosed))

structure EigenvalueBoundaryEvidence {G : RiemannianCurvaturePackage}
    {L : LinearFirstOrderSystem G} {B : BoundaryCondition L}
    (E : EigenvalueBoundary B) where
  eigenvalueProblemClosed : E.eigenvalueProblem
  sturmLiouvilleTypeClosed : E.sturmLiouvilleType
  spectrumDiscreteClosed : E.spectrumDiscrete
  eigenfunctionBasisClosed : E.eigenfunctionBasis

end BoundaryValueProblemsLinearFirstCanonicalLaneLean
end HautevilleHouse