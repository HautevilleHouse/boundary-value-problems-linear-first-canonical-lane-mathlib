import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BoundaryValueProblemsLinearFirstCanonicalLaneLean.FirstOrderLinearODEPackage
import HautevilleHouse.BoundaryValueProblemsLinearFirstCanonicalLaneLean.BoundaryConditionPackage
import HautevilleHouse.BoundaryValueProblemsLinearFirstCanonicalLaneLean.SolutionExistencePackage

namespace HautevilleHouse
namespace BoundaryValueProblemsLinearFirstCanonicalLaneLean

structure BVPAdmittedObject where
  odePackage : FirstOrderLinearODEPackage
  bcPackage : BoundaryConditionPackage
  solutionPackage : SolutionExistencePackage
  compatibility : Prop
  compatibilityTerm : compatibility

def BVPEndpointSatisfied (O : BVPAdmittedObject) : Prop :=
  O.solutionPackage.existence

def BVPRemainderRecorded (O : BVPAdmittedObject) : Prop :=
  ¬O.solutionPackage.existence

end BoundaryValueProblemsLinearFirstCanonicalLaneLean
end HautevilleHouse