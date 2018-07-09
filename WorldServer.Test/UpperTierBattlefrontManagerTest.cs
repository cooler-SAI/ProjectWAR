﻿using System.Collections.Generic;
using Common;
using Common.Database.World.Battlefront;
using GameData;
using WorldServer.World.Battlefronts.Apocalypse;
using WorldServer.World.BattleFronts.Objectives;
using FakeItEasy;
using Microsoft.VisualStudio.TestTools.UnitTesting;


namespace WorldServer.Test
{
    [TestClass]
    public class UpperTierBattleFrontManagerTest
    {
        public UpperTierBattleFrontManager manager { get; set; }
        public List<RVRProgression> SampleProgressionList { get; set; }
        public RegionMgr Region1 { get; set; }
        public RegionMgr Region3 { get; set; }
        public List<CampaignObjective> PraagBOList { get; set; }
        public List<CampaignObjective> ChaosWastesBOList { get; set; }
        public List<CampaignObjective> ThunderMountainBOList { get; set; }
        public List<CampaignObjective> KadrinValleyBOList { get; set; }

        public List<CampaignObjective> Region1BOList { get; set; }
        public List<CampaignObjective> Region3BOList { get; set; }
        public List<RegionMgr> RegionMgrs { get; set; }
        public IApocCommunications FakeComms { get; set; }


        [TestInitialize]
        public void Setup()
        {
            FakeComms = A.Fake<IApocCommunications>();
            RegionMgrs = new List<RegionMgr>();

            PraagBOList = new List<CampaignObjective>();
            ChaosWastesBOList = new List<CampaignObjective>();
            ThunderMountainBOList = new List<CampaignObjective>();
            KadrinValleyBOList = new List<CampaignObjective>();

            Region1BOList = new List<CampaignObjective>();
            Region3BOList = new List<CampaignObjective>();


            var R1ZoneList = new List<Zone_Info>();
            R1ZoneList.Add(new Zone_Info { ZoneId = 200, Name = "R1Zone200 PR", Pairing = 2, Tier = 4 });
            R1ZoneList.Add(new Zone_Info { ZoneId = 201, Name = "R1Zone201 CW", Pairing = 2, Tier = 4 });

            var R3ZoneList = new List<Zone_Info>();
            R3ZoneList.Add(new Zone_Info { ZoneId = 400, Name = "R3Zone400 TM", Pairing = 1, Tier = 4 });
            R3ZoneList.Add(new Zone_Info { ZoneId = 401, Name = "R3Zone401 KV", Pairing = 1, Tier = 4 });

            Region1 = new RegionMgr(1, R1ZoneList, "Region1", FakeComms);
            Region3 = new RegionMgr(3, R3ZoneList, "Region3", FakeComms);


            RegionMgrs.Add(Region1);
            RegionMgrs.Add(Region3);


            PraagBOList.Add(new CampaignObjective(1, "BO1", 200, 1, 4));
            PraagBOList.Add(new CampaignObjective(2, "BO2", 200, 1, 4));
            PraagBOList.Add(new CampaignObjective(3, "BO3", 200, 1, 4));
            PraagBOList.Add(new CampaignObjective(4, "BO4", 200, 1, 4));

            ChaosWastesBOList.Add(new CampaignObjective(11, "BO1", 201, 1, 4));
            ChaosWastesBOList.Add(new CampaignObjective(12, "BO2", 201, 1, 4));
            ChaosWastesBOList.Add(new CampaignObjective(13, "BO3", 201, 1, 4));
            ChaosWastesBOList.Add(new CampaignObjective(14, "BO4", 201, 1, 4));

            ThunderMountainBOList.Add(new CampaignObjective(21, "BO1", 400, 3, 4));
            ThunderMountainBOList.Add(new CampaignObjective(22, "BO2", 400, 3, 4));
            ThunderMountainBOList.Add(new CampaignObjective(23, "BO3", 400, 3, 4));
            ThunderMountainBOList.Add(new CampaignObjective(24, "BO4", 400, 3, 4));

            KadrinValleyBOList.Add(new CampaignObjective(31, "BO1", 401, 3, 4));
            KadrinValleyBOList.Add(new CampaignObjective(32, "BO2", 401, 3, 4));
            KadrinValleyBOList.Add(new CampaignObjective(33, "BO3", 401, 3, 4));
            KadrinValleyBOList.Add(new CampaignObjective(34, "BO4", 401, 3, 4));

            Region1BOList.AddRange(PraagBOList);
            Region1BOList.AddRange(ChaosWastesBOList);

            Region3BOList.AddRange(ThunderMountainBOList);
            Region3BOList.AddRange(KadrinValleyBOList);


            SampleProgressionList = new List<RVRProgression>();
            SampleProgressionList.Add(new RVRProgression
            {
                Tier = 4,
                ZoneId = 200,
                BattleFrontId = 1,
                Description = "Praag", // named for default pickup
                DestWinProgression = 2,
                OrderWinProgression = 3,
                PairingId = 2,
                RegionId = 1
            });
            SampleProgressionList.Add(new RVRProgression
            {
                Tier = 4,
                ZoneId = 201,
                BattleFrontId = 2,
                Description = "Chaos Wastes",
                DestWinProgression = 6,
                OrderWinProgression = 7,
                PairingId = 2,
                RegionId = 1
            });
            SampleProgressionList.Add(new RVRProgression
            {
                Tier = 4,
                ZoneId = 400,
                BattleFrontId = 6,
                Description = "Thunder Mountain",
                DestWinProgression = 7,
                OrderWinProgression = 2,
                PairingId = 1,
                RegionId = 3
            });
            SampleProgressionList.Add(new RVRProgression
            {
                Tier = 4,
                ZoneId = 401,
                BattleFrontId = 7,
                Description = "Kadrin Valley",
                DestWinProgression = 1,
                OrderWinProgression = 1,
                PairingId = 1,
                RegionId = 3
            });
            manager = new UpperTierBattleFrontManager(SampleProgressionList, RegionMgrs);
            // Must be run before attaching ApocBattleFronts to get an ActiveBF
            manager.ResetBattleFrontProgression();

            Region1.BattleFront = new Campaign(Region1, Region1BOList, new HashSet<Player>(), manager, FakeComms);
            Region3.BattleFront = new Campaign(Region3, Region3BOList, new HashSet<Player>(), manager, FakeComms);


        }

