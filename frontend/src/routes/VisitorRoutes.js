import React from "react";
import { Route, Routes } from "react-router-dom";
import CreateCharacter from "../pages/profile/CreateCharacter";
import NotFound from "../pages/errors/NotFound";
import About from "../pages/home/About";
import Contact from "../pages/home/Contact";
import Home from "../pages/home/Home";
import HowToStart from "../pages/home/HowToStart";
import PrivacyPolicy from "../pages/home/PrivacyPolicy";
import Sitemap from "../pages/home/Sitemap";
import TermsOfUse from "../pages/home/TermsOfUse";
import Logout from "../pages/profile/Logout";
import CharacterRanklist from "../pages/ranklist/CharacterRanklist";
import ClansRanklist from "../pages/ranklist/ClansRanklist";
import TeamsRanklist from "../pages/ranklist/TeamsRanklist";
import VillagesRanklist from "../pages/ranklist/VillagesRanklist";
import LegendaryWeapon from "../pages/weapon/LegendaryWeapon";
import Melee from "../pages/weapon/Melee";
import Remote from "../pages/weapon/Remote";
import PuppetWeapon from "../pages/weapon/PuppetWeapon";
import SevenSword from "../pages/weapon/SevenSword";
import UniqueWeapon from "../pages/weapon/UniqueWeapon";
import Other from "../pages/jutsu/Other";
import BasicNature from "../pages/jutsu/BasicNature";
import CombinedNature from "../pages/jutsu/CombinedNature";
import Bloodline from "../pages/jutsu/Bloodline";
import KekkeiGenkai from "../pages/jutsu/KekkeiGenkai";
import YinYang from "../pages/jutsu/YinYang";
import UniqueJutsu from "../pages/jutsu/UniqueJutsu";
import Bank from "../pages/city/Bank";
import Bijuus from "../pages/city/Bijuus";
import Blacksmith from "../pages/city/Blacksmith";
import DNSTrading from "../pages/city/DNSTrading";
import Gambling from "../pages/city/Gambling";
import PetShop from "../pages/city/PetShop";
import Rangs from "../pages/city/Rangs";
import Awards from "../pages/mission/Awards";
import Headhunting from "../pages/mission/Headhunting";
import Missions from "../pages/mission/Missions";
import SpecialMissions from "../pages/mission/SpecialMissions";
import Works from "../pages/mission/Works";
import Academy from "../pages/hokage/Academy";
import Arena from "../pages/hokage/Arena";
import KageTower from "../pages/hokage/KageTower";
import NatureLearning from "../pages/hokage/NatureLearning";
import NPCFight from "../pages/hokage/NPCFight";
import PVPFight from "../pages/hokage/PVPFight";
import Training from "../pages/hokage/Training";

export default function VisitorRoutes() {
    return (
        <Routes>
            <Route
                path="*"
                element={
                    <NotFound />
                }
            />
            <Route
                path="/"
                element={
                    <Home />
                }
            />
            <Route
                path="/about"
                element={
                    <About />
                }
            />
            <Route
                path="/how-to-start"
                element={
                    <HowToStart />
                }
            />
            <Route
                path="/terms-of-use"
                element={
                    <TermsOfUse />
                }
            />
            <Route
                path="/privacy-policy"
                element={
                    <PrivacyPolicy />
                }
            />
            <Route
                path="/sitemap"
                element={
                    <Sitemap />
                }
            />
            <Route
                path="/contact"
                element={
                    <Contact />
                }
            />













<Route
                path="/academy"
                element={
                    <Academy />
                }
            />
            <Route
                path="/Arena"
                element={
                    <Arena />
                }
            />
            <Route
                path="/kage-tower"
                element={
                    <KageTower />
                }
            />
            <Route
                path="/nature-learning"
                element={
                    <NatureLearning />
                }
            />
            <Route
                path="/npc-fight"
                element={
                    <NPCFight />
                }
            />
            <Route
                path="/pvp-fight"
                element={
                    <PVPFight />
                }
            />
            <Route
                path="/training"
                element={
                    <Training />
                }
            />













            <Route
                path="/awards"
                element={
                    <Awards />
                }
            />
            <Route
                path="/headhunting"
                element={
                    <Headhunting />
                }
            />
            <Route
                path="/missions"
                element={
                    <Missions />
                }
            />
            <Route
                path="/special-missions"
                element={
                    <SpecialMissions />
                }
            />
            <Route
                path="/works"
                element={
                    <Works />
                }
            />










            <Route
                path="/pet-shop"
                element={
                    <PetShop />
                }
            />
            <Route
                path="/rangs"
                element={
                    <Rangs />
                }
            />
            <Route
                path="/bijuus"
                element={
                    <Bijuus />
                }
            />
            <Route
                path="/blacksmith"
                element={
                    <Blacksmith />
                }
            />
            <Route
                path="/dns-trading"
                element={
                    <DNSTrading />
                }
            />
            <Route
                path="/gambling"
                element={
                    <Gambling />
                }
            />
            <Route
                path="bank"
                element={
                    <Bank />
                }
            />









            <Route
                path="/basic-nature-jutsus"
                element={
                    <BasicNature />
                }
            />
            <Route
                path="/combined-nature-jutsus"
                element={
                    <CombinedNature />
                }
            />
            <Route
                path="/other-jutsus"
                element={
                    <Other />
                }
            />
            <Route
                path="/kekkei-genkai"
                element={
                    <KekkeiGenkai />
                }
            />
            <Route
                path="/Bloodline-jutsus"
                element={
                    <Bloodline />
                }
            />
            <Route
                path="/yin-yang"
                element={
                    <YinYang />
                }
            />
            <Route
                path="characters/:id/unique-jutsu"
                element={
                    <UniqueJutsu />
                }
            />









            
            <Route
                path="/remote-equipments"
                element={
                    <Remote />
                }
            />
            <Route
                path="/melee-equipments"
                element={
                    <Melee />
                }
            />
            <Route
                path="/legendary-equipments"
                element={
                    <LegendaryWeapon />
                }
            />
            <Route
                path="/puppets"
                element={
                    <PuppetWeapon />
                }
            />
            <Route
                path="/seven-swords"
                element={
                    <SevenSword />
                }
            />
            <Route
                path="/unique-equipments"
                element={
                    <UniqueWeapon />
                }
            />

















            <Route
                path="/create-new-character"
                element={
                    <CreateCharacter />
                }
            />

            <Route
                path="/characters-ranklist"
                element={
                    <CharacterRanklist />
                }
            />

            <Route
                path="/teams-ranklist"
                element={
                    <TeamsRanklist />
                }
            />

            <Route
                path="/villages-ranklist"
                element={
                    <VillagesRanklist />
                }
            />

            <Route
                path="/clans-ranklist"
                element={
                    <ClansRanklist />
                }
            />

            <Route
                path="/logout"
                element={
                    <Logout />
                }
            />
        </Routes>
    )
}