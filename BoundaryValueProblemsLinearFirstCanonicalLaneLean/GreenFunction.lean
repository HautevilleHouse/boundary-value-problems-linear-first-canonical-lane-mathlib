import HautevilleHouse.BoundaryValueProblemsLinearFirstCanonicalLaneLean.IVPFoundations

namespace HautevilleHouse
namespace BoundaryValueProblemsLinearFirstCanonicalLaneLean

structure GreenFunctionPackage where
  source : IVPPackage
  greenFunction : ℝ → ℝ → ℝ
  jumpCondition : Prop
  boundaryConditionSatisfied : Prop
  jumpConditionTerm : jumpCondition
  boundaryConditionSatisfiedTerm : boundaryConditionSatisfied

def GreenFunctionClosed (G : GreenFunctionPackage) : Prop :=
  G.jumpCondition ∧ G.boundaryConditionSatisfied

theorem green_function_closed (G : GreenFunctionPackage) : GreenFunctionClosed G := by
  exact And.intro G.jumpConditionTerm G.boundaryConditionSatisfiedTerm

end BoundaryValueProblemsLinearFirstCanonicalLaneLean
end HautevilleHouse