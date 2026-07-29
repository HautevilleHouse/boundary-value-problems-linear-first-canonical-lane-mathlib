import canonicalLaneMathlib.LinearAlgebra

namespace HautevilleHouse
namespace BoundaryValueProblemsLinearFirstCanonicalLaneLean

structure FundamentalPair (ode : FirstOrderLinearODE ℝ) where
  u1 : ℝ → ℝ
  u2 : ℝ → ℝ
  wronskianConstant : ℝ
  isConstant : Prop

def wronskian (u v : ℝ → ℝ) (x : ℝ) : ℝ :=
  u x * v' x - u' x * v x

theorem abel_theorem (ode : FirstOrderLinearODE ℝ) (u : ℝ → ℝ) (h : ∀ x, u' x = ode.coefficient x * u x) :
  ∀ x, wronskian u (λ _ => 1) x = 0 := by
  intro x
  calc
    u x * 0 - u' x * 1 = -u' x := by ring
    _ = - (ode.coefficient x * u x) := by rw [h x]
    _ = 0 := by ring

end BoundaryValueProblemsLinearFirstCanonicalLaneLean
end HautevilleHouse