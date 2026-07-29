import canonicalLaneMathlib.Basic

namespace HautevilleHouse
namespace BoundaryValueProblemsLinearFirstCanonicalLaneLean

structure FirstOrderLinearODE (x : Type) where
  coefficient : x → ℝ
  source : x → ℝ
  domain : Set x

def firstOrderOperator (ode : FirstOrderLinearODE ℝ) : (ℝ → ℝ) → (ℝ → ℝ) :=
  λ u x => u' x - ode.coefficient x * u x

structure BoundaryCondition where
  x0 : ℝ
  x1 : ℝ
  value0 : ℝ
  value1 : ℝ

structure BVPSpace where
  ode : FirstOrderLinearODE ℝ
  bc : BoundaryCondition
  solutionExists : Prop
  solutionClosed : solutionExists
  conclusion : solutionClosed

def BVPSolution (bvp : BVPSpace) : Prop :=
  bvp.solutionExists

end BoundaryValueProblemsLinearFirstCanonicalLaneLean
end HautevilleHouse