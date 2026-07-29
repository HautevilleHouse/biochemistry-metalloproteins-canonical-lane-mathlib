import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryMetalloproteinsCanonicalLaneLean

structure ReactionKineticsPackage where
  rateConstants : Prop
  michaelisMenten : Prop
  substrateBinding : Prop
  productFormation : Prop

structure ReactionKineticsEvidence (K : ReactionKineticsPackage) where
  rateConstantsClosed : K.rateConstants
  michaelisMentenClosed : K.michaelisMenten
  substrateBindingClosed : K.substrateBinding
  productFormationClosed : K.productFormation

def ReactionKineticsClosed (K : ReactionKineticsPackage) : Prop :=
  K.rateConstants ∧ K.michaelisMenten ∧ K.substrateBinding ∧ K.productFormation

theorem reaction_kinetics_closed_from_evidence (K : ReactionKineticsPackage)
    (E : ReactionKineticsEvidence K) : ReactionKineticsClosed K := by
  exact And.intro E.rateConstantsClosed
    (And.intro E.michaelisMentenClosed
      (And.intro E.substrateBindingClosed E.productFormationClosed))

end BiochemistryMetalloproteinsCanonicalLaneLean
end HautevilleHouse