import BoundaryValueProblemsLinearFirstCanonicalLaneLean.BoundaryConditions

namespace HautevilleHouse
namespace BoundaryValueProblemsLinearFirstCanonicalLaneLean

structure SolutionRepresentation {G : RiemannianCurvaturePackage}
    {L : LinearFirstOrderSystem G} {B : BoundaryCondition L} where
  greensFunction : G.manifold → G.manifold → ℝ
  integralOperator : (G.manifold → ℝ) → (G.manifold → ℝ)
  representationFormula : Prop
  kernelRegularity : Prop
  superpositionPrinciple : Prop

def SolutionRepresentationClosed
    {G : RiemannianCurvaturePackage} {L : LinearFirstOrderSystem G}
    {B : BoundaryCondition L} (R : SolutionRepresentation L B) : Prop :=
  R.representationFormula ∧ R.kernelRegularity ∧ R.superpositionPrinciple

theorem solution_representation_closed_from_evidence
    {G : RiemannianCurvaturePackage} {L : LinearFirstOrderSystem G}
    {B : BoundaryCondition L} (R : SolutionRepresentation L B)
    (E : SolutionRepresentationEvidence R) : SolutionRepresentationClosed R := by
  exact And.intro E.representationFormulaClosed (And.intro E.kernelRegularityClosed E.superpositionPrincipleClosed)

structure SolutionRepresentationEvidence {G : RiemannianCurvaturePackage}
    {L : LinearFirstOrderSystem G} {B : BoundaryCondition L}
    (R : SolutionRepresentation L B) where
  representationFormulaClosed : R.representationFormula
  kernelRegularityClosed : R.kernelRegularity
  superpositionPrincipleClosed : R.superpositionPrinciple

end BoundaryValueProblemsLinearFirstCanonicalLaneLean
end HautevilleHouse