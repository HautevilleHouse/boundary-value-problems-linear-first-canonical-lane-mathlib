import BoundaryValueProblemsLinearFirstCanonicalLaneLean.AdmissibleClass

/-!
# Two-Point Boundary Value Problem Package
-/

namespace HautevilleHouse
namespace BoundaryValueProblemsLinearFirstCanonicalLaneLean

structure TwoPointBoundaryPackage where
  differentialOperator : (ℝ → ℝ) → (ℝ → ℝ)
  boundaryConditions : ℝ × ℝ
  greensFunctionExists : Prop
  solutionRepresentation : (ℝ → ℝ) → (ℝ → ℝ)
  wellPosedness : Prop
  stabilityUnderPerturbation : Prop

def TwoPointBoundaryClosed (P : TwoPointBoundaryPackage) : Prop :=
  P.wellPosedness ∧ P.stabilityUnderPerturbation

end BoundaryValueProblemsLinearFirstCanonicalLaneLean
end HautevilleHouse