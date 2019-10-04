import React from 'react';

class Bullets extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
           bullets: []
        };
    }

    componentDidMount() {
        fetch('/api/v1/bullets')
            .then((response) => {return response.json()})
            .then((data) => {this.setState({ bullets: data }) });
    }

    render(){
        let bullets = this.state.bullets.map((bullet) => {
            return(
                <tr key={bullet.id}>
                    <td>{bullet.id}</td>
                    <td>{bullet.name}</td>
                    <td>{bullet.penetration}</td>
                    <td>{bullet.damage}</td>
                    <td>{bullet.armor_damage}</td>
                    <td>{bullet.ricochet_chance}</td>
                    <td>{bullet.frag_chance}</td>
                    <td>{bullet.muzzle_velocity}</td>
                    <td>{ bullet.tracer ? 'Yes' : 'No'}</td>
                    <td>{bullet.subsonic ? 'Yes' : 'No'}</td>
                </tr>
            )
        })
        return(
            <div>
                <h3>Bullet list</h3>
                <table className="responsive-table centered">
                    <thead>
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Penetration</th>
                        <th>Damage</th>
                        <th>Armor damage</th>
                        <th>Ricochet (%)</th>
                        <th>Fragmentation (%)</th>
                        <th>Muzzle velocity</th>
                        <th>Is tracer</th>
                        <th>Is subsonic</th>
                    </tr>
                    </thead>

                    <tbody>
                    {bullets}
                    </tbody>
                </table>
            </div>
        )
    }
}

export default Bullets;