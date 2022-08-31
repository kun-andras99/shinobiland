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
import UniqueWeapon from "../pages/weapons/UniqueWeapon";

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
                path="/create-new-character"
                element={
                    <CreateCharacter />
                }
            />
            <Route
                path="/create-new-character"
                element={
                    <CreateCharacter />
                }
            />
            <Route
                path="/create-new-character"
                element={
                    <CreateCharacter />
                }
            />
            <Route
                path="/create-new-character"
                element={
                    <CreateCharacter />
                }
            />
            <Route
                path="/create-new-character"
                element={
                    <CreateCharacter />
                }
            />
            <Route
                path="/create-new-character"
                element={
                    <CreateCharacter />
                }
            />
            <Route
                path="/unique-weapons"
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