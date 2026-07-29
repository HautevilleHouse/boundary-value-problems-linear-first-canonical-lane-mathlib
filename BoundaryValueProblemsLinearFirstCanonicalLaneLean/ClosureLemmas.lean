import BoundaryValueProblemsLinearFirstCanonicalLaneLean.AdmissibleClass
import BoundaryValueProblemsLinearFirstCanonicalLaneLean.LinearFirstBVP

namespace HautevilleHouse
namespace BoundaryValueProblemsLinearFirstCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.solutionExists ∧ A.uniqueSolution

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact And.intro A.solutionExists A.uniqueSolution

def gateClosed (A : AdmissibleClass) : Prop :=
  A.boundaryConditionSatisfied ∨ (¬ A.solutionExists)

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end BoundaryValueProblemsLinearFirstCanonicalLaneLean
end HautevilleHouse