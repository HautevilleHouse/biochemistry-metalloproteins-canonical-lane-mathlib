import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryMetalloproteinsCanonicalLaneLean

structure CatalyticMechanismCertificate where
  substrateBinding : Prop
  transitionStateStabilization : Prop
  productRelease : Prop
  catalyticCyclicity : Prop
  turnoverNumber : Float
  michaelisConstant : Float
  substrateBindingClosed : substrateBinding
  transitionStateStabilizationClosed : transitionStateStabilization
  productReleaseClosed : productRelease
  catalyticCyclicityClosed : catalyticCyclicity
  catalyticEvidence : CatalyticMechanismEvidence

structure CatalyticMechanismEvidence where
  bindingConstant : Float
  activationEnergy : Float
  rateConstant : Float

def CatalyticMechanismCertificateClosed (C : CatalyticMechanismCertificate) : Prop :=
  C.substrateBinding ∧ C.transitionStateStabilization ∧ C.productRelease ∧ C.catalyticCyclicity

theorem catalytic_mechanism_certificate_closed (C : CatalyticMechanismCertificate) :
    CatalyticMechanismCertificateClosed C := by
  exact And.intro C.substrateBindingClosed
    (And.intro C.transitionStateStabilizationClosed
      (And.intro C.productReleaseClosed C.catalyticCyclicityClosed))

end HautevilleHouse
end BiochemistryMetalloproteinsCanonicalLaneLean