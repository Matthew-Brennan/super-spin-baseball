class_name BallAndChainData

enum { WIFFLE, RUBBER, IRON}

const TYPES = {
    WIFFLE: {
        "name": "Iron Ball",
        "chain_length": 90.0,
        "base_max_speed": 300.0,
        "tracking_force": 18.0,
        "linear_damp": 3.5,
        "damage": 10,
        "weight": 1.0,       # heavier = more knockback
    },
    RUBBER: {
        "name": "Spiked Ball",
        "chain_length": 110.0,
        "base_max_speed": 380.0,
        "tracking_force": 22.0,
        "linear_damp": 2.5,
        "damage": 18,
        "weight": 1.2,
    },
    IRON: {
        "name": "Heavy Boulder",
        "chain_length": 70.0,
        "base_max_speed": 200.0,
        "tracking_force": 10.0,
        "linear_damp": 5.0,
        "damage": 35,
        "weight": 3.0,
    },
}