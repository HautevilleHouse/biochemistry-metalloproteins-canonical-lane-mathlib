import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryMetalloproteinsCanonicalLaneLean

structure MetalloproteinAdmittedObject where
  protein : Type
  activeSite : Type
  metalIon : Type
  coordinationGeometry : Prop
  redoxActivity : Prop

structure AdmissibleClass where
  object : MetalloproteinAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  MetalloproteinWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BiochemistryMetalloproteinsCanonicalLaneLean
end HautevilleHouse