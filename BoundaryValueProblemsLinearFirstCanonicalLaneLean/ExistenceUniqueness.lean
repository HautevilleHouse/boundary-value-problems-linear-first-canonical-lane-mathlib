import BoundaryValueProblemsLinearFirstCanonicalLaneLean.AdmissibleClass
import BoundaryValueProblemsLinearFirstCanonicalLaneLean.FirstOrderLinearODE

/-!
# Existence and Uniqueness Package
-/

namespace HautevilleHouse
namespace BoundaryValueProblemsLinearFirstCanonicalLaneLean

structure ExistenceUniquenessPackage {F : FirstOrderLinearODEPackage} where
  intervalCompact : Prop
  coefficientContinuous : Prop
  forcingContinuous : Prop
  localExistenceInterval : Prop
  uniquenessOnOverlap : Prop
  continuousDependence : Prop
  globalSolutionExists : Prop

def ExistenceUniquenessClosed {F : FirstOrderLinearODEPackage} (P : ExistenceUniquenessPackage F) : Prop :=
  P.globalSolutionExists ∧ P.uniquenessOnOverlap ∧ P.continuousDependence

end BoundaryValueProblemsLinearFirstCanonicalLaneLean
end HautevilleHouse