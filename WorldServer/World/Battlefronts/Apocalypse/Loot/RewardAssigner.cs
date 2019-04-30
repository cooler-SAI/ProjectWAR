﻿using NLog;
using System;
using System.Collections.Generic;
using System.Linq;
using WorldServer.World.Battlefronts.Bounty;

namespace WorldServer.World.Battlefronts.Apocalypse.Loot
{
    /// <summary>
    /// Responsibility : To calculate the number of rewards, select players and assign 
    /// </summary>
    public class RewardAssigner : IRewardAssigner
    {
        public Random RandomGenerator { get; set; }

        private static readonly Logger RewardLogger = LogManager.GetLogger("RewardLogger");
        public RewardAssigner(Random randomGenerator)
        {
            RandomGenerator = randomGenerator;
        }

        /// <summary>
        /// Increase the number of possible awards based upon the number of eligible Players.
        /// </summary>
        /// <param name="eligiblePlayers"></param>
        /// <returns></returns>
        public byte DetermineNumberOfAwards(int eligiblePlayers)
        {
            RewardLogger.Info($"{eligiblePlayers}");

            byte numberOfAwards = 0;
            // Simple set for low pop for now. TODO base this upon population sizes and % chance to win a bag per flip.
            if (eligiblePlayers == 0)
                numberOfAwards = 0;
            else
            {
                if (eligiblePlayers < 10)
                    numberOfAwards = 4;
                else
                {
                    if (eligiblePlayers < 20)
                        numberOfAwards = 8;
                    else
                    {
                        numberOfAwards = eligiblePlayers < 40 ? (byte) 16 : (byte) 20;
                    }
                }
            }
            if (eligiblePlayers < numberOfAwards)
                numberOfAwards = (byte)eligiblePlayers;

            RewardLogger.Info($"Number of eligible players {eligiblePlayers}, number of Awards {numberOfAwards}");

            return numberOfAwards;
        }


        public List<LootBagTypeDefinition> DetermineBagTypes(int numberOfBags)
        {
            // Define the types of bags to give
            var lootBagDefinitions = new LootBagTypeDefinition().BuildLootBagTypeDefinitions(numberOfBags);
            RewardLogger.Debug($"Number loot bags {lootBagDefinitions.Count} to award.");

            return lootBagDefinitions;
        }

        /// <summary>
        /// Assign a bagdefinition to a player that is eligible.
        /// </summary>
        /// <param name="contributionManager"></param>
        /// <param name="numberOfBagsToAward"></param>
        /// <param name="bagDefinitions"></param>
        /// <param name="eligiblePlayers"></param>
        /// <returns></returns>
        public List<LootBagTypeDefinition> AssignLootToPlayers(
            ContributionManager contributionManager,
            int numberOfBagsToAward, 
            List<LootBagTypeDefinition> bagDefinitions, List<KeyValuePair<uint, int>> eligiblePlayers)
        {
            RewardLogger.Debug($"Eligible Player Count = {eligiblePlayers.Count()} for maximum {numberOfBagsToAward} Bags");
            // Get the character Ids of the eligible characters
            var eligiblePlayerCharacterIds = eligiblePlayers.Select(x => x.Key).ToList();

            if (eligiblePlayers.Count == 0)
                return null;

            if (bagDefinitions == null)
            {
                RewardLogger.Warn("BagDefinitions is null");
                return null;
            }

            RewardLogger.Info($"Assigning loot. Number of Bags : {bagDefinitions.Count} Number of players : {eligiblePlayers.Count}");

            var bagIndex = 0;
            foreach (var selectedPlayer in eligiblePlayers)
            {
                // Bag definition exists.
                if (bagDefinitions.Count > bagIndex)
                {
                    var lootBagTypeDefinition = bagDefinitions[bagIndex];
                    if (lootBagTypeDefinition == null)
                    {
                        RewardLogger.Warn($"lootBagTypeDefinition (index = {bagIndex}) is null");
                        continue;
                    }

                    try
                    {
                        lootBagTypeDefinition.Assignee = selectedPlayer.Key;
                        RewardLogger.Debug(
                            $"Selected player {selectedPlayer} selected for reward. LootBag Id : {lootBagTypeDefinition.LootBagNumber} ({lootBagTypeDefinition.BagRarity}). Index = {bagIndex}");
                        // player assigned, go to next bag
                        bagIndex++;
                    }
                    catch (Exception e)
                    {
                        RewardLogger.Warn($"{e.Message}");
                    }
                }

            }
            return bagDefinitions;
        }

        public int GetNumberOfBagsToAward(int forceNumberBags, List<KeyValuePair<uint, int>> allContributingPlayers)
        {
            RewardLogger.Debug($"forceNumberBags = {forceNumberBags}");

            // Force the number of bags to hand out.
            var numberOfBags = forceNumberBags;
            if (forceNumberBags == 0)
                numberOfBags = (int)DetermineNumberOfAwards(allContributingPlayers.Count());

            RewardLogger.Debug($"AllContributing Players Count = {allContributingPlayers.Count()}, numberBags = {numberOfBags}");

            return numberOfBags;
        }
    }
}
