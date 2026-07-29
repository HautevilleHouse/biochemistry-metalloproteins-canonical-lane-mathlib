import BiochemistryMetalloproteinsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryMetalloproteinsCanonicalLaneLean

structure MolecularOrbitalPackage where
  ligandFieldTheory : Type
  crystalFieldSplitting : Type
  dOrbitalOccupation : Type
  spinState : Type
  coordinationGeometry : Prop
  jahnTellerEffect : Prop

structure MolecularOrbitalEvidence (M : MolecularOrbitalPackage) where
  ligandFieldTheoryClosed : M.ligandFieldTheory
  crystalFieldSplittingClosed : M.crystalFieldSplitting
  dOrbitalOccupationClosed : M.dOrbitalOccupation
  spinStateClosed : M.spinState
  coordinationGeometryClosed : M.coordinationGeometry
  jahnTellerEffectClosed : M.jahnTellerEffect

def MolecularOrbitalClosed (M : MolecularOrbitalPackage) : Prop :=
  M.ligandFieldTheory ∧ M.crystalFieldSplitting ∧ M.dOrbitalOccupation ∧
  M.spinState ∧ M.coordinationGeometry ∧ M.jahnTellerEffect

theorem molecular_orbital_closed_from_evidence (M : MolecularOrbitalPackage)
    (E : MolecularOrbitalEvidence M) : MolecularOrbitalClosed M := by
  exact And.intro E.ligandFieldTheoryClosed
    (And.intro E.crystalFieldSplittingClosed
      (And.intro E.dOrbitalOccupationClosed
        (And.intro E.spinStateClosed
          (And.intro E.coordinationGeometryClosed E.jahnTellerEffectClosed))))

end BiochemistryMetalloproteinsCanonicalLaneLean
end HautevilleHouse