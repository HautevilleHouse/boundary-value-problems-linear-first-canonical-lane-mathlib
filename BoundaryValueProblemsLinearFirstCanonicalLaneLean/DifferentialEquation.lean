import BoundaryValueProblemsLinearFirstCanonicalLaneLean.AdmissibleClass

/-!
# Differential Equation Package

Package for linear first-order ordinary differential equations.
-/

namespace HautevilleHouse
namespace BoundaryValueProblemsLinearFirstCanonicalLaneLean

structure DifferentialEquationPackage where
  domain : Type u
  coefficient : domain → ℝ
  forcingTerm : domain → ℝ
  solutionSpace : Type v
  linearityWitness : Prop
  initialCondition : domain → ℝ → Prop
  formalExistence : Prop

structure DifferentialEquationEvidence (E : DifferentialEquationPackage) where
  linearityWitnessClosed : E.linearityWitness
  formalExistenceClosed : E.formalExistence

def DifferentialEquationClosed (E : DifferentialEquationPackage) : Prop :=
  E.linearityWitness ∧ E.formalExistence

theorem differential_equation_closed_from_evidence
    (E : DifferentialEquationPackage) (Ev : DifferentialEquationEvidence E) :
    DifferentialEquationClosed E := by
  exact And.intro Ev.linearityWitnessClosed Ev.formalExistenceClosed

end BoundaryValueProblemsLinearFirstCanonicalLaneLean
end HautevilleHouse