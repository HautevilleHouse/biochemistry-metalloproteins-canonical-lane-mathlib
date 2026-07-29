import BiochemistryMetalloproteinsCanonicalLaneLean.MetalloproteinGeometry

namespace HautevilleHouse
namespace BiochemistryMetalloproteinsCanonicalLaneLean

structure MetalBindingSitesPackage {E : MetalloproteinEnvironment} {G : MetalloproteinGeometryPackage E} where
  ligandFieldCovered : Prop
  coordinationSphereDecomposition : Prop
  bindingAffinityCompatibility : Prop
  redoxPotentialShift : Prop

structure MetalBindingSitesEvidence {E : MetalloproteinEnvironment} {G : MetalloproteinGeometryPackage E} (C : MetalBindingSitesPackage G) where
  ligandFieldCoveredClosed : C.ligandFieldCovered
  coordinationSphereDecompositionClosed : C.coordinationSphereDecomposition
  bindingAffinityCompatibilityClosed : C.bindingAffinityCompatibility
  redoxPotentialShiftClosed : C.redoxPotentialShift

def MetalBindingSitesClosed {E : MetalloproteinEnvironment} {G : MetalloproteinGeometryPackage E} (C : MetalBindingSitesPackage G) : Prop :=
  C.ligandFieldCovered ∧ C.coordinationSphereDecomposition ∧ C.bindingAffinityCompatibility ∧ C.redoxPotentialShift

theorem metal_binding_sites_closed_from_evidence
    {E : MetalloproteinEnvironment} {G : MetalloproteinGeometryPackage E}
    (C : MetalBindingSitesPackage G) (Ev : MetalBindingSitesEvidence C) : MetalBindingSitesClosed C :=
  by
    exact And.intro Ev.ligandFieldCoveredClosed
      (And.intro Ev.coordinationSphereDecompositionClosed
        (And.intro Ev.bindingAffinityCompatibilityClosed Ev.redoxPotentialShiftClosed))

end BiochemistryMetalloproteinsCanonicalLaneLean
end HautevilleHouse
