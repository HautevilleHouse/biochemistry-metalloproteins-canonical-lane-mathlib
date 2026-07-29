import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryMetalloproteinsCanonicalLaneLean

structure MetalloproteinSite where
  metalIon : Type
  coordinationSphere : Type
  ligands : Type
  proteinMatrix : Type
  metalCoordinationGeometrie : Prop
  activeSiteAccessibility : Prop
  redoxActive : Prop

structure MetalloproteinAdmittedObject where
  site : MetalloproteinSite
  electronTransferCapable : Prop
  catalyticFunction : Prop
  conclusion : electronTransferCapable ∧ catalyticFunction

def MetalloproteinWitnessClosed (O : MetalloproteinAdmittedObject) : Prop :=
  O.conclusion

end HautevilleHouse
end BiochemistryMetalloproteinsCanonicalLaneLean