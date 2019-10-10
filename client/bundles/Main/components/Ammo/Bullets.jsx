import React from 'react';
import MaterialTable from 'material-table';

class Bullets extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            columns: [
                { title: 'ID', field: 'id', type: 'numeric' },
                { title: 'Name', field: 'name' },
                { title: 'Penetration', field: 'penetration', type: 'numeric' },
                { title: 'Damage', field: 'damage', type: 'numeric' },
                { title: 'Armor damage', field: 'armor_damage', type: 'numeric' },
                { title: 'Ricochet chance (%)', field: 'ricochet_chance', type: 'numeric' },
                { title: 'Fragmentation chance (%)', field: 'frag_chance', type: 'numeric' },
                { title: 'Muzzle velocity', field: 'muzzle_velocity', type: 'numeric' },
                { title: 'Tracer?', field: 'tracer', type: 'boolean' },
                { title: 'Subsonic?', field: 'subsonic', type: 'boolean' },
            ],
            bullets: []
        };
    }

    componentDidMount() {
        fetch('/api/v1/bullets')
            .then((response) => {return response.json()})
            .then((data) => {
                this.setState({ bullets: data });
            });
    }

    render() {
         let bullets = this.state.bullets.map((bullet) => {
             return {
                 id: bullet.id,
                 name: bullet.name,
                 penetration: bullet.penetration,
                 damage: bullet.damage,
                 armor_damage: bullet.armor_damage,
                 ricochet_chance: bullet.ricochet_chance,
                 frag_chance: bullet.frag_chance,
                 muzzle_velocity: bullet.muzzle_velocity,
                 tracer: bullet.tracer,
                 subsonic: bullet.subsonic
             };
        });

        return (
            <MaterialTable
                title="Bullets"
                columns={this.state.columns}
                data={bullets}
            />
        )
    }
}

export default Bullets;