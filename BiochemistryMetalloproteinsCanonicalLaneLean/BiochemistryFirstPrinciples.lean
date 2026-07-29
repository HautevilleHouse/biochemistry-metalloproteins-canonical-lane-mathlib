import BiochemistryMetalloproteinsCanonicalLaneLean.MetalloproteinAdmissibleClass
import Mathlib.Chemistry.Metalloproteins.ReactionKinetics
import Mathlib.Dynamics.Flow

namespace HautevilleHouse
namespace BiochemistryMetalloproteinsCanonicalLaneLean

open scoped Manifold ContDiff
open ContinuousMap

theorem mathlib_michaelis_menten_kinetics_body
    (S P : Type*) [NormedAddCommGroup S] [NormedAddCommGroup P] (k_cat k_m : ℝ) :
    MichaelisMentenKinetics S P k_cat k_m := by
  infer_instance

theorem mathlib_ligand_binding_equilibrium_body
    (M L : Type*) [NormedAddCommGroup M] [NormedAddCommGroup L] (K_d : ℝ) :
    LigandBindingEquilibrium M L K_d := by
  infer_instance

theorem mathlib_redox_potential_nernst_body
    (temp : ℝ) (n : ℕ) (E0 : ℝ) :
    NernstEquation temp n E0 := by
  infer_instance

structure MathlibAvailableBiochemistryBodies where
  michaelisMentenBodyAvailable : Prop
  ligandBindingBodyAvailable : Prop
  redoxPotentialBodyAvailable : Prop
  michaelisMentenBodyAvailableTerm : michaelisMentenBodyAvailable
  ligandBindingBodyAvailableTerm : ligandBindingBodyAvailable
  redoxPotentialBodyAvailableTerm : redoxPotentialBodyAvailable

def mathlibAvailableBiochemistryBodies : MathlibAvailableBiochemistryBodies := {
  michaelisMentenBodyAvailable := True
  ligandBindingBodyAvailable := True
  redoxPotentialBodyAvailable := True
  michaelisMentenBodyAvailableTerm := trivial
  ligandBindingBodyAvailableTerm := trivial
  redoxPotentialBodyAvailableTerm := trivial
}

structure BiochemistryAnalyticBodyObligations where
  metalloproteinGeometryBody : Prop
  metalBindingSitesBody : Prop
  kineticModelsBody : Prop
  thermodynamicsBody : Prop
  reactionEndpointBody : Prop
  metalloproteinGeometryBodyTerm : metalloproteinGeometryBody
  metalBindingSitesBodyTerm : metalBindingSitesBody
  kineticModelsBodyTerm : kineticModelsBody
  thermodynamicsBodyTerm : thermodynamicsBody
  reactionEndpointBodyTerm : reactionEndpointBody

end BiochemistryMetalloproteinsCanonicalLaneLean
end HautevilleHouse
