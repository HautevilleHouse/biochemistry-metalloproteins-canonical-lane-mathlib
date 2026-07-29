import canonicalLaneMathlib.AdmissibleClass
import BiochemistryMetalloproteinsCanonicalLaneLean.BridgeLemmas
import BiochemistryMetalloproteinsCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace BiochemistryMetalloproteinsCanonicalLaneLean

def ConstrainedMetalloproteinClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_metalloprotein_endgame (A : AdmissibleClass) :
    ConstrainedMetalloproteinClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BiochemistryMetalloproteinsCanonicalLaneLean
end HautevilleHouse