        [TestMethod]
        public void Constructor_NoPairings_CreatesError()
        {
            var manager = new UpperTierBattleFrontManager(null, RegionMgrs);
            Assert.IsNull(manager.ActiveBattleFront);
        }

        [TestMethod]
        public void Constructor_NoActivePairings_CreatesError()
        {
            var manager = new UpperTierBattleFrontManager(SampleProgressionList, RegionMgrs);
            Assert.IsNull(manager.ActiveBattleFront);
        }

        [TestMethod]
        public void ResetActivePairing()
        {
            var manager = new UpperTierBattleFrontManager(SampleProgressionList, RegionMgrs);
            var bf = manager.ResetBattleFrontProgression();
            Assert.IsTrue(bf.BattleFrontId == 1);
        }

        [TestMethod]
        public void ActivePairingLocated()
        {

            manager = new UpperTierBattleFrontManager(SampleProgressionList, RegionMgrs);
            // Must be run before attaching ApocBattleFronts to get an ActiveBF
            var bf = manager.ResetBattleFrontProgression();

            Region1.BattleFront = new Campaign(Region1, Region1BOList, new HashSet<Player>(), manager, FakeComms);
            Region3.BattleFront = new Campaign(Region3, Region3BOList, new HashSet<Player>(), manager, FakeComms);

            Assert.IsTrue(bf.DestWinProgression == 2);

            bf = manager.AdvanceBattleFront(Realms.REALMS_REALM_DESTRUCTION);
            Assert.IsTrue(bf.BattleFrontId == 2);
            Assert.IsTrue(bf.DestWinProgression == 6);
            Assert.IsTrue(bf.OrderWinProgression == 7);
            Assert.IsTrue(manager.ActiveBattleFront.BattleFrontId == 2);

            bf = manager.AdvanceBattleFront(Realms.REALMS_REALM_DESTRUCTION);
            Assert.IsTrue(bf.BattleFrontId == 6);
            Assert.IsTrue(bf.DestWinProgression == 7);
            Assert.IsTrue(bf.OrderWinProgression == 2);
            Assert.IsTrue(manager.ActiveBattleFront.BattleFrontId == 6);

            bf = manager.AdvanceBattleFront(Realms.REALMS_REALM_ORDER);
            Assert.IsTrue(bf.BattleFrontId == 2);
            Assert.IsTrue(bf.DestWinProgression == 6);
            Assert.IsTrue(bf.OrderWinProgression == 7);
            Assert.IsTrue(manager.ActiveBattleFront.BattleFrontId == 2);

            bf = manager.AdvanceBattleFront(Realms.REALMS_REALM_DESTRUCTION);
            Assert.IsTrue(bf.BattleFrontId == 6);
            Assert.IsTrue(bf.DestWinProgression == 7);
            Assert.IsTrue(bf.OrderWinProgression == 2);
            Assert.IsTrue(manager.ActiveBattleFront.BattleFrontId == 6);

            bf = manager.AdvanceBattleFront(Realms.REALMS_REALM_DESTRUCTION);
            Assert.IsTrue(bf.BattleFrontId == 7);
            Assert.IsTrue(bf.DestWinProgression == 1);
            Assert.IsTrue(bf.OrderWinProgression == 1);

            Assert.IsTrue(manager.ActiveBattleFront.BattleFrontId == 7);
            Assert.IsTrue(manager.ActiveBattleFront.DestWinProgression == 1);
            Assert.IsTrue(manager.ActiveBattleFront.OrderWinProgression == 1);
        }

