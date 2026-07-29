import BoundaryValueProblemsLinearFirstCanonicalLaneLean.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace BoundaryValueProblemsLinearFirstCanonicalLaneLean

structure BVPLinearFirstPackage where
  interval : ℝ × ℝ
  coefficientFunction : ℝ → ℝ
  forcingFunction : ℝ → ℝ
  boundaryCondition : ℝ → ℝ
  solutionSpaceDimension : ℕ
  linearityVerified : Prop
  homogeneityVerified : Prop

structure BVPLinearFirstEvidence (P : BVPLinearFirstPackage) where
  linearityVerifiedClosed : P.linearityVerified
  homogeneityVerifiedClosed : P.homogeneityVerified

def BVPLinearFirstClosed (P : BVPLinearFirstPackage) : Prop :=
  P.linearityVerified ∧ P.homogeneityVerified

theorem bvp_linear_first_closed_from_evidence
    (P : BVPLinearFirstPackage) (E : BVPLinearFirstEvidence P) :
    BVPLinearFirstClosed P := by
  exact And.intro E.linearityVerifiedClosed E.homogeneityVerifiedClosed

end BoundaryValueProblemsLinearFirstCanonicalLaneLean
end HautevilleHouse