import { host } from "./host";

export const menuLinks = [
    {
        id: 1,
        content: "Hokage iroda",
        eng: "hokage-menu-container",
        img: host + "/assets/images/icons/hokage-icon.png",
        class: "menu-icon hokage-icon",
        submenus: [
            {
                id: 1,
                content: "Akadémia",
                to: "/academy"
            },
            {
                id: 2,
                content: "Edzés",
                to: "/training"
            },
            {
                id: 3,
                content: "NPC harc",
                to: "/npc-fight"
            },
            {
                id: 4,
                content: "PVP harc",
                to: "/pvp-fight"
            },
            {
                id: 5,
                content: "Elem tanulása",
                to: "/nature-learning"
            },
            {
                id: 6,
                content: "Kage torony",
                to: "/kage-tower"
            },
            {
                id: 7,
                content: "Aréna",
                to: "/arena"
            }
        ]
    },
    {
        id: 2,
        content: "Tevékenységek",
        eng: "mission-menu-container",
        img: host + "/assets/images/icons/mission-icon.png",
        class: "menu-icon mission-icon",
        submenus: [
            {
                id: 1,
                content: "Küldetések",
                to: "/missions"
            },
            {
                id: 2,
                content: "Munkák",
                to: "/works"
            }, {
                id: 3,
                content: "Speciális küldetések",
                to: "/special-missions"
            },
            {
                id: 4,
                content: "Fejvadászatok",
                to: "/headhunting"
            },
            {
                id: 5,
                content: "Kitüntetések",
                to: "/awards"
            }
        ]
    },
    {
        id: 3,
        content: "Városközpont",
        eng: "city-menu-container",
        img: host + "/assets/images/icons/city-icon.png",
        class: "menu-icon city-icon",
        submenus: [
            {
                id: 1,
                content: "Kisállat kereskedés",
                to: "/pet-shop"
            },
            {
                id: 2,
                content: "Kovácsműhely",
                to: "/blacksmith"
            },
            {
                id: 3,
                content: "Rangok",
                to: "/rangs"
            },
            {
                id: 4,
                content: "Bijuuk",
                to: "/bijuus"
            },
            {
                id: 5,
                content: "DNS kereskedés",
                to: "/dns-trading"
            },
            {
                id: 6,
                content: "Szerencsejáték",
                to: "/gambling"
            },
            {
                id: 7,
                content: "Bank",
                to: "/bank"
            }
        ]
    },
    {
        id: 4,
        content: "Jutsuk",
        eng: "jutsu-menu-container",
        img: host + "/assets/images/icons/jutsu-icon.png",
        class: "menu-icon jutsu-icon",
        submenus: [
            {
                id: 1,
                content: "Alaptermészeti jutsuk",
                to: "/basic-nature-jutsus"
            },
            {
                id: 2,
                content: "Kombinált természeti jutsuk",
                to: "/combined-nature-jutsus"
            },
            {
                id: 3,
                content: "Egyéb jutsuk",
                to: "/other-jutsus"
            },
            {
                id: 4,
                content: "Yin és Yang",
                to: "/yin-yang"
            },
            {
                id: 5,
                content: "Kekkei Genkai",
                to: "/kekkei-genkai"
            },
            {
                id: 6,
                content: "Vérvonal jutsuk",
                to: "/bloodline-jutsus"
            },
            {
                id: 7,
                content: "Egyedi jutsuk",
                to: "/:id/unique-jutsus"
            }
        ]
    },
    {
        id: 5,
        content: "Felszerelések",
        eng: "equipment-menu-container",
        img: host + "/assets/images/icons/weapon-icon.png",
        class: "menu-icon equipment-icon",
        submenus: [
            {
                id: 1,
                content: "Közelharci felszerelések",
                to: "/meele-equipments"
            },
            {
                id: 2,
                content: "Távolharci felszerelések",
                to: "/remote-equipments"
            },
            {
                id: 3,
                content: "Bábok",
                to: "/puppets"
            },
            {
                id: 4,
                content: "A Köd Hét Kardja",
                to: "/sewen-swords"
            },
            {
                id: 5,
                content: "Legendás felszerelések",
                to: "/legendary-equipments"
            },
            {
                id: 6,
                content: "Egyedi felszerelések",
                to: "/:id/unique-equipments"
            }
        ]
    },
    {
        id: 6,
        content: "Dicsőségtábla",
        eng: "rank-menu-container",
        img: host + "/assets/images/icons/ranklist-icon.png",
        class: "menu-icon ranklist-icon",
        submenus: [
            {
                id: 1,
                content: "Karakterek",
                to: "/characters-ranklist"
            },
            {
                id: 2,
                content: "Lakhelyek",
                to: "/villages-ranklist"
            },
            {
                id: 3,
                content: "Csapatok",
                to: "/teams-ranklist"
            },
            {
                id: 4,
                content: "Klánok",
                to: "/clans-ranklist"
            }
        ]
    },
    {
        id: 7,
        content: "Beállítások",
        eng: "setting-menu-container",
        img: host + "/assets/images/icons/setting-icon.png",
        class: "menu-icon setting-icon",
        submenus: [
            {
                id: 1,
                content: "Új karakter létrehozása",
                to: "/create-new-character"
            },
            {
                id: 2,
                content: "Karaktereim",
                to: "/users/:id/characters"
            },
            {
                id: 3,
                content: "Üzenetek",
                to: "/users/:id/messages"
            }
        ]
    }
]

export const footerLinks = [
    { id: 1, content: 'Kezdőlap', to: '/' },
    { id: 2, content: 'Rólunk', to: '/about' },
    { id: 3, content: 'Hogyan kezdjem?', to: '/how-to-start' },
    { id: 4, content: 'Felhasználási feltételek', to: '/terms-of-use' },
    { id: 5, content: 'Adatvédelmi szabályzat', to: '/privacy-policy' },
    { id: 6, content: 'Oldaltérkép', to: '/sitemap' },
    { id: 7, content: 'Kapcsolat', to: '/contact' },
];