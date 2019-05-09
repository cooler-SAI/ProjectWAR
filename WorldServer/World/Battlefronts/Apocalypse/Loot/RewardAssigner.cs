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
        public Logger Logger { get; set; }

        public RewardAssigner(Random randomGenerator, Logger logger)
        {
            RandomGenerator = randomGenerator;
            Logger = logger;
        }

        /// <summary>
        /// Increase the number of possible awards based upon the number of eligible Players.
        /// </summary>
        /// <param name="eligiblePlayers"></param>
        /// <returns></returns>
        public byte DetermineNumberOfAwards(int eligiblePlayers)
        {
            Logger.Info($"{eligiblePlayers}");

            byte numberOfAwards = 0;
            // Simple set for low pop for now. TODO base this upon population sizes and % chance to win a bag per flip.
            if (eligiblePlayers == 0)
                numberOfAwards = 0;
            else
            {
                if (eligiblePlayers <= 10)
                    numberOfAwards = (byte)Math.Ceiling(eligiblePlayers / 2f);
                else
                {
                    if (eligiblePlayers <= 20)
                    {
                        numberOfAwards = (byte)Math.Ceiling(eligiblePlayers / 1.8f);
                    }
                    else
                    {
                        numberOfAwards = (byte)Math.Ceiling(eligiblePlayers / 1.6f);
                    }
                    
                }
            }
            if (eligiblePlayers < numberOfAwards)
                numberOfAwards = (byte)eligiblePlayers;

            Logger.Info($"Number of eligible players {eligiblePlayers}, number of Awards {numberOfAwards}");

            return numberOfAwards;
        }


        public List<LootBagTypeDefinition> DetermineBagTypes(int numberOfBags)
        {
            // Define the types of bags to give
            var lootBagDefinitions = new LootBagTypeDefinition().BuildLootBagTypeDefinitions(numberOfBags);
            Logger.Debug($"Number loot bags {lootBagDefinitions.Count} to award.");

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
            
            int numberOfBagsToAward,
            List<LootBagTypeDefinition> bagDefinitions, List<KeyValuePair<uint, int>> eligiblePlayers)
        {
            Logger.Debug($"Eligible Player Count = {eligiblePlayers.Count()} for maximum {numberOfBagsToAward} Bags");
            // Get the character Ids of the eligible characters
            var eligiblePlayerCharacterIds = eligiblePlayers.Select(x => x.Key).ToList();

            if (eligiblePlayers.Count == 0)
                return null;

            if (bagDefinitions == null)
            {
                Logger.Warn("BagDefinitions is null");
                return null;
            }

            Logger.Info($"Assigning loot. Number of Bags : {bagDefinitions.Count} Number of players : {eligiblePlayers.Count}");

            var bagIndex = 0;
            foreach (var selectedPlayer in eligiblePlayers)
            {
                // Bag definition exists.
                if (bagDefinitions.Count > bagIndex)
                {
                    var lootBagTypeDefinition = bagDefinitions[bagIndex];
                    if (lootBagTypeDefinition == null)
                    {
                        Logger.Warn($"lootBagTypeDefinition (index = {bagIndex}) is null");
                        continue;
                    }

                    try
                    {
                        lootBagTypeDefinition.Assignee = selectedPlayer.Key;
                        Logger.Debug(
                            $"Selected player {selectedPlayer} selected for reward. LootBag Id : {lootBagTypeDefinition.LootBagNumber} ({lootBagTypeDefinition.BagRarity}). Index = {bagIndex}");
                        // player assigned, go to next bag
                        bagIndex++;
                    }
                    catch (Exception e)
                    {
                        Logger.Warn($"{e.Message}");
                    }
                }

            }
            return bagDefinitions;
        }

        public int GetNumberOfBagsToAward(int forceNumberBags, List<KeyValuePair<uint, int>> allContributingPlayers)
        {
            Logger.Debug($"forceNumberBags = {forceNumberBags}");

            // Force the number of bags to hand out.
            var numberOfBags = forceNumberBags;
            if (forceNumberBags == 0)
                numberOfBags = (int)DetermineNumberOfAwards(allContributingPlayers.Count());

            Logger.Debug($"AllContributing Players Count = {allContributingPlayers.Count()}, numberBags = {numberOfBags}");

            return numberOfBags;
        }
    }
}
