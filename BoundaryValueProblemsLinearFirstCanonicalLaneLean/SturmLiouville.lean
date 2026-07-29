import HautevilleHouse.BoundaryValueProblemsLinearFirstCanonicalLaneLean.TwoPointBVP
import Mathlib.Analysis.SpecialFunctions.SturmLiouville

namespace HautevilleHouse
namespace BoundaryValueProblemsLinearFirstCanonicalLaneLean

structure SturmLiouvillePackage where
  interval : Set ℝ
  p : ℝ → ℝ
  q : ℝ → ℝ
  w : ℝ → ℝ
  boundaryConditions : Prop
  eigenfunctionExpansion : Prop
  boundaryConditionsTerm : boundaryConditions
  eigenfunctionExpansionTerm : eigenfunctionExpansion

def SturmLiouvilleClosed (S : SturmLiouvillePackage) : Prop :=
  S.boundaryConditions ∧ S.eigenfunctionExpansion

theorem sturm_liouville_closed (S : SturmLiouvillePackage) : SturmLiouvilleClosed S := by
  exact And.intro S.boundaryConditionsTerm S.eigenfunctionExpansionTerm

end BoundaryValueProblemsLinearFirstCanonicalLaneLean
end HautevilleHouse