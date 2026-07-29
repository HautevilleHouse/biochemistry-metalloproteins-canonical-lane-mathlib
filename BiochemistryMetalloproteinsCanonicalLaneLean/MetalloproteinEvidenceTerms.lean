import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryMetalloproteinsCanonicalLaneLean

structure SiteEvidenceTerms (S : MetalloproteinSite) where
  coordinationClosed : S.metalCoordinationGeometrie
  accessibilityClosed : S.activeSiteAccessibility
  redoxActiveClosed : S.redoxActive
  siteClosed : Prop

def SiteEvidenceTerms.closed (S : MetalloproteinSite) (E : SiteEvidenceTerms S) : Prop :=
  E.coordinationClosed ∧ E.accessibilityClosed ∧ E.redoxActiveClosed ∧ E.siteClosed

structure CoordinationEvidenceTerms (M : MetalCoordinationPackage) where
  geometryClosed : M.geometryType = "octahedral" ∨ M.geometryType = "tetrahedral"
  bondLengthsClosed : M.bondLengths
  valenceCountClosed : M.valenceElectronCount = 6
  stabilizationClosed : M.ligandFieldStabilization

def CoordinationEvidenceTerms.closed (M : MetalCoordinationPackage) (E : CoordinationEvidenceTerms M) : Prop :=
  (M.geometryType = "octahedral" ∨ M.geometryType = "tetrahedral") ∧
  M.bondLengths ∧ M.valenceElectronCount = 6 ∧ M.ligandFieldStabilization

end HautevilleHouse
end BiochemistryMetalloproteinsCanonicalLaneLean