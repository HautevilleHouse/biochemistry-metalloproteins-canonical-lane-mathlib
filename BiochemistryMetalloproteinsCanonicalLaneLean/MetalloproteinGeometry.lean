import BiochemistryMetalloproteinsCanonicalLaneLean.KineticModels

namespace HautevilleHouse
namespace BiochemistryMetalloproteinsCanonicalLaneLean

structure MetalloproteinGeometryPackage {E : MetalloproteinEnvironment} {B : MetalBindingSitesPackage E}
    {K : KineticModelsPackage B} (T : ThermodynamicsPackage K) where
  foldedStructureAlternative : Prop
  ligandFieldStabilization : Prop
  coordinationGeometryClassified : Prop
  metalIonCoordinationFavorsFolding : Prop

structure MetalloproteinGeometryEvidence {E : MetalloproteinEnvironment} {B : MetalBindingSitesPackage E}
    {K : KineticModelsPackage B} {T : ThermodynamicsPackage K} (Z : MetalloproteinGeometryPackage T) where
  foldedStructureAlternativeClosed : Z.foldedStructureAlternative
  ligandFieldStabilizationClosed : Z.ligandFieldStabilization
  coordinationGeometryClassifiedClosed : Z.coordinationGeometryClassified
  metalIonCoordinationFavorsFoldingClosed : Z.metalIonCoordinationFavorsFolding

def MetalloproteinGeometryClosed {E : MetalloproteinEnvironment} {B : MetalBindingSitesPackage E}
    {K : KineticModelsPackage B} {T : ThermodynamicsPackage K} (Z : MetalloproteinGeometryPackage T) : Prop :=
  Z.foldedStructureAlternative ∧ Z.ligandFieldStabilization ∧ Z.coordinationGeometryClassified ∧ Z.metalIonCoordinationFavorsFolding

theorem metalloprotein_geometry_closed_from_evidence
    {E : MetalloproteinEnvironment} {B : MetalBindingSitesPackage E}
    {K : KineticModelsPackage B} {T : ThermodynamicsPackage K}
    (Z : MetalloproteinGeometryPackage T) (Ev : MetalloproteinGeometryEvidence Z) : MetalloproteinGeometryClosed Z :=
  by
    exact And.intro Ev.foldedStructureAlternativeClosed
      (And.intro Ev.ligandFieldStabilizationClosed
        (And.intro Ev.coordinationGeometryClassifiedClosed Ev.metalIonCoordinationFavorsFoldingClosed))

end BiochemistryMetalloproteinsCanonicalLaneLean
end HautevilleHouse
