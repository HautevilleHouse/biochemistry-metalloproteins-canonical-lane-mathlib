import BiochemistryMetalloproteinsCanonicalLaneLean.GateLemmasBiochem

namespace HautevilleHouse
namespace BiochemistryMetalloproteinsCanonicalLaneLean

def ConstrainedMetalloproteinClosure (A : MetalloproteinAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_metalloprotein_endgame (A : MetalloproteinAdmissibleClass) :
    ConstrainedMetalloproteinClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BiochemistryMetalloproteinsCanonicalLaneLean
end HautevilleHouse
