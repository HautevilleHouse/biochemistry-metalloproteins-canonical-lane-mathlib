import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryMetalloproteinsCanonicalLaneLean

structure MetalCoordinationPackage where
  geometryType : String
  bondLengths : Prop
  valenceElectronCount : Nat
  ligandFieldStabilization : Prop
  geometricIsomerism : Prop

structure MetalCoordinationEvidence (M : MetalCoordinationPackage) where
  bondLengthsClosed : M.bondLengths
  ligandFieldStabilizationClosed : M.ligandFieldStabilization
  geometricIsomerismClosed : M.geometricIsomerism

def MetalCoordinationClosed (M : MetalCoordinationPackage) : Prop :=
  M.bondLengths ∧ M.ligandFieldStabilization ∧ M.geometricIsomerism

theorem metal_coordination_closed_from_evidence (M : MetalCoordinationPackage)
    (E : MetalCoordinationEvidence M) : MetalCoordinationClosed M := by
  exact And.intro E.bondLengthsClosed
    (And.intro E.ligandFieldStabilizationClosed E.geometricIsomerismClosed)

end HautevilleHouse
end BiochemistryMetalloproteinsCanonicalLaneLean