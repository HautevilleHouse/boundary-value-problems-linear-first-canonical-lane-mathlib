import canonicalLaneMathlib.AdmissibleClass

/-!
# Boundary Condition Package
-/

namespace HautevilleHouse
namespace BoundaryValueProblemsLinearFirstCanonicalLaneLean

structure BoundaryCondition where
  domain : Type
  boundaryOperator : domain → Prop
  consistency : Prop
  linearity : Prop

def BoundaryConditionClosed (B : BoundaryCondition) : Prop :=
  B.consistency ∧ B.linearity

structure BoundaryConditionEvidence (B : BoundaryCondition) where
  consistencyClosed : B.consistency
  linearityClosed : B.linearity

theorem boundary_condition_closed_from_evidence (B : BoundaryCondition) (E : BoundaryConditionEvidence B) :
    BoundaryConditionClosed B := by
  exact And.intro E.consistencyClosed E.linearityClosed

end BoundaryValueProblemsLinearFirstCanonicalLaneLean
end HautevilleHouse