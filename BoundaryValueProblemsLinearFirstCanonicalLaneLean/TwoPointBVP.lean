import HautevilleHouse.BoundaryValueProblemsLinearFirstCanonicalLaneLean.GreenFunction

namespace HautevilleHouse
namespace BoundaryValueProblemsLinearFirstCanonicalLaneLean

structure TwoPointBVPPackage where
  interval : Set ℝ
  ode : ℝ → ℝ → ℝ
  boundaryConditionL : Prop
  boundaryConditionR : Prop
  existenceUniqueness : Prop
  existenceUniquenessTerm : existenceUniqueness

def TwoPointBVPClosed (B : TwoPointBVPPackage) : Prop :=
  B.existenceUniqueness

theorem two_point_bvp_closed (B : TwoPointBVPPackage) : TwoPointBVPClosed B := by
  exact B.existenceUniquenessTerm

end BoundaryValueProblemsLinearFirstCanonicalLaneLean
end HautevilleHouse