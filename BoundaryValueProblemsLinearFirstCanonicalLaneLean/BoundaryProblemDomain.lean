import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryValueProblemsLinearFirstCanonicalLaneLean

structure BoundaryProblemSpace where
  interval : Type u
  functionSpace : Type v
  linearOperator : Type w
  boundaryCondition : Type x
  solutionSpace : Type y

definition domainRegularity : Prop := True

structure AdmissibleClass where
  object : BoundaryProblemSpace
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (domainRegularity ∧ A.endpointSatisfied) ∨ A.remainderRecorded

end BoundaryValueProblemsLinearFirstCanonicalLaneLean
end HautevilleHouse