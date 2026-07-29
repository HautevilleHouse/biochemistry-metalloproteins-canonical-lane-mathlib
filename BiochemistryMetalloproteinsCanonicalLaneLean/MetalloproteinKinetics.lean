import BiochemistryMetalloproteinsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryMetalloproteinsCanonicalLaneLean

structure ReactionKineticsPackage where
  rateLaw : Type
  activationEnergy : Type
  preExponentialFactor : Type
  rateConstant : Type
  enzymeSubstrateBinding : Prop
  catalyticEfficiency : Prop

structure ReactionKineticsEvidence (K : ReactionKineticsPackage) where
  rateLawClosed : K.rateLaw
  activationEnergyClosed : K.activationEnergy
  preExponentialFactorClosed : K.preExponentialFactor
  rateConstantClosed : K.rateConstant
  enzymeSubstrateBindingClosed : K.enzymeSubstrateBinding
  catalyticEfficiencyClosed : K.catalyticEfficiency

def ReactionKineticsClosed (K : ReactionKineticsPackage) : Prop :=
  K.rateLaw ∧ K.activationEnergy ∧ K.preExponentialFactor ∧
  K.rateConstant ∧ K.enzymeSubstrateBinding ∧ K.catalyticEfficiency

theorem reaction_kinetics_closed_from_evidence (K : ReactionKineticsPackage)
    (E : ReactionKineticsEvidence K) : ReactionKineticsClosed K := by
  exact And.intro E.rateLawClosed
    (And.intro E.activationEnergyClosed
      (And.intro E.preExponentialFactorClosed
        (And.intro E.rateConstantClosed
          (And.intro E.enzymeSubstrateBindingClosed E.catalyticEfficiencyClosed))))

end BiochemistryMetalloproteinsCanonicalLaneLean
end HautevilleHouse