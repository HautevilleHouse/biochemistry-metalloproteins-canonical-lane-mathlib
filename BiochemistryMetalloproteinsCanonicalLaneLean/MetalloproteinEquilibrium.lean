import BiochemistryMetalloproteinsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryMetalloproteinsCanonicalLaneLean

structure ChemicalEquilibriumPackage where
  bindingConstant : Type
  dissociationConstant : Type
  cooperativity : Prop
  allostericRegulation : Prop
  phDependence : Prop
  ionicStrength : Prop

structure ChemicalEquilibriumEvidence (C : ChemicalEquilibriumPackage) where
  bindingConstantClosed : C.bindingConstant
  dissociationConstantClosed : C.dissociationConstant
  cooperativityClosed : C.cooperativity
  allostericRegulationClosed : C.allostericRegulation
  phDependenceClosed : C.phDependence
  ionicStrengthClosed : C.ionicStrength

def ChemicalEquilibriumClosed (C : ChemicalEquilibriumPackage) : Prop :=
  C.bindingConstant ∧ C.dissociationConstant ∧ C.cooperativity ∧
  C.allostericRegulation ∧ C.phDependence ∧ C.ionicStrength

theorem chemical_equilibrium_closed_from_evidence (C : ChemicalEquilibriumPackage)
    (E : ChemicalEquilibriumEvidence C) : ChemicalEquilibriumClosed C := by
  exact And.intro E.bindingConstantClosed
    (And.intro E.dissociationConstantClosed
      (And.intro E.cooperativityClosed
        (And.intro E.allostericRegulationClosed
          (And.intro E.phDependenceClosed E.ionicStrengthClosed))))

end BiochemistryMetalloproteinsCanonicalLaneLean
end HautevilleHouse