import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryMetalloproteinsCanonicalLaneLean

structure ElectronTransferChainPackage where
  redoxCofactors : List String
  potentialDifference : Float
  tunnelingDistance : Float
  reorganizationEnergy : Float
  drivingForce : Float

structure ElectronTransferChainEvidence (E : ElectronTransferChainPackage) where
  potentialDifferenceClosed : E.potentialDifference > 0
  tunnelingDistanceClosed : E.tunnelingDistance < 20
  reorganizationEnergyClosed : E.reorganizationEnergy > 0
  drivingForceClosed : E.drivingForce > 0

def ElectronTransferChainClosed (E : ElectronTransferChainPackage) : Prop :=
  E.potentialDifference > 0 ∧ E.tunnelingDistance < 20 ∧
  E.reorganizationEnergy > 0 ∧ E.drivingForce > 0

theorem electron_transfer_chain_closed_from_evidence (E : ElectronTransferChainPackage)
    (Ev : ElectronTransferChainEvidence E) : ElectronTransferChainClosed E := by
  exact And.intro Ev.potentialDifferenceClosed
    (And.intro Ev.tunnelingDistanceClosed
      (And.intro Ev.reorganizationEnergyClosed Ev.drivingForceClosed))

end HautevilleHouse
end BiochemistryMetalloproteinsCanonicalLaneLean