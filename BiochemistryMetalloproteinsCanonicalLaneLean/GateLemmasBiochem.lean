import BiochemistryMetalloproteinsCanonicalLaneLean.BridgeLemmasBiochem

namespace HautevilleHouse
namespace BiochemistryMetalloproteinsCanonicalLaneLean

def gateClosed (A : MetalloproteinAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : MetalloproteinAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end BiochemistryMetalloproteinsCanonicalLaneLean
end HautevilleHouse
