import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryMetalloproteinsCanonicalLaneLean

structure MetalloproteinSite where
  metalIon : String
  coordinationGeometry : String
  activeSiteGeometry : Prop
  metalOxidationState : Prop

structure MetalloproteinAdmittedObject where
  site : MetalloproteinSite
  catalyticFunction : Prop
  redoxActive : Prop
  structureResolved : Prop
  conclusion : catalyticFunction ∧ redoxActive ∧ structureResolved

end BiochemistryMetalloproteinsCanonicalLaneLean
end HautevilleHouse