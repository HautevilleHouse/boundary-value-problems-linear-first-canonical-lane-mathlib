import BoundaryValueProblemsLinearFirstCanonicalLaneLean.AdmissibleClass

/-!
# First Order Linear ODE Package
-/

namespace HautevilleHouse
namespace BoundaryValueProblemsLinearFirstCanonicalLaneLean

structure FirstOrderLinearODEPackage where
  coefficientFunction : ℝ → ℝ
  forcingFunction : ℝ → ℝ
  domainInterval : ℝ × ℝ
  generalSolutionFormula : ℝ → ℝ
  initialCondition : ℝ
  uniqueSolutionExists : Prop
  solutionSmooth : Prop

def FirstOrderLinearODEClosed (P : FirstOrderLinearODEPackage) : Prop :=
  P.uniqueSolutionExists ∧ P.solutionSmooth

end BoundaryValueProblemsLinearFirstCanonicalLaneLean
end HautevilleHouse