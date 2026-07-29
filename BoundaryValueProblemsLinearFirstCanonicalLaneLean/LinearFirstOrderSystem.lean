import BoundaryValueProblemsLinearFirstCanonicalLaneLean.RiemannianCurvature

namespace HautevilleHouse
namespace BoundaryValueProblemsLinearFirstCanonicalLaneLean

structure LinearFirstOrderSystem {G : RiemannianCurvaturePackage} where
  matrixField : VectorField G.manifold → VectorField G.manifold
  sourceTerm : VectorField G.manifold
  systemType : SystemType
  firstOrder : Prop
  linearity : Prop

def LinearFirstOrderClosed {G : RiemannianCurvaturePackage} (L : LinearFirstOrderSystem G) : Prop :=
  L.firstOrder ∧ L.linearity

end BoundaryValueProblemsLinearFirstCanonicalLaneLean
end HautevilleHouse