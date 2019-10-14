import React from 'react';
import Table from "../UI/Table";

class Bullets extends React.Component {
    constructor(props) {
        super(props);
        this.cellStyle = {
            color: '#FFF',
            fontFamily: 'Bender'
        };
        this.options = {
            pageSize: 10
        };
        this.state = {
            columns: [
                { title: 'ID', field: 'id', type: 'numeric',
                    cellStyle: this.cellStyle
                },
                { title: 'Name', field: 'name',
                    cellStyle: this.cellStyle
                },
                { title: 'Caliber', field: 'caliber_name',
                    cellStyle: this.cellStyle
                },
                { title: 'Penetration', field: 'penetration', type: 'numeric',
                    cellStyle: this.cellStyle
                },
                { title: 'Damage', field: 'damage', type: 'numeric' ,
                    cellStyle: this.cellStyle
                },
                { title: 'Armor damage', field: 'armor_damage', type: 'numeric',
                    cellStyle: this.cellStyle
                },
                { title: 'Ricochet chance (%)', field: 'ricochet_chance', type: 'numeric',
                    cellStyle: this.cellStyle
                },
                { title: 'Fragmentation chance (%)', field: 'frag_chance', type: 'numeric' ,
                    cellStyle: this.cellStyle
                },
                { title: 'Muzzle velocity (m/s)', field: 'muzzle_velocity', type: 'numeric' ,
                    cellStyle: this.cellStyle
                },
                { title: 'Tracer?', field: 'tracer', type: 'boolean' ,
                    cellStyle: this.cellStyle
                },
                { title: 'Subsonic?', field: 'subsonic', type: 'boolean' ,
                    cellStyle: this.cellStyle
                },
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
        return (
            <div id="bullet-table">
                <Table
                    title="Bullets"
                    columns={this.state.columns}
                    data={this.state.bullets}
                    options={this.options}
                />
            </div>
        )
    }
}

export default Bullets;