import BiochemistryMetalloproteinsCanonicalLaneLean.MetalloproteinObjects

namespace HautevilleHouse
namespace BiochemistryMetalloproteinsCanonicalLaneLean

structure MetalloproteinAdmissibleClass where
  object : MetalloproteinAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : MetalloproteinAdmissibleClass) : Prop :=
  MetalloproteinWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BiochemistryMetalloproteinsCanonicalLaneLean
end HautevilleHouse
