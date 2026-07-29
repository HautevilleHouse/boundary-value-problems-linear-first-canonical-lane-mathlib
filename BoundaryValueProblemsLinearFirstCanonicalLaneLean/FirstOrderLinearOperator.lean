import canonicalLaneMathlib.AdmissibleClass

/-!
# First Order Linear Operator Package
-/

namespace HautevilleHouse
namespace BoundaryValueProblemsLinearFirstCanonicalLaneLean

structure FirstOrderLinearOperator where
  domain : Type
  codomain : Type
  operator : domain → codomain
  linearity : Prop
  firstOrder : Prop

def OperatorClosed (L : FirstOrderLinearOperator) : Prop :=
  L.linearity ∧ L.firstOrder

structure OperatorEvidence (L : FirstOrderLinearOperator) where
  linearityClosed : L.linearity
  firstOrderClosed : L.firstOrder

theorem operator_closed_from_evidence (L : FirstOrderLinearOperator) (E : OperatorEvidence L) :
    OperatorClosed L := by
  exact And.intro E.linearityClosed E.firstOrderClosed

end BoundaryValueProblemsLinearFirstCanonicalLaneLean
end HautevilleHouse