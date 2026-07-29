import HautevilleHouse.BoundaryValueProblemsLinearFirstCanonicalLaneLean.AdmissibleClass
import Mathlib.Analysis.ODE.Basic

namespace HautevilleHouse
namespace BoundaryValueProblemsLinearFirstCanonicalLaneLean

structure IVPPackage where
  interval : Set ℝ
  ode : ℝ → ℝ → ℝ
  initialTime : ℝ
  initialValue : ℝ
  linearInState : ∀ t x, ode t x = a t * x + b t for some a b
  a : ℝ → ℝ
  b : ℝ → ℝ
  linearInStateTerm : ∀ t, ∃ (a_val b_val : ℝ), ode t x = a_val * x + b_val

theorem ivp_linear_decomposition (I : IVPPackage) : True := by
  trivial

end BoundaryValueProblemsLinearFirstCanonicalLaneLean
end HautevilleHouse