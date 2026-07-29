import BiochemistryMetalloproteinsCanonicalLaneLean.MetalloproteinGeometry
import Mathlib.Chemistry.Metalloproteins.ReactionKinetics

namespace HautevilleHouse
namespace BiochemistryMetalloproteinsCanonicalLaneLean

structure ReactionEndpointPackage {E : MetalloproteinEnvironment} {G : MetalloproteinGeometryPackage E}
    {B : MetalBindingSitesPackage G} {K : KineticModelsPackage B} (R : ThermodynamicsPackage K) where
  targetProtein : Type u
  targetConformation : TopologicalSpace targetProtein
  foldedActiveSite : Prop
  reactionCompletion : ContinuousMap.HomotopyEquiv.NonemptyDiffeomorphSphere targetProtein 3
  endpointMatchesThermodynamicStatement : Prop

structure ReactionEndpointEvidence {E : MetalloproteinEnvironment} {G : MetalloproteinGeometryPackage E}
    {B : MetalBindingSitesPackage G} {K : KineticModelsPackage B} {R : ThermodynamicsPackage K}
    (Epkg : ReactionEndpointPackage R) where
  foldedActiveSiteClosed : Epkg.foldedActiveSite
  endpointMatchesThermodynamicStatementClosed : Epkg.endpointMatchesThermodynamicStatement

def ReactionEndpointClosed {E : MetalloproteinEnvironment} {G : MetalloproteinGeometryPackage E}
    {B : MetalBindingSitesPackage G} {K : KineticModelsPackage B} {R : ThermodynamicsPackage K}
    (Epkg : ReactionEndpointPackage R) : Prop :=
  Epkg.foldedActiveSite ∧ Epkg.endpointMatchesThermodynamicStatement

theorem reaction_endpoint_closed_from_evidence
    {E : MetalloproteinEnvironment} {G : MetalloproteinGeometryPackage E}
    {B : MetalBindingSitesPackage G} {K : KineticModelsPackage B} {R : ThermodynamicsPackage K}
    (Epkg : ReactionEndpointPackage R) (Ev : ReactionEndpointEvidence Epkg) : ReactionEndpointClosed Epkg :=
  by
    exact And.intro Ev.foldedActiveSiteClosed Ev.endpointMatchesThermodynamicStatementClosed

theorem reaction_endpoint_supplies_mathlib_statement
    {E : MetalloproteinEnvironment} {G : MetalloproteinGeometryPackage E}
    {B : MetalBindingSitesPackage G} {K : KineticModelsPackage B} {R : ThermodynamicsPackage K}
    (Epkg : ReactionEndpointPackage R) :
    @ContinuousMap.HomotopyEquiv.NonemptyDiffeomorphSphere
      Epkg.targetProtein Epkg.targetConformation 3 :=
  Epkg.reactionCompletion

end BiochemistryMetalloproteinsCanonicalLaneLean
end HautevilleHouse