        [TestMethod]
        public void OpenActiveBattleFrontSetsCorrectBOFlags()
        {
            manager = new UpperTierBattleFrontManager(SampleProgressionList, RegionMgrs);
            // Must be run before attaching ApocBattleFronts to get an ActiveBF
            var bf = manager.ResetBattleFrontProgression();

            Region1.BattleFront = new Campaign(Region1, Region1BOList, new HashSet<Player>(), manager, FakeComms);
            Region3.BattleFront = new Campaign(Region3, Region3BOList, new HashSet<Player>(), manager, FakeComms);
            // Open Praag (BF==1)
            manager.OpenActiveBattlefront();
            Assert.IsTrue(manager.ActiveBattleFront.BattleFrontId == 1); // Praag

            // Ensure that the BOs for this battlefront ONLY are unlocked.
            foreach (var bo in Region1.BattleFront.Objectives)
            {
                if (bo.ZoneId == 200)
                {
                    // Locking the Region should set all BOs in the region to be zonelocked (
                    Assert.IsTrue(bo.State == StateFlags.Unsecure);
                }
                else
                {
                    Assert.IsTrue(bo.State == StateFlags.ZoneLocked);
                }
            }
        }

        [TestMethod]
        public void LockBattleFront1()
        {
            var fakeCommsEngine = A.Fake<IApocCommunications>();
            manager = new UpperTierBattleFrontManager(SampleProgressionList, RegionMgrs);
            // Must be run before attaching ApocBattleFronts to get an ActiveBF
            var bf = manager.ResetBattleFrontProgression();

            Region1.BattleFront = new Campaign(Region1, Region1BOList, new HashSet<Player>(), manager, FakeComms);
            Region3.BattleFront = new Campaign(Region3, Region3BOList, new HashSet<Player>(), manager, FakeComms);
            // Open Praag (BF==1)
            manager.OpenActiveBattlefront();
            // Locking Region1.BattleFront
            Region1.BattleFront.VictoryPointProgress.DestructionVictoryPoints = 5000f;
            Region1.BattleFront.VictoryPointProgress.OrderVictoryPoints = 1000f;
            manager.LockActiveBattleFront(Realms.REALMS_REALM_DESTRUCTION);

            // Ensure battlefront 1 is locked and to Destro
            Assert.IsTrue(manager.GetBattleFrontStatus(manager.ActiveBattleFront.BattleFrontId).LockingRealm == Realms.REALMS_REALM_DESTRUCTION);
            Assert.IsTrue(manager.GetBattleFrontStatus(manager.ActiveBattleFront.BattleFrontId).Locked);
            Assert.IsTrue(manager.GetBattleFrontStatus(manager.ActiveBattleFront.BattleFrontId).FinalVictoryPoint.DestructionVictoryPoints == 5000f);
            Assert.IsTrue(manager.GetBattleFrontStatus(manager.ActiveBattleFront.BattleFrontId).FinalVictoryPoint.OrderVictoryPoints == 1000f);

            // Ensure that the BOs for this battlefront ONLY are locked.
            foreach (var apocBattlefieldObjective in Region1.BattleFront.Objectives)
            {
                // Locking a battlefront should ZoneLock the BOs in that Zone, and Open those in the next battlefront.
                if ((apocBattlefieldObjective.ZoneId == 200) || (apocBattlefieldObjective.ZoneId == 201))
                {
                    // Should be all locked.
                    Assert.IsTrue(apocBattlefieldObjective.State == StateFlags.ZoneLocked);
                }

            }
        }

