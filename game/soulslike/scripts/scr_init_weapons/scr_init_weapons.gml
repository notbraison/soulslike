/// @function scr_init_weapons()
/// @description Initializes all weapons

global.weapons = {
    sword: {
        name: "Sword",
        damage: 12,
        cooldown: 20,
        staminaCost: 8,
        sprite: spr_sword
    },

    axe: {
        name: "Axe",
        damage: 20,
        cooldown: 35,
        staminaCost: 15,
        sprite: spr_axe
    },

    spear: {
        name: "Spear",
        damage: 15,
        cooldown: 25,
        staminaCost: 9,
        sprite: spr_spear
    },

    sabre: {
        name: "Sabre",
        damage: 9,
        cooldown: 15,
        staminaCost: 6,
        sprite: spr_sabre
    }
};
