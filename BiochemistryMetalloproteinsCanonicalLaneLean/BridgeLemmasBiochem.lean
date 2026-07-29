import BiochemistryMetalloproteinsCanonicalLaneLean.MetalloproteinAdmissibleClass

namespace HautevilleHouse
namespace BiochemistryMetalloproteinsCanonicalLaneLean

def bridgeClosed (A : MetalloproteinAdmissibleClass) : Prop :=
  MetalloproteinWitnessClosed A.object

theorem bridge_from_admissible_class (A : MetalloproteinAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end BiochemistryMetalloproteinsCanonicalLaneLean
end HautevilleHouse