        [TestMethod]
        public void LockBattleFrontAndAdvance()
        {
            var fakeCommsEngine = A.Fake<IApocCommunications>();
            manager = new UpperTierBattleFrontManager(SampleProgressionList, RegionMgrs);
            // Must be run before attaching ApocBattleFronts to get an ActiveBF
            var bf = manager.ResetBattleFrontProgression();

            Region1.BattleFront = new Campaign(Region1, Region1BOList, new HashSet<Player>(), manager, FakeComms);
            Region3.BattleFront = new Campaign(Region3, Region3BOList, new HashSet<Player>(), manager, FakeComms);
            // Open Praag (BF==1)
            manager.OpenActiveBattlefront();
            // Locking Region1.BattleFront
            Region1.BattleFront.VictoryPointProgress.DestructionVictoryPoints = 5000f;
            Region1.BattleFront.VictoryPointProgress.OrderVictoryPoints = 1000f;
            manager.LockActiveBattleFront(Realms.REALMS_REALM_DESTRUCTION);

            // Ensure battlefront 1 is locked and to Destro
            Assert.IsTrue(manager.GetBattleFrontStatus(manager.ActiveBattleFront.BattleFrontId).LockingRealm == Realms.REALMS_REALM_DESTRUCTION);
            Assert.IsTrue(manager.GetBattleFrontStatus(manager.ActiveBattleFront.BattleFrontId).Locked);
            Assert.IsTrue(manager.GetBattleFrontStatus(manager.ActiveBattleFront.BattleFrontId).FinalVictoryPoint.DestructionVictoryPoints == 5000f);
            Assert.IsTrue(manager.GetBattleFrontStatus(manager.ActiveBattleFront.BattleFrontId).FinalVictoryPoint.OrderVictoryPoints == 1000f);

            // Advance Destro
            var progression = manager.AdvanceBattleFront(Realms.REALMS_REALM_DESTRUCTION);
            Assert.IsTrue(progression.BattleFrontId == 2);
            Assert.IsTrue(progression.ZoneId == 201);

            manager.OpenActiveBattlefront();

            Assert.IsTrue(manager.GetBattleFrontStatus(manager.ActiveBattleFront.BattleFrontId).LockingRealm == Realms.REALMS_REALM_NEUTRAL);
            Assert.IsFalse(manager.GetBattleFrontStatus(manager.ActiveBattleFront.BattleFrontId).Locked);
            Assert.IsTrue(manager.GetBattleFrontStatus(manager.ActiveBattleFront.BattleFrontId).FinalVictoryPoint.DestructionVictoryPoints == 0f);
            Assert.IsTrue(manager.GetBattleFrontStatus(manager.ActiveBattleFront.BattleFrontId).FinalVictoryPoint.OrderVictoryPoints == 0f);

            foreach (var apocBattlefieldObjective in Region1.BattleFront.Objectives)
            {
                // Locking a battlefront should ZoneLock the BOs in that Zone, and Open those in the next battlefront.
                if (apocBattlefieldObjective.ZoneId == 201)
                {
                    // Should be all locked.
                    Assert.IsTrue(apocBattlefieldObjective.State == StateFlags.Unsecure);
                }
                if (apocBattlefieldObjective.ZoneId == 200)
                {
                    // Should be all locked.
                    Assert.IsTrue(apocBattlefieldObjective.State == StateFlags.ZoneLocked);
                }
            }

            Region1.BattleFront.VictoryPointProgress.DestructionVictoryPoints = 5000f;
            Region1.BattleFront.VictoryPointProgress.OrderVictoryPoints = 2200f;

            // Lock Destro again
            manager.LockActiveBattleFront(Realms.REALMS_REALM_DESTRUCTION);

            // Ensure battlefront 2 is locked and to Destro
            Assert.IsTrue(manager.GetBattleFrontStatus(manager.ActiveBattleFront.BattleFrontId).LockingRealm == Realms.REALMS_REALM_DESTRUCTION);
            Assert.IsTrue(manager.GetBattleFrontStatus(manager.ActiveBattleFront.BattleFrontId).Locked);
            Assert.IsTrue(manager.GetBattleFrontStatus(manager.ActiveBattleFront.BattleFrontId).FinalVictoryPoint.DestructionVictoryPoints == 5000f);
            Assert.IsTrue(manager.GetBattleFrontStatus(manager.ActiveBattleFront.BattleFrontId).FinalVictoryPoint.OrderVictoryPoints == 2200f);

            // Ensure that the BOs for this battlefront ONLY are locked.
            foreach (var apocBattlefieldObjective in Region1.BattleFront.Objectives)
            {
                // Locking a battlefront should ZoneLock the BOs in that Zone, and Open those in the next battlefront.
                if ((apocBattlefieldObjective.ZoneId == 200) || (apocBattlefieldObjective.ZoneId == 201))
                {
                    // Should be all locked.
                    Assert.IsTrue(apocBattlefieldObjective.State == StateFlags.ZoneLocked);
                }
            }

            // Ensure that the BOs for this battlefront ONLY are locked.
            foreach (var apocBattlefieldObjective in Region3.BattleFront.Objectives)
            {
                // Should be all locked.
                Assert.IsTrue(apocBattlefieldObjective.State == StateFlags.ZoneLocked);
            }

        }

