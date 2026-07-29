import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryValueProblemsLinearFirstCanonicalLaneLean

inductive BoundaryConditionType where
  | dirichlet
  | neumann

structure BoundaryConditionPackage where
  boundaryPoint : Type u
  boundaryTopology : TopologicalSpace boundaryPoint
  bcType : BoundaryConditionType
  bcValue : ℝ
  conditionApplied : Prop
  conditionSmooth : Prop

structure BoundaryConditionEvidence (B : BoundaryConditionPackage) where
  conditionAppliedClosed : B.conditionApplied
  conditionSmoothClosed : B.conditionSmooth

def BoundaryConditionClosed (B : BoundaryConditionPackage) : Prop :=
  B.conditionApplied ∧ B.conditionSmooth

theorem boundary_condition_closed_from_evidence (B : BoundaryConditionPackage)
    (E : BoundaryConditionEvidence B) : BoundaryConditionClosed B := by
  exact And.intro E.conditionAppliedClosed E.conditionSmoothClosed

end BoundaryValueProblemsLinearFirstCanonicalLaneLean
end HautevilleHouse