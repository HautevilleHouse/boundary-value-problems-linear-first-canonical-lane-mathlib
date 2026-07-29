import BoundaryValueProblemsLinearFirstCanonicalLaneLean.AdmissibleClass

/-!
# BVP Function Space Package
-/

namespace HautevilleHouse
namespace BoundaryValueProblemsLinearFirstCanonicalLaneLean

structure BVFunctionSpacePackage where
  functionSpace : Type
  normDefinition : (functionSpace → ℝ) → ℝ
  completenessProperty : Prop
  boundedLinearFunctional : (functionSpace → ℝ) → Prop
  weakDerivativeDefined : Prop

def BVFunctionSpaceClosed (P : BVFunctionSpacePackage) : Prop :=
  P.completenessProperty ∧ P.weakDerivativeDefined

end BoundaryValueProblemsLinearFirstCanonicalLaneLean
end HautevilleHouse