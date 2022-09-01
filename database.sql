/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `shinobiland`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `awards`
--

CREATE TABLE `awards` (
  `id` smallint(6) UNSIGNED NOT NULL,
  `tblaward_id` tinyint(4) UNSIGNED NOT NULL,
  `character_id` smallint(6) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `bans`
--

CREATE TABLE `bans` (
  `id` smallint(6) UNSIGNED NOT NULL,
  `user_id` smallint(6) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `bijuus`
--

CREATE TABLE `bijuus` (
  `id` smallint(6) UNSIGNED NOT NULL,
  `character_id` smallint(6) UNSIGNED NOT NULL,
  `tblbijuu_id` tinyint(4) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `brothers`
--

CREATE TABLE `brothers` (
  `id` smallint(6) UNSIGNED NOT NULL,
  `character1_id` smallint(6) UNSIGNED NOT NULL,
  `character2_id` smallint(6) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `characters`
--

CREATE TABLE `characters` (
  `id` smallint(6) UNSIGNED NOT NULL,
  `user_id` smallint(6) UNSIGNED DEFAULT NULL,
  `tblcharacter_id` tinyint(4) UNSIGNED DEFAULT NULL,
  `tblvillage_id` tinyint(4) UNSIGNED DEFAULT NULL,
  `tblrang_id` tinyint(4) UNSIGNED DEFAULT NULL,
  `tblpoint_id` tinyint(4) UNSIGNED DEFAULT NULL,
  `clan_id` smallint(6) UNSIGNED DEFAULT NULL,
  `team_id` smallint(6) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `characters`
--

INSERT INTO `characters` (`id`, `user_id`, `tblcharacter_id`, `tblvillage_id`, `tblrang_id`, `tblpoint_id`, `clan_id`, `team_id`) VALUES
(3, 2, 5, 4, NULL, 11, NULL, NULL),
(4, 4, 2, 1, NULL, 10, NULL, NULL),
(7, 8, 27, 1, NULL, 11, NULL, NULL),
(20, 9, 6, 1, NULL, 10, NULL, NULL),
(21, 11, 5, 1, NULL, 11, NULL, NULL),
(26, 13, 2, 1, NULL, 10, NULL, NULL),
(27, 14, 28, 3, NULL, 12, NULL, NULL),
(29, 11, 5, 5, NULL, 10, NULL, NULL),
(30, 15, 2, 1, NULL, 10, NULL, NULL),
(31, 16, 4, 1, NULL, 10, NULL, NULL),
(32, 16, 5, 1, NULL, 11, NULL, NULL),
(35, 16, 1, 1, NULL, 10, NULL, NULL),
(36, 15, 4, 1, NULL, 10, NULL, NULL),
(37, 17, 2, 1, NULL, 10, NULL, NULL),
(38, 18, 2, 1, NULL, 10, NULL, NULL),
(39, 19, 5, 1, NULL, 10, NULL, NULL),
(40, 20, 26, 5, NULL, 10, NULL, NULL),
(49, 21, 21, 1, NULL, 11, NULL, NULL);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `characters_trainings`
--

CREATE TABLE `characters_trainings` (
  `id` smallint(6) UNSIGNED NOT NULL,
  `character_id` smallint(6) UNSIGNED DEFAULT NULL,
  `start` int(11) UNSIGNED DEFAULT NULL,
  `end` int(11) UNSIGNED DEFAULT NULL,
  `status` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT 'finished',
  `premium_exp` mediumint(9) UNSIGNED DEFAULT NULL,
  `premium_points` mediumint(9) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `characters_trainings`
--

INSERT INTO `characters_trainings` (`id`, `character_id`, `start`, `end`, `status`, `premium_exp`, `premium_points`) VALUES
(2, 3, 255, 255, 'rest', 24, 20),
(4, 7, NULL, NULL, 'finished', NULL, NULL),
(12, 20, NULL, NULL, 'finished', NULL, NULL),
(13, 21, NULL, NULL, 'finished', NULL, NULL),
(16, 26, NULL, NULL, 'finished', NULL, NULL),
(18, 27, NULL, NULL, 'finished', NULL, NULL),
(19, 30, NULL, NULL, 'finished', NULL, NULL),
(20, 4, NULL, NULL, 'finished', NULL, NULL),
(21, 31, NULL, NULL, 'finished', NULL, NULL),
(22, 32, NULL, NULL, 'finished', NULL, NULL),
(23, 36, NULL, NULL, 'finished', NULL, NULL),
(24, 37, NULL, NULL, 'finished', NULL, NULL),
(25, 39, NULL, NULL, 'finished', NULL, NULL),
(26, 40, NULL, NULL, 'finished', NULL, NULL),
(27, 49, NULL, NULL, 'finished', NULL, NULL);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `clans`
--

CREATE TABLE `clans` (
  `id` smallint(6) UNSIGNED NOT NULL,
  `clan_name` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `max_members` tinyint(4) UNSIGNED NOT NULL,
  `level` tinyint(4) UNSIGNED NOT NULL,
  `points` smallint(6) UNSIGNED NOT NULL,
  `v_missions` smallint(6) UNSIGNED NOT NULL,
  `missions` smallint(6) UNSIGNED NOT NULL,
  `l_missions` smallint(6) UNSIGNED NOT NULL,
  `character_id` smallint(6) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `clan_members`
--

CREATE TABLE `clan_members` (
  `id` smallint(6) UNSIGNED NOT NULL,
  `clan_id` smallint(6) UNSIGNED NOT NULL,
  `character_id` smallint(6) UNSIGNED NOT NULL,
  `general` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `credits`
--

CREATE TABLE `credits` (
  `id` smallint(6) UNSIGNED NOT NULL,
  `credits` smallint(6) UNSIGNED NOT NULL,
  `user_id` smallint(6) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `equipments`
--

CREATE TABLE `equipments` (
  `id` mediumint(9) UNSIGNED NOT NULL,
  `character_id` smallint(6) UNSIGNED NOT NULL,
  `tblequipment_id` smallint(6) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `experience_points`
--

CREATE TABLE `experience_points` (
  `id` smallint(6) UNSIGNED NOT NULL,
  `melee` smallint(6) UNSIGNED DEFAULT NULL,
  `remote` smallint(6) UNSIGNED DEFAULT NULL,
  `swordsman` smallint(6) UNSIGNED DEFAULT NULL,
  `technique` smallint(6) UNSIGNED DEFAULT NULL,
  `character_id` smallint(6) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `experience_points`
--

INSERT INTO `experience_points` (`id`, `melee`, `remote`, `swordsman`, `technique`, `character_id`) VALUES
(3, 1, 2, 1, 4, 3),
(4, 2, 1, 1, 2, 4),
(7, 2, 2, 2, 2, 7),
(20, 2, 1, 1, 2, 20),
(21, 4, 3, 2, 1, 21),
(26, 2, 2, 2, 2, 26),
(27, 2, 2, 2, 2, 27),
(29, 4, 1, 1, 1, 29),
(30, 1, 1, 1, 1, 30),
(31, 2, 2, 2, 2, 31),
(32, 2, 2, 2, 2, 32),
(35, 2, 2, 2, 3, 35),
(36, 2, 2, 3, 2, 36),
(37, 2, 3, 1, 2, 37),
(38, 1, 1, 1, 3, 38),
(39, 1, 100, 1, 0, 39),
(40, 1, 1, 1, 1, 40),
(49, 1, 1, 1, 2, 49);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `generals`
--

CREATE TABLE `generals` (
  `id` smallint(6) UNSIGNED NOT NULL,
  `academy` tinyint(4) UNSIGNED DEFAULT NULL,
  `level` smallint(6) UNSIGNED NOT NULL,
  `ryo` mediumint(9) UNSIGNED DEFAULT NULL,
  `points` mediumint(9) UNSIGNED DEFAULT NULL,
  `tickets` smallint(6) UNSIGNED DEFAULT NULL,
  `training_points` smallint(6) UNSIGNED DEFAULT NULL,
  `village_points` mediumint(9) UNSIGNED DEFAULT NULL,
  `character_id` smallint(6) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `generals`
--

INSERT INTO `generals` (`id`, `academy`, `level`, `ryo`, `points`, `tickets`, `training_points`, `village_points`, `character_id`) VALUES
(3, 1, 1, 500, 0, 3, 0, 0, 3),
(4, 0, 1, 500, 0, 3, 0, 0, 4),
(7, 0, 1, 500, 0, 3, 0, 0, 7),
(20, 0, 1, 500, 0, 3, 0, 0, 20),
(21, 0, 1, 500, 0, 3, 0, 0, 21),
(26, 0, 1, 500, 0, 3, 0, 0, 26),
(27, 0, 1, 500, 0, 3, 0, 0, 27),
(29, 0, 1, 500, 0, 3, 0, 0, 29),
(30, 0, 1, 500, 0, 3, 0, 0, 30),
(31, 0, 1, 500, 0, 3, 0, 0, 31),
(32, 0, 1, 500, 0, 3, 0, 0, 32),
(35, 0, 1, 500, 0, 3, 0, 0, 35),
(36, 0, 1, 500, 0, 3, 0, 0, 36),
(37, 0, 1, 500, 0, 3, 0, 0, 37),
(38, 0, 1, 500, 0, 3, 0, 0, 38),
(39, 0, 1, 500, 0, 3, 0, 0, 39),
(40, 0, 1, 500, 0, 3, 0, 0, 40),
(49, 0, 1, 500, 0, 3, 0, 0, 49);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `mission_points`
--

CREATE TABLE `mission_points` (
  `id` smallint(6) UNSIGNED NOT NULL,
  `v_missions` smallint(6) UNSIGNED DEFAULT NULL,
  `missions` smallint(6) UNSIGNED DEFAULT NULL,
  `l_missions` smallint(6) UNSIGNED DEFAULT NULL,
  `v_works` smallint(6) UNSIGNED DEFAULT NULL,
  `works` smallint(6) UNSIGNED DEFAULT NULL,
  `l_works` smallint(6) UNSIGNED DEFAULT NULL,
  `v_special_missions` smallint(6) UNSIGNED DEFAULT NULL,
  `special_missions` smallint(6) UNSIGNED DEFAULT NULL,
  `l_special_missions` smallint(6) UNSIGNED DEFAULT NULL,
  `v_headhunting` smallint(6) UNSIGNED DEFAULT NULL,
  `headhunting` smallint(6) UNSIGNED DEFAULT NULL,
  `l_headhunting` smallint(6) UNSIGNED DEFAULT NULL,
  `character_id` smallint(6) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `mission_points`
--

INSERT INTO `mission_points` (`id`, `v_missions`, `missions`, `l_missions`, `v_works`, `works`, `l_works`, `v_special_missions`, `special_missions`, `l_special_missions`, `v_headhunting`, `headhunting`, `l_headhunting`, `character_id`) VALUES
(3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3),
(4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4),
(7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7),
(20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20),
(21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 21),
(26, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 26),
(27, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 27),
(29, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 29),
(30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30),
(31, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31),
(32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32),
(35, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 35),
(36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 36),
(37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 37),
(38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 38),
(39, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 39),
(40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 40),
(49, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 49);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `natures`
--

CREATE TABLE `natures` (
  `id` mediumint(9) UNSIGNED NOT NULL,
  `character_id` smallint(6) UNSIGNED NOT NULL,
  `tblnature_id` tinyint(4) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('boldibrigitta17@gmail.com', '$2y$10$XSYZJHD6AwdmbukgjEPqFu3Fx8Ww.OmLeyyGWYaKhBKtlinhWDNsy', '2022-01-16 05:49:07');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` int(10) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `specialization_points`
--

CREATE TABLE `specialization_points` (
  `id` smallint(6) UNSIGNED NOT NULL,
  `ninjutsu` smallint(6) UNSIGNED DEFAULT NULL,
  `genjutsu` smallint(6) UNSIGNED DEFAULT NULL,
  `taijutsu` smallint(6) UNSIGNED DEFAULT NULL,
  `character_id` smallint(6) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `specialization_points`
--

INSERT INTO `specialization_points` (`id`, `ninjutsu`, `genjutsu`, `taijutsu`, `character_id`) VALUES
(3, 3, 5, 1, 3),
(4, 5, 1, 1, 4),
(7, 3, 3, 2, 7),
(20, 3, 1, 1, 20),
(21, 1, 2, 4, 21),
(26, 7, 1, 1, 26),
(27, 2, 2, 2, 27),
(29, 1, 1, 1, 29),
(30, 1, 1, 1, 30),
(31, 2, 3, 2, 31),
(32, 3, 3, 2, 32),
(35, 3, 2, 2, 35),
(36, 3, 2, 2, 36),
(37, 5, 1, 1, 37),
(38, 1, 1, 1, 38),
(39, 1, 1, 1, 39),
(40, 6, 1, 1, 40),
(49, 1, 4, 1, 49);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `statistics_points`
--

CREATE TABLE `statistics_points` (
  `id` smallint(6) UNSIGNED NOT NULL,
  `strength` smallint(6) UNSIGNED DEFAULT NULL,
  `vitality` smallint(6) UNSIGNED DEFAULT NULL,
  `agility` smallint(6) UNSIGNED DEFAULT NULL,
  `resistance` smallint(6) UNSIGNED DEFAULT NULL,
  `intelligence` smallint(6) UNSIGNED DEFAULT NULL,
  `character_id` smallint(6) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `statistics_points`
--

INSERT INTO `statistics_points` (`id`, `strength`, `vitality`, `agility`, `resistance`, `intelligence`, `character_id`) VALUES
(3, 1, 2, 3, 2, 2, 3),
(4, 3, 1, 6, 1, 3, 4),
(7, 3, 2, 2, 2, 2, 7),
(20, 5, 2, 3, 3, 3, 20),
(21, 1, 3, 4, 1, 1, 21),
(26, 2, 2, 2, 2, 2, 26),
(27, 3, 3, 2, 3, 2, 27),
(29, 5, 1, 1, 1, 1, 29),
(30, 5, 1, 10, 1, 3, 30),
(31, 3, 2, 2, 2, 3, 31),
(32, 3, 2, 2, 2, 2, 32),
(35, 3, 2, 2, 2, 2, 35),
(36, 2, 2, 3, 2, 2, 36),
(37, 3, 1, 2, 2, 4, 37),
(38, 8, 1, 7, 1, 1, 38),
(39, 1, 100, 0, 1, 1, 39),
(40, 3, 3, 3, 1, 5, 40),
(49, 1, 1, 4, 7, 3, 49);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `status`
--

CREATE TABLE `status` (
  `id` smallint(6) UNSIGNED NOT NULL,
  `life` mediumint(9) UNSIGNED DEFAULT NULL,
  `life_max` mediumint(9) UNSIGNED NOT NULL,
  `chakra` mediumint(9) UNSIGNED DEFAULT NULL,
  `chakra_max` mediumint(9) UNSIGNED NOT NULL,
  `stamina` mediumint(9) UNSIGNED DEFAULT NULL,
  `stamina_max` mediumint(9) UNSIGNED NOT NULL,
  `exp` mediumint(9) UNSIGNED DEFAULT NULL,
  `exp_max` mediumint(9) UNSIGNED NOT NULL,
  `character_id` smallint(6) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `status`
--

INSERT INTO `status` (`id`, `life`, `life_max`, `chakra`, `chakra_max`, `stamina`, `stamina_max`, `exp`, `exp_max`, `character_id`) VALUES
(3, 120, 120, 120, 120, 80, 80, 0, 680, 3),
(4, 120, 120, 120, 120, 80, 80, 0, 680, 4),
(7, 120, 120, 120, 120, 80, 80, 0, 680, 7),
(20, 120, 120, 120, 120, 80, 80, 0, 680, 20),
(21, 120, 120, 120, 120, 80, 80, 0, 680, 21),
(26, 120, 120, 120, 120, 80, 80, 0, 680, 26),
(27, 120, 120, 120, 120, 80, 80, 0, 680, 27),
(29, 120, 120, 120, 120, 80, 80, 0, 680, 29),
(30, 120, 120, 120, 120, 80, 80, 0, 680, 30),
(31, 120, 120, 120, 120, 80, 80, 0, 680, 31),
(32, 120, 120, 120, 120, 80, 80, 0, 680, 32),
(35, 120, 120, 120, 120, 80, 80, 0, 680, 35),
(36, 120, 120, 120, 120, 80, 80, 0, 680, 36),
(37, 120, 120, 120, 120, 80, 80, 0, 680, 37),
(38, 120, 120, 120, 120, 80, 80, 0, 680, 38),
(39, 120, 120, 120, 120, 80, 80, 0, 680, 39),
(40, 120, 120, 120, 120, 80, 80, 0, 680, 40),
(49, 120, 120, 120, 120, 80, 80, 0, 680, 49);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `tbl_awards`
--

CREATE TABLE `tbl_awards` (
  `id` tinyint(4) UNSIGNED NOT NULL,
  `award_name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `bonus_strength` tinyint(4) UNSIGNED DEFAULT NULL,
  `bonus_vitality` tinyint(4) UNSIGNED DEFAULT NULL,
  `bonus_agility` tinyint(4) UNSIGNED DEFAULT NULL,
  `bonus_resistance` tinyint(4) UNSIGNED DEFAULT NULL,
  `bonus_intelligence` tinyint(4) UNSIGNED DEFAULT NULL,
  `bonus_melee` tinyint(4) UNSIGNED DEFAULT NULL,
  `bonus_remote` tinyint(4) UNSIGNED DEFAULT NULL,
  `bonus_swordsman` tinyint(4) UNSIGNED DEFAULT NULL,
  `bonus_technique` tinyint(4) UNSIGNED DEFAULT NULL,
  `bonus_ninjutsu` tinyint(4) UNSIGNED DEFAULT NULL,
  `bonus_genjutsu` tinyint(4) UNSIGNED DEFAULT NULL,
  `bonus_taijutsu` tinyint(4) UNSIGNED DEFAULT NULL,
  `bonus_exp` tinyint(4) UNSIGNED DEFAULT NULL,
  `bonus_ryo` tinyint(4) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `tbl_bijuus`
--

CREATE TABLE `tbl_bijuus` (
  `id` tinyint(4) UNSIGNED NOT NULL,
  `bijuu_name` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bijuu_tails` tinyint(4) UNSIGNED NOT NULL,
  `required_level` tinyint(4) UNSIGNED NOT NULL,
  `request_chakra` mediumint(9) UNSIGNED NOT NULL,
  `request_stamina` mediumint(9) UNSIGNED NOT NULL,
  `bonus_strength` tinyint(4) UNSIGNED NOT NULL,
  `bonus_vitality` tinyint(4) UNSIGNED NOT NULL,
  `bonus_agility` tinyint(4) UNSIGNED NOT NULL,
  `bonus_resistance` tinyint(4) UNSIGNED NOT NULL,
  `bonus_intelligence` tinyint(4) UNSIGNED NOT NULL,
  `credits` tinyint(4) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `tbl_bijuus`
--

INSERT INTO `tbl_bijuus` (`id`, `bijuu_name`, `bijuu_tails`, `required_level`, `request_chakra`, `request_stamina`, `bonus_strength`, `bonus_vitality`, `bonus_agility`, `bonus_resistance`, `bonus_intelligence`, `credits`) VALUES
(1, 'Shukaku', 1, 50, 70000, 70000, 45, 45, 45, 45, 45, 20),
(2, 'Matatabi', 2, 52, 73000, 73000, 49, 49, 49, 49, 49, 22),
(3, 'Isobu', 3, 54, 76000, 76000, 54, 54, 54, 54, 54, 24),
(4, 'Son Gokū', 4, 56, 79000, 79000, 59, 59, 59, 59, 59, 26),
(5, 'Kokuo', 5, 58, 82000, 82000, 64, 64, 64, 64, 64, 28),
(6, 'Saiken', 6, 60, 85000, 85000, 69, 69, 69, 69, 69, 30),
(7, 'Choumei', 7, 62, 88000, 88000, 74, 74, 74, 74, 74, 32),
(8, 'Gyuuki', 8, 64, 91000, 91000, 79, 79, 79, 79, 79, 34),
(9, 'Kurama', 9, 66, 100000, 100000, 90, 90, 90, 90, 90, 45),
(10, 'Jūbi', 10, 70, 120000, 120000, 115, 115, 115, 115, 115, 60);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `tbl_characters`
--

CREATE TABLE `tbl_characters` (
  `id` tinyint(4) UNSIGNED NOT NULL,
  `character_name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `game` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `tbl_characters`
--

INSERT INTO `tbl_characters` (`id`, `character_name`, `game`) VALUES
(1, 'Uzumaki Naruto', 1),
(2, 'Uzumaki Minato', 1),
(3, 'Uzumaki Boruto', 1),
(4, 'Uchiha Sasuke', 1),
(5, 'Uchiha Itachi', 1),
(6, 'Uchiha Madara', 1),
(7, 'Uchiha Obito', 1),
(8, 'Uchiha Baru', 1),
(9, 'Uchiha Fugaku', 0),
(10, 'Uchiha Hikaku', 0),
(11, 'Uchiha Inabi', 0),
(12, 'Uchiha Izumi', 0),
(13, 'Uchiha Izuna', 1),
(14, 'Uchiha Kagami', 0),
(15, 'Uchiha Mikoto', 0),
(16, 'Uchiha Naka', 0),
(17, 'Uchiha Naori', 1),
(18, 'Uchiha Rai', 0),
(19, 'Uchiha Sarada', 1),
(20, 'Uchiha Setsuna', 0),
(21, 'Uchiha Shisui', 1),
(22, 'Uchiha Taiko', 0),
(23, 'Uchiha Tajima', 0),
(24, 'Uchiha Tekka', 0),
(25, 'Darui', 1),
(26, 'Ōtsutsuki Kaguya', 1),
(27, 'Uzumaki Kushina', 1),
(28, 'Uzumaki Nagato', 1);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `tbl_equipments`
--

CREATE TABLE `tbl_equipments` (
  `id` smallint(6) UNSIGNED NOT NULL,
  `equipment_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` mediumint(9) UNSIGNED NOT NULL,
  `request_chakra` mediumint(9) UNSIGNED NOT NULL,
  `request_stamina` mediumint(9) UNSIGNED NOT NULL,
  `bonus_strength` tinyint(4) UNSIGNED DEFAULT NULL,
  `bonus_vitality` tinyint(4) UNSIGNED DEFAULT NULL,
  `bonus_agility` tinyint(4) UNSIGNED DEFAULT NULL,
  `bonus_resistance` tinyint(4) UNSIGNED DEFAULT NULL,
  `bonus_intelligence` tinyint(4) UNSIGNED DEFAULT NULL,
  `bonus_melee` tinyint(4) UNSIGNED DEFAULT NULL,
  `bonus_remote` tinyint(4) UNSIGNED DEFAULT NULL,
  `bonus_swordsman` tinyint(4) UNSIGNED DEFAULT NULL,
  `tbltype_id` tinyint(4) UNSIGNED NOT NULL,
  `tblcharacter_id` tinyint(4) UNSIGNED DEFAULT NULL,
  `tblrang_id` tinyint(4) UNSIGNED DEFAULT NULL,
  `tbltechnique_id` smallint(6) UNSIGNED DEFAULT NULL,
  `tblequipment_id` smallint(6) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `tbl_headhunters`
--

CREATE TABLE `tbl_headhunters` (
  `id` smallint(6) UNSIGNED NOT NULL,
  `bonus_strength` tinyint(4) UNSIGNED DEFAULT NULL,
  `bonus_vitality` tinyint(4) UNSIGNED DEFAULT NULL,
  `bonus_agility` tinyint(4) UNSIGNED DEFAULT NULL,
  `bonus_resistance` tinyint(4) UNSIGNED DEFAULT NULL,
  `bonus_intelligence` tinyint(4) UNSIGNED DEFAULT NULL,
  `bonus_ryo` tinyint(4) UNSIGNED NOT NULL,
  `bonus_credits` tinyint(4) UNSIGNED NOT NULL,
  `bonus_exp` tinyint(4) UNSIGNED NOT NULL,
  `tblcharacter_id` tinyint(4) UNSIGNED NOT NULL,
  `tbltechnique_id` smallint(6) UNSIGNED DEFAULT NULL,
  `tblequipment_id` smallint(6) UNSIGNED DEFAULT NULL,
  `tblpoint_id` tinyint(4) UNSIGNED NOT NULL,
  `tblnature_id` tinyint(4) UNSIGNED DEFAULT NULL,
  `tblrang_id` tinyint(4) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `tbl_missions`
--

CREATE TABLE `tbl_missions` (
  `id` smallint(6) UNSIGNED NOT NULL,
  `mission_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `bonus_strength` tinyint(4) UNSIGNED DEFAULT NULL,
  `bonus_vitality` tinyint(4) UNSIGNED DEFAULT NULL,
  `bonus_agility` tinyint(4) UNSIGNED DEFAULT NULL,
  `bonus_resistance` tinyint(4) UNSIGNED DEFAULT NULL,
  `bonus_intelligence` tinyint(4) UNSIGNED DEFAULT NULL,
  `bonus_ryo` tinyint(4) UNSIGNED NOT NULL,
  `bonus_credits` tinyint(4) UNSIGNED NOT NULL,
  `bonus_exp` tinyint(4) UNSIGNED NOT NULL,
  `tbltechnique_id` smallint(6) UNSIGNED DEFAULT NULL,
  `tblequipment_id` smallint(6) UNSIGNED DEFAULT NULL,
  `tblrang_id` tinyint(4) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `tbl_natures`
--

CREATE TABLE `tbl_natures` (
  `id` tinyint(4) UNSIGNED NOT NULL,
  `nature_name` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `japan` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tblnature1_id` tinyint(4) UNSIGNED DEFAULT NULL,
  `tblnature2_id` tinyint(4) UNSIGNED DEFAULT NULL,
  `tblrang_id` tinyint(4) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `tbl_natures`
--

INSERT INTO `tbl_natures` (`id`, `nature_name`, `japan`, `tblnature1_id`, `tblnature2_id`, `tblrang_id`) VALUES
(1, 'Fire', 'Katon', NULL, NULL, 1),
(2, 'Water', 'Suiton', NULL, NULL, 1),
(3, 'Wind', 'Fūton', NULL, NULL, 1),
(4, 'Earth', 'Doton', NULL, NULL, 1),
(5, 'Lightning', 'Raiton', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `tbl_points`
--

CREATE TABLE `tbl_points` (
  `id` tinyint(4) UNSIGNED NOT NULL,
  `point_name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `english` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `tbl_points`
--

INSERT INTO `tbl_points` (`id`, `point_name`, `english`, `type`) VALUES
(1, 'Erő', 'strength', 'statistics'),
(2, 'Életerő', 'vitality', 'statistics'),
(3, 'Gyorsaság', 'agility', 'statistics'),
(4, 'Védekezés', 'resistance', 'statistics'),
(5, 'Intelligencia', 'intelligence', 'statistics'),
(6, 'Közelharc', 'melee', 'experience'),
(7, 'Távolharc', 'remote', 'experience'),
(8, 'Kardforgatás', 'swordsman', 'experience'),
(9, 'Technika használat', 'technique', 'experience'),
(10, 'Ninjutsu', 'ninjutsu', 'specialization'),
(11, 'Genjutsu', 'genjutsu', 'specialization'),
(12, 'Taijutsu', 'taijutsu', 'specialization');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `tbl_rangs`
--

CREATE TABLE `tbl_rangs` (
  `id` tinyint(4) UNSIGNED NOT NULL,
  `rang_name` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `classification` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required_level` tinyint(4) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `tbl_rangs`
--

INSERT INTO `tbl_rangs` (`id`, `rang_name`, `classification`, `required_level`) VALUES
(1, 'Genin', 'D', 5),
(2, 'Chūnin', 'C', 15),
(3, 'Jōnin', 'B', 30),
(4, 'Anbu', 'A', 50),
(5, 'Kage', 'S', 80);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `tbl_techniques`
--

CREATE TABLE `tbl_techniques` (
  `id` smallint(6) UNSIGNED NOT NULL,
  `technique_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `technique_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` mediumint(9) UNSIGNED NOT NULL,
  `request_chakra` mediumint(9) UNSIGNED NOT NULL,
  `request_stamina` mediumint(9) UNSIGNED NOT NULL,
  `bonus_strength` tinyint(4) UNSIGNED DEFAULT NULL,
  `bonus_vitality` tinyint(4) UNSIGNED DEFAULT NULL,
  `bonus_agility` tinyint(4) UNSIGNED DEFAULT NULL,
  `bonus_resistance` tinyint(4) UNSIGNED DEFAULT NULL,
  `bonus_intelligence` tinyint(4) UNSIGNED DEFAULT NULL,
  `bonus_melee` tinyint(4) UNSIGNED DEFAULT NULL,
  `bonus_remote` tinyint(4) UNSIGNED DEFAULT NULL,
  `bonus_swordsman` tinyint(4) UNSIGNED DEFAULT NULL,
  `tbltype_id` tinyint(4) UNSIGNED NOT NULL,
  `tblcharacter_id` tinyint(4) UNSIGNED DEFAULT NULL,
  `tblrang_id` tinyint(4) UNSIGNED DEFAULT NULL,
  `tbltechnique_id` smallint(6) UNSIGNED DEFAULT NULL,
  `tblequipment_id` smallint(6) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `tbl_techniques`
--

INSERT INTO `tbl_techniques` (`id`, `technique_name`, `technique_type`, `description`, `price`, `request_chakra`, `request_stamina`, `bonus_strength`, `bonus_vitality`, `bonus_agility`, `bonus_resistance`, `bonus_intelligence`, `bonus_melee`, `bonus_remote`, `bonus_swordsman`, `tbltype_id`, `tblcharacter_id`, `tblrang_id`, `tbltechnique_id`, `tblequipment_id`) VALUES
(1, 'Gōken - Erős Ököl', 'taijutsu', 'Egy erős ütés ököllel.', 350, 12, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL),
(2, 'Neko Genjutsu - Macska Illúzió', 'genjutsu', 'Az áldozat egy árnyék macskát lát, ha pedig megtámadja mégtöbb árnyék macskát fog látni.', 350, 10, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL),
(3, 'Kakuremino no Jutsu - Láthatatlanság köpenye', 'ninjutsu', 'A ninja egy olyan köpenyt vagy anyagot használ rejtőzésre, ami úgy néz ki, mint a környezete.', 300, 8, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `tbl_types`
--

CREATE TABLE `tbl_types` (
  `id` tinyint(4) UNSIGNED NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `tbl_types`
--

INSERT INTO `tbl_types` (`id`, `type`) VALUES
(1, 'attacker'),
(2, 'defender'),
(3, 'evade');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `tbl_villages`
--

CREATE TABLE `tbl_villages` (
  `id` tinyint(4) UNSIGNED NOT NULL,
  `village_name` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `points` mediumint(9) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `tbl_villages`
--

INSERT INTO `tbl_villages` (`id`, `village_name`, `points`) VALUES
(1, 'Konohagakure', 0),
(2, 'Sunagakure', 0),
(3, 'Iwagakure', 0),
(4, 'Takigakure', 0),
(5, 'Kumogakure', 0),
(6, 'Akatsuki', 0);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `teams`
--

CREATE TABLE `teams` (
  `id` smallint(6) UNSIGNED NOT NULL,
  `team_name` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `max_members` tinyint(4) UNSIGNED NOT NULL,
  `level` tinyint(4) UNSIGNED NOT NULL,
  `points` smallint(6) UNSIGNED NOT NULL,
  `v_missions` smallint(6) UNSIGNED NOT NULL,
  `missions` smallint(6) UNSIGNED NOT NULL,
  `l_missions` smallint(6) UNSIGNED NOT NULL,
  `character_id` smallint(6) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `team_members`
--

CREATE TABLE `team_members` (
  `id` smallint(6) UNSIGNED NOT NULL,
  `team_id` smallint(6) UNSIGNED NOT NULL,
  `character_id` smallint(6) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `techniques`
--

CREATE TABLE `techniques` (
  `id` mediumint(9) UNSIGNED NOT NULL,
  `character_id` smallint(6) UNSIGNED NOT NULL,
  `tbltechnique_id` smallint(6) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `techniques`
--

INSERT INTO `techniques` (`id`, `character_id`, `tbltechnique_id`) VALUES
(0, 3, 2);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `users`
--

CREATE TABLE `users` (
  `id` smallint(6) UNSIGNED NOT NULL,
  `username` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nickname` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` tinyint(4) NOT NULL DEFAULT '0',
  `register_ip` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login_ip` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `users`
--

INSERT INTO `users` (`id`, `username`, `nickname`, `email`, `role`, `register_ip`, `login_ip`, `email_verified_at`, `password`, `remember_token`) VALUES
(2, 'Rencsii11', 'Rencsi', 'rencsevics.krisztian@gmail.com', 0, '89.107.250.117', '89.107.250.117', NULL, '$2y$10$Q5.TUGDvYaKibuFHn7ahIOoimJOFDv/u8.37qZ71UGUSyBCQKFb6i', NULL),
(4, 'suguru', 'Suguru', 'mindenamivan2.0@gmail.com', 0, '5.38.142.218', '5.38.142.218', NULL, '$2y$10$z9WJx8acx7tmqQeEUG4riuiHr5ZvLVfCpirmryGrW1lQ0MI5h9n9S', NULL),
(8, 'Timi369', 'Timi', 'etimike6@gmail.com', 0, '46.139.231.50', '46.139.231.50', NULL, '$2y$10$jqoifrW/sXTFqWcWQ7WdhOpIvhaJsfXuniUzqyYdI0si2wzIllI/e', NULL),
(9, 'Shiro', 'Pops', 'hengszter.n@vipmail.hu', 0, '188.36.115.22', '188.36.115.22', NULL, '$2y$10$4VTk0ON/1ToJi185kpLiV.CxdiXJGVNN8bsv1pexaHW9.TdN9PS3G', NULL),
(11, 'admin', 'admin', 'mail@mail.com', 1, '94.44.242.143', '94.44.242.143', NULL, '$2y$10$4tzwFADe4XWNmlueMTX7Nu7dMlUg3/gI1pqZwpZjeT7nPu3sa.CO.', NULL),
(13, 'Exonow', 'roland', 'revesz98@gmail.com', 0, '84.2.151.191', '84.2.151.191', NULL, '$2y$10$Ad90Vbm8xO00E/mHrL8IFubJ.q3JSnOV63HpNl5S1bcWV3D22t8X6', NULL),
(14, 'H0lyDiver', 'H0lyDiver', 'gergosoos1@gmail.com', 0, '46.139.225.112', '46.139.225.112', NULL, '$2y$10$iX33P2ewrHtm7pq44t5HtuP/Ai/q0aS41oYTFxCQn8hdI70FU7QNW', NULL),
(15, 'Brigi', 'Brigi', 'boldibrigitta17@gmail.com', 0, '89.134.225.51', '89.134.225.51', NULL, '$2y$10$9GLg/x3bPvo3.kNF9M8bpumLHY7uwG4KCXRsNq/I0bzP12eLtapqy', NULL),
(16, 'Akito', 'Aki', 'miamoracadensa@gmail.com', 0, '85.186.106.82', '85.186.106.82', NULL, '$2y$10$pR5oHPjY5PUhv8pPgwIt4eeeD37RMykacK0E7p/ZrjsWDAu4.qU1G', NULL),
(17, 'Hipervandor23', 'Hipervandor', 'nagy.kristof23@gmail.com', 0, '62.100.251.234', '62.100.251.234', NULL, '$2y$10$UQ01X.DH27FkwAXe3qaCF.yaGxu34Msq9mhMaoWctfZQ9P/pzrKYa', NULL),
(18, 'AdamS', 'Adam', 'adam.girisha@gmail.com', 0, '81.182.48.167', '81.182.48.167', NULL, '$2y$10$SDCfiy3QoqESuaS00EWtoeujOtp2hgizbQBzkM4YZW6jsNCPK2V/e', NULL),
(19, 'Todedi', 'Tod', 'todedi8966@sofrge.com', 0, '79.114.174.247', '79.114.174.247', NULL, '$2y$10$ERjfezUgaO1LWz0/4o4gv.XG6TNq4tPmSDaVk98q37nBUJCaYHojm', NULL),
(20, 'feherlaci', 'feherlaci', 'fld19@citromail.hu', 0, '87.97.94.193', '87.97.94.193', NULL, '$2y$10$HOUxH/u8SW2pNTn7dnhQlO15ytKXriZr5bDGBkB/ZMfz2CxET7GRK', NULL),
(21, 'Vörös András', 'Redalmafa', 'Voros.andras0823@gmail.com', 0, '82.131.237.117', '82.131.237.117', NULL, '$2y$10$dtiqozBXtwSszNM5K99buuX7xA7MsQSDcTJ56fB/Q1Rfe8Jp2MEWO', NULL);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `awards`
--
ALTER TABLE `awards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tblaward_id` (`tblaward_id`),
  ADD KEY `character_id` (`character_id`);

--
-- A tábla indexei `bans`
--
ALTER TABLE `bans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- A tábla indexei `bijuus`
--
ALTER TABLE `bijuus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `character_id` (`character_id`),
  ADD KEY `tblbijuu_id` (`tblbijuu_id`);

--
-- A tábla indexei `brothers`
--
ALTER TABLE `brothers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `character1_id` (`character1_id`),
  ADD KEY `character2_id` (`character2_id`);

--
-- A tábla indexei `characters`
--
ALTER TABLE `characters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `tblcharacter_id` (`tblcharacter_id`),
  ADD KEY `tblvillage_id` (`tblvillage_id`),
  ADD KEY `tblrang_id` (`tblrang_id`),
  ADD KEY `tblpoint_id` (`tblpoint_id`),
  ADD KEY `clan_id` (`clan_id`),
  ADD KEY `team_id` (`team_id`);

--
-- A tábla indexei `characters_trainings`
--
ALTER TABLE `characters_trainings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `character_id` (`character_id`);

--
-- A tábla indexei `clans`
--
ALTER TABLE `clans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `character_id` (`character_id`);

--
-- A tábla indexei `clan_members`
--
ALTER TABLE `clan_members`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clan_id` (`clan_id`),
  ADD KEY `character_id` (`character_id`);

--
-- A tábla indexei `credits`
--
ALTER TABLE `credits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- A tábla indexei `equipments`
--
ALTER TABLE `equipments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `character_id` (`character_id`),
  ADD KEY `tblequipment_id` (`tblequipment_id`);

--
-- A tábla indexei `experience_points`
--
ALTER TABLE `experience_points`
  ADD PRIMARY KEY (`id`),
  ADD KEY `character_id` (`character_id`);

--
-- A tábla indexei `generals`
--
ALTER TABLE `generals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `character_id` (`character_id`);

--
-- A tábla indexei `mission_points`
--
ALTER TABLE `mission_points`
  ADD PRIMARY KEY (`id`),
  ADD KEY `character_id` (`character_id`);

--
-- A tábla indexei `natures`
--
ALTER TABLE `natures`
  ADD PRIMARY KEY (`id`),
  ADD KEY `character_id` (`character_id`),
  ADD KEY `tblnature_id` (`tblnature_id`);

--
-- A tábla indexei `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- A tábla indexei `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- A tábla indexei `specialization_points`
--
ALTER TABLE `specialization_points`
  ADD PRIMARY KEY (`id`),
  ADD KEY `specialization_points_character_id_index` (`character_id`);

--
-- A tábla indexei `statistics_points`
--
ALTER TABLE `statistics_points`
  ADD PRIMARY KEY (`id`),
  ADD KEY `statistics_points_character_id_index` (`character_id`);

--
-- A tábla indexei `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status_character_id_index` (`character_id`);

--
-- A tábla indexei `tbl_awards`
--
ALTER TABLE `tbl_awards`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `tbl_bijuus`
--
ALTER TABLE `tbl_bijuus`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `tbl_characters`
--
ALTER TABLE `tbl_characters`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `tbl_equipments`
--
ALTER TABLE `tbl_equipments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tbl_equipments_tblcharacter_id_index` (`tblcharacter_id`),
  ADD KEY `tbl_equipments_tbltype_id_index` (`tbltype_id`),
  ADD KEY `tbl_equipments_tblrang_id_index` (`tblrang_id`),
  ADD KEY `tbl_equipments_tbltechnique_id_index` (`tbltechnique_id`),
  ADD KEY `tbl_equipments_tblequipment_id_index` (`tblequipment_id`);

--
-- A tábla indexei `tbl_headhunters`
--
ALTER TABLE `tbl_headhunters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tbl_headhunters_tblcharacter_id_index` (`tblcharacter_id`),
  ADD KEY `tbl_headhunters_tbltechnique_id_index` (`tbltechnique_id`),
  ADD KEY `tbl_headhunters_tblpoint_id_index` (`tblpoint_id`),
  ADD KEY `tbl_headhunters_tblrang_id_index` (`tblrang_id`),
  ADD KEY `tbl_headhunters_to_tbl_natures` (`tblnature_id`),
  ADD KEY `tbl_headhunters_to_tbl_equipments` (`tblequipment_id`);

--
-- A tábla indexei `tbl_missions`
--
ALTER TABLE `tbl_missions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tbl_missions_tbltechnique_id_index` (`tbltechnique_id`),
  ADD KEY `tbl_missions_tblequpment_id_index` (`tblequipment_id`),
  ADD KEY `tbl_missions_tblrang_id_index` (`tblrang_id`);

--
-- A tábla indexei `tbl_natures`
--
ALTER TABLE `tbl_natures`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tblnature1_id` (`tblnature1_id`),
  ADD KEY `tblnature2_id` (`tblnature2_id`),
  ADD KEY `tblrang_id` (`tblrang_id`);

--
-- A tábla indexei `tbl_points`
--
ALTER TABLE `tbl_points`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `tbl_rangs`
--
ALTER TABLE `tbl_rangs`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `tbl_techniques`
--
ALTER TABLE `tbl_techniques`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tbl_techniques_tblcharacter_id_index` (`tblcharacter_id`),
  ADD KEY `tbl_techniques_tbltype_id_index` (`tbltype_id`),
  ADD KEY `tbl_techniques_tblrang_id_index` (`tblrang_id`),
  ADD KEY `tbl_techniques_tbltechnique_id_index` (`tbltechnique_id`),
  ADD KEY `tbl_techniques_tblequipment_id_index` (`tblequipment_id`);

--
-- A tábla indexei `tbl_types`
--
ALTER TABLE `tbl_types`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `tbl_villages`
--
ALTER TABLE `tbl_villages`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teams_character_id_index` (`character_id`);

--
-- A tábla indexei `team_members`
--
ALTER TABLE `team_members`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teams_team_id_index` (`team_id`),
  ADD KEY `teams_character_id_index` (`character_id`);

--
-- A tábla indexei `techniques`
--
ALTER TABLE `techniques`
  ADD KEY `techniques_character_id_index` (`character_id`),
  ADD KEY `techniques_tbltechnique_id_index` (`tbltechnique_id`);

--
-- A tábla indexei `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `awards`
--
ALTER TABLE `awards`
  MODIFY `id` smallint(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `bans`
--
ALTER TABLE `bans`
  MODIFY `id` smallint(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `bijuus`
--
ALTER TABLE `bijuus`
  MODIFY `id` smallint(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `brothers`
--
ALTER TABLE `brothers`
  MODIFY `id` smallint(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `characters`
--
ALTER TABLE `characters`
  MODIFY `id` smallint(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT a táblához `characters_trainings`
--
ALTER TABLE `characters_trainings`
  MODIFY `id` smallint(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT a táblához `clans`
--
ALTER TABLE `clans`
  MODIFY `id` smallint(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `clan_members`
--
ALTER TABLE `clan_members`
  MODIFY `id` smallint(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `credits`
--
ALTER TABLE `credits`
  MODIFY `id` smallint(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `equipments`
--
ALTER TABLE `equipments`
  MODIFY `id` mediumint(9) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `experience_points`
--
ALTER TABLE `experience_points`
  MODIFY `id` smallint(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT a táblához `generals`
--
ALTER TABLE `generals`
  MODIFY `id` smallint(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT a táblához `mission_points`
--
ALTER TABLE `mission_points`
  MODIFY `id` smallint(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT a táblához `natures`
--
ALTER TABLE `natures`
  MODIFY `id` mediumint(9) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `specialization_points`
--
ALTER TABLE `specialization_points`
  MODIFY `id` smallint(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT a táblához `statistics_points`
--
ALTER TABLE `statistics_points`
  MODIFY `id` smallint(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT a táblához `status`
--
ALTER TABLE `status`
  MODIFY `id` smallint(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT a táblához `tbl_awards`
--
ALTER TABLE `tbl_awards`
  MODIFY `id` tinyint(4) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `tbl_bijuus`
--
ALTER TABLE `tbl_bijuus`
  MODIFY `id` tinyint(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT a táblához `tbl_characters`
--
ALTER TABLE `tbl_characters`
  MODIFY `id` tinyint(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT a táblához `tbl_equipments`
--
ALTER TABLE `tbl_equipments`
  MODIFY `id` smallint(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `tbl_headhunters`
--
ALTER TABLE `tbl_headhunters`
  MODIFY `id` smallint(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `tbl_missions`
--
ALTER TABLE `tbl_missions`
  MODIFY `id` smallint(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `tbl_natures`
--
ALTER TABLE `tbl_natures`
  MODIFY `id` tinyint(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT a táblához `tbl_points`
--
ALTER TABLE `tbl_points`
  MODIFY `id` tinyint(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT a táblához `tbl_rangs`
--
ALTER TABLE `tbl_rangs`
  MODIFY `id` tinyint(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT a táblához `tbl_techniques`
--
ALTER TABLE `tbl_techniques`
  MODIFY `id` smallint(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT a táblához `tbl_types`
--
ALTER TABLE `tbl_types`
  MODIFY `id` tinyint(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT a táblához `tbl_villages`
--
ALTER TABLE `tbl_villages`
  MODIFY `id` tinyint(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT a táblához `teams`
--
ALTER TABLE `teams`
  MODIFY `id` smallint(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `team_members`
--
ALTER TABLE `team_members`
  MODIFY `id` smallint(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `users`
--
ALTER TABLE `users`
  MODIFY `id` smallint(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `awards`
--
ALTER TABLE `awards`
  ADD CONSTRAINT `awards_to_characters` FOREIGN KEY (`character_id`) REFERENCES `characters` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `awards_to_tbl_awards` FOREIGN KEY (`tblaward_id`) REFERENCES `tbl_awards` (`id`) ON DELETE NO ACTION;

--
-- Megkötések a táblához `bans`
--
ALTER TABLE `bans`
  ADD CONSTRAINT `bans_to_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Megkötések a táblához `bijuus`
--
ALTER TABLE `bijuus`
  ADD CONSTRAINT `bijuus_to_characters` FOREIGN KEY (`character_id`) REFERENCES `characters` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bijuus_to_tbl_bijuus` FOREIGN KEY (`tblbijuu_id`) REFERENCES `tbl_bijuus` (`id`) ON DELETE NO ACTION;

--
-- Megkötések a táblához `brothers`
--
ALTER TABLE `brothers`
  ADD CONSTRAINT `brothers_to_characters1` FOREIGN KEY (`character1_id`) REFERENCES `characters` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `brothers_to_characters2` FOREIGN KEY (`character2_id`) REFERENCES `characters` (`id`) ON DELETE CASCADE;

--
-- Megkötések a táblához `characters`
--
ALTER TABLE `characters`
  ADD CONSTRAINT `characters_to_clans` FOREIGN KEY (`clan_id`) REFERENCES `clans` (`id`) ON DELETE NO ACTION,
  ADD CONSTRAINT `characters_to_tbl_characters` FOREIGN KEY (`tblcharacter_id`) REFERENCES `tbl_characters` (`id`) ON DELETE NO ACTION,
  ADD CONSTRAINT `characters_to_tbl_points` FOREIGN KEY (`tblpoint_id`) REFERENCES `tbl_points` (`id`) ON DELETE NO ACTION,
  ADD CONSTRAINT `characters_to_tbl_rangs` FOREIGN KEY (`tblrang_id`) REFERENCES `tbl_rangs` (`id`) ON DELETE NO ACTION,
  ADD CONSTRAINT `characters_to_tbl_villages` FOREIGN KEY (`tblvillage_id`) REFERENCES `tbl_villages` (`id`) ON DELETE NO ACTION,
  ADD CONSTRAINT `characters_to_teams` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE NO ACTION,
  ADD CONSTRAINT `characters_to_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Megkötések a táblához `characters_trainings`
--
ALTER TABLE `characters_trainings`
  ADD CONSTRAINT `characters_trainings_to_characters` FOREIGN KEY (`character_id`) REFERENCES `characters` (`id`) ON DELETE CASCADE;

--
-- Megkötések a táblához `clans`
--
ALTER TABLE `clans`
  ADD CONSTRAINT `clans_to_characters` FOREIGN KEY (`character_id`) REFERENCES `characters` (`id`) ON DELETE CASCADE;

--
-- Megkötések a táblához `clan_members`
--
ALTER TABLE `clan_members`
  ADD CONSTRAINT `clan_members_to_characters` FOREIGN KEY (`character_id`) REFERENCES `characters` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `clan_members_to_clans` FOREIGN KEY (`clan_id`) REFERENCES `clans` (`id`) ON DELETE CASCADE;

--
-- Megkötések a táblához `credits`
--
ALTER TABLE `credits`
  ADD CONSTRAINT `credits_to_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Megkötések a táblához `equipments`
--
ALTER TABLE `equipments`
  ADD CONSTRAINT `equipments_to_characters` FOREIGN KEY (`character_id`) REFERENCES `characters` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `equipments_to_tbl_equipments` FOREIGN KEY (`tblequipment_id`) REFERENCES `tbl_equipments` (`id`) ON DELETE NO ACTION;

--
-- Megkötések a táblához `experience_points`
--
ALTER TABLE `experience_points`
  ADD CONSTRAINT `experience_points_to_characters` FOREIGN KEY (`character_id`) REFERENCES `characters` (`id`) ON DELETE CASCADE;

--
-- Megkötések a táblához `generals`
--
ALTER TABLE `generals`
  ADD CONSTRAINT `generals_to_characters` FOREIGN KEY (`character_id`) REFERENCES `characters` (`id`) ON DELETE CASCADE;

--
-- Megkötések a táblához `mission_points`
--
ALTER TABLE `mission_points`
  ADD CONSTRAINT `mission_points_to_characters` FOREIGN KEY (`character_id`) REFERENCES `characters` (`id`) ON DELETE CASCADE;

--
-- Megkötések a táblához `specialization_points`
--
ALTER TABLE `specialization_points`
  ADD CONSTRAINT `specialization_points_to_characters` FOREIGN KEY (`character_id`) REFERENCES `characters` (`id`) ON DELETE CASCADE;

--
-- Megkötések a táblához `statistics_points`
--
ALTER TABLE `statistics_points`
  ADD CONSTRAINT `statistics_points_to_characters` FOREIGN KEY (`character_id`) REFERENCES `characters` (`id`) ON DELETE CASCADE;

--
-- Megkötések a táblához `status`
--
ALTER TABLE `status`
  ADD CONSTRAINT `status_to_characters` FOREIGN KEY (`character_id`) REFERENCES `characters` (`id`) ON DELETE CASCADE;

--
-- Megkötések a táblához `tbl_equipments`
--
ALTER TABLE `tbl_equipments`
  ADD CONSTRAINT `tbl_equipments_to_tbl_characters` FOREIGN KEY (`tblcharacter_id`) REFERENCES `tbl_characters` (`id`) ON DELETE NO ACTION,
  ADD CONSTRAINT `tbl_equipments_to_tbl_equipments` FOREIGN KEY (`tblequipment_id`) REFERENCES `tbl_equipments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tbl_equipments_to_tbl_rangs` FOREIGN KEY (`tblrang_id`) REFERENCES `tbl_rangs` (`id`) ON DELETE NO ACTION,
  ADD CONSTRAINT `tbl_equipments_to_tbl_techniques` FOREIGN KEY (`tbltechnique_id`) REFERENCES `tbl_techniques` (`id`) ON DELETE NO ACTION,
  ADD CONSTRAINT `tbl_equipments_to_tbl_types` FOREIGN KEY (`tbltype_id`) REFERENCES `tbl_types` (`id`) ON DELETE NO ACTION;

--
-- Megkötések a táblához `tbl_headhunters`
--
ALTER TABLE `tbl_headhunters`
  ADD CONSTRAINT `tbl_headhunters_to_tbl_characters` FOREIGN KEY (`tblcharacter_id`) REFERENCES `tbl_characters` (`id`) ON DELETE NO ACTION,
  ADD CONSTRAINT `tbl_headhunters_to_tbl_equipments` FOREIGN KEY (`tblequipment_id`) REFERENCES `tbl_equipments` (`id`) ON DELETE NO ACTION,
  ADD CONSTRAINT `tbl_headhunters_to_tbl_natures` FOREIGN KEY (`tblnature_id`) REFERENCES `tbl_natures` (`id`) ON DELETE NO ACTION,
  ADD CONSTRAINT `tbl_headhunters_to_tbl_points` FOREIGN KEY (`tblpoint_id`) REFERENCES `tbl_points` (`id`) ON DELETE NO ACTION,
  ADD CONSTRAINT `tbl_headhunters_to_tbl_rangs` FOREIGN KEY (`tblrang_id`) REFERENCES `tbl_rangs` (`id`) ON DELETE NO ACTION,
  ADD CONSTRAINT `tbl_headhunters_to_tbl_techniques` FOREIGN KEY (`tbltechnique_id`) REFERENCES `tbl_techniques` (`id`) ON DELETE NO ACTION;

--
-- Megkötések a táblához `tbl_missions`
--
ALTER TABLE `tbl_missions`
  ADD CONSTRAINT `tbl_missions_to_tbl_equipments` FOREIGN KEY (`tblequipment_id`) REFERENCES `tbl_equipments` (`id`) ON DELETE NO ACTION,
  ADD CONSTRAINT `tbl_missions_to_tbl_rangs` FOREIGN KEY (`tblrang_id`) REFERENCES `tbl_rangs` (`id`) ON DELETE NO ACTION,
  ADD CONSTRAINT `tbl_missions_to_tbl_techniques` FOREIGN KEY (`tbltechnique_id`) REFERENCES `tbl_techniques` (`id`) ON DELETE NO ACTION;

--
-- Megkötések a táblához `tbl_natures`
--
ALTER TABLE `tbl_natures`
  ADD CONSTRAINT `tbl_natures_3_to_tbl_natures_1` FOREIGN KEY (`tblnature1_id`) REFERENCES `tbl_natures` (`id`) ON DELETE NO ACTION,
  ADD CONSTRAINT `tbl_natures_3_to_tbl_natures_2` FOREIGN KEY (`tblnature2_id`) REFERENCES `tbl_natures` (`id`) ON DELETE NO ACTION,
  ADD CONSTRAINT `tbl_natures_3_to_tbl_rangs` FOREIGN KEY (`tblrang_id`) REFERENCES `tbl_rangs` (`id`) ON DELETE NO ACTION;

--
-- Megkötések a táblához `tbl_techniques`
--
ALTER TABLE `tbl_techniques`
  ADD CONSTRAINT `tbl_techniques_to_tbl_characters` FOREIGN KEY (`tblcharacter_id`) REFERENCES `tbl_characters` (`id`) ON DELETE NO ACTION,
  ADD CONSTRAINT `tbl_techniques_to_tbl_equipments` FOREIGN KEY (`tblequipment_id`) REFERENCES `tbl_equipments` (`id`) ON DELETE NO ACTION,
  ADD CONSTRAINT `tbl_techniques_to_tbl_rangs` FOREIGN KEY (`tblrang_id`) REFERENCES `tbl_rangs` (`id`) ON DELETE NO ACTION,
  ADD CONSTRAINT `tbl_techniques_to_tbl_techniques` FOREIGN KEY (`tbltechnique_id`) REFERENCES `tbl_techniques` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tbl_techniques_to_tbl_types` FOREIGN KEY (`tbltype_id`) REFERENCES `tbl_types` (`id`) ON DELETE NO ACTION;

--
-- Megkötések a táblához `teams`
--
ALTER TABLE `teams`
  ADD CONSTRAINT `teams_to_characters` FOREIGN KEY (`character_id`) REFERENCES `characters` (`id`) ON DELETE CASCADE;

--
-- Megkötések a táblához `team_members`
--
ALTER TABLE `team_members`
  ADD CONSTRAINT `team_members_to_characters` FOREIGN KEY (`character_id`) REFERENCES `characters` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `team_members_to_teams` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE;

--
-- Megkötések a táblához `techniques`
--
ALTER TABLE `techniques`
  ADD CONSTRAINT `techniques_to_characters` FOREIGN KEY (`character_id`) REFERENCES `characters` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `techniques_to_tbl_techniques` FOREIGN KEY (`tbltechnique_id`) REFERENCES `tbl_techniques` (`id`) ON DELETE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
