import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryValueProblemsLinearFirstCanonicalLaneLean

structure FirstOrderLinearODEPackage where
  domainI : Type u
  domainTopology : TopologicalSpace domainI
  coefficientFunction : domainI → ℝ
  forcingFunction : domainI → ℝ
  odeEquation : Prop
  coefficientContinuous : Prop
  forcingContinuous : Prop

structure FirstOrderLinearODEEvidence (P : FirstOrderLinearODEPackage) where
  odeEquationClosed : P.odeEquation
  coefficientContinuousClosed : P.coefficientContinuous
  forcingContinuousClosed : P.forcingContinuous

def FirstOrderLinearODEClosed (P : FirstOrderLinearODEPackage) : Prop :=
  P.odeEquation ∧ P.coefficientContinuous ∧ P.forcingContinuous

theorem first_order_linear_ode_closed_from_evidence (P : FirstOrderLinearODEPackage)
    (E : FirstOrderLinearODEEvidence P) : FirstOrderLinearODEClosed P := by
  exact And.intro E.odeEquationClosed (And.intro E.coefficientContinuousClosed E.forcingContinuousClosed)

end BoundaryValueProblemsLinearFirstCanonicalLaneLean
end HautevilleHouse