        [TestMethod]
        public void LockAndRollRegions()
        {
            var fakeCommsEngine = A.Fake<IApocCommunications>();
            manager = new UpperTierBattleFrontManager(SampleProgressionList, RegionMgrs);
            // Must be run before attaching ApocBattleFronts to get an ActiveBF
            var bf = manager.ResetBattleFrontProgression();

            Region1.BattleFront = new Campaign(Region1, Region1BOList, new HashSet<Player>(), manager, FakeComms);
            Region3.BattleFront = new Campaign(Region3, Region3BOList, new HashSet<Player>(), manager, FakeComms);
            // Open Praag (BF==1)
            manager.OpenActiveBattlefront();
            // Locking Region1.BattleFront
            Region1.BattleFront.VictoryPointProgress.DestructionVictoryPoints = 5000f;
            Region1.BattleFront.VictoryPointProgress.OrderVictoryPoints = 1000f;
            manager.LockActiveBattleFront(Realms.REALMS_REALM_DESTRUCTION);

            // Ensure battlefront 1 is locked and to Destro
            Assert.IsTrue(manager.GetBattleFrontStatus(manager.ActiveBattleFront.BattleFrontId).LockingRealm == Realms.REALMS_REALM_DESTRUCTION);
            Assert.IsTrue(manager.GetBattleFrontStatus(manager.ActiveBattleFront.BattleFrontId).Locked);
            Assert.IsTrue(manager.GetBattleFrontStatus(manager.ActiveBattleFront.BattleFrontId).FinalVictoryPoint.DestructionVictoryPoints == 5000f);
            Assert.IsTrue(manager.GetBattleFrontStatus(manager.ActiveBattleFront.BattleFrontId).FinalVictoryPoint.OrderVictoryPoints == 1000f);
            Assert.IsTrue(manager.GetBattleFrontStatus(manager.ActiveBattleFront.BattleFrontId).RegionId ==1);

            // Advance Destro
            var progression = manager.AdvanceBattleFront(Realms.REALMS_REALM_DESTRUCTION);
            Assert.IsTrue(progression.BattleFrontId == 2);
            Assert.IsTrue(progression.ZoneId == 201);

            manager.OpenActiveBattlefront();

            Region1.BattleFront.VictoryPointProgress.DestructionVictoryPoints = 5000f;
            Region1.BattleFront.VictoryPointProgress.OrderVictoryPoints = 2200f;

            // Lock Destro again
            manager.LockActiveBattleFront(Realms.REALMS_REALM_DESTRUCTION);
            
            // Ensure battlefront is locked and to Destro
            Assert.IsTrue(manager.GetBattleFrontStatus(manager.ActiveBattleFront.BattleFrontId).LockingRealm == Realms.REALMS_REALM_DESTRUCTION);
            Assert.IsTrue(manager.GetBattleFrontStatus(manager.ActiveBattleFront.BattleFrontId).Locked);

            // Advance Destro
            var progression2 = manager.AdvanceBattleFront(Realms.REALMS_REALM_DESTRUCTION);
            Assert.IsTrue(progression2.BattleFrontId == 6);
            Assert.IsTrue(progression2.ZoneId == 400);


            // Ensure that the BOs for this battlefront ONLY are locked.
            foreach (var apocBattlefieldObjective in Region1.BattleFront.Objectives)
            {
                // Locking a battlefront should ZoneLock the BOs in that Zone, and Open those in the next battlefront.
                if (apocBattlefieldObjective.ZoneId == 400)
                {
                    // Should be all locked.
                    Assert.IsTrue(apocBattlefieldObjective.State == StateFlags.ZoneLocked);
                }
            }

            manager.OpenActiveBattlefront();

            // Ensure that the BOs for this battlefront ONLY are locked.
            foreach (var apocBattlefieldObjective in Region1.BattleFront.Objectives)
            {
                // Locking a battlefront should ZoneLock the BOs in that Zone, and Open those in the next battlefront.
                if (apocBattlefieldObjective.ZoneId == 400)
                {
                    // Should be all locked.
                    Assert.IsTrue(apocBattlefieldObjective.State == StateFlags.Unsecure);
                }
            }

            Region3.BattleFront.VictoryPointProgress.DestructionVictoryPoints = 2200f;
            Region3.BattleFront.VictoryPointProgress.OrderVictoryPoints = 5000f;

            // Lock Destro again
            manager.LockActiveBattleFront(Realms.REALMS_REALM_ORDER);

            // Ensure battlefront is locked and to Destro
            Assert.IsTrue(manager.GetBattleFrontStatus(manager.ActiveBattleFront.BattleFrontId).LockingRealm == Realms.REALMS_REALM_ORDER);
            Assert.IsTrue(manager.GetBattleFrontStatus(manager.ActiveBattleFront.BattleFrontId).Locked);

            Assert.IsTrue(manager.GetBattleFrontStatus(manager.ActiveBattleFront.BattleFrontId).FinalVictoryPoint.DestructionVictoryPoints == 2200);
            Assert.IsTrue(manager.GetBattleFrontStatus(manager.ActiveBattleFront.BattleFrontId).FinalVictoryPoint.OrderVictoryPoints == 5000f);
        }

    }
}