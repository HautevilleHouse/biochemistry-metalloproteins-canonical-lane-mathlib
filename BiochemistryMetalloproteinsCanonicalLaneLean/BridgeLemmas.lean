import canonicalLaneMathlib.AdmissibleClass
import BiochemistryMetalloproteinsCanonicalLaneLean.MetalloproteinAdmittedObject

namespace HautevilleHouse
namespace BiochemistryMetalloproteinsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.catalyticFunction ∧ A.object.redoxActive ∧ A.object.structureResolved

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end BiochemistryMetalloproteinsCanonicalLaneLean
end HautevilleHouse