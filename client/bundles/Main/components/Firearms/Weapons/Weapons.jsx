import React from 'react';
import Table from "../../UI/Table";

class Weapons extends React.Component {
    constructor(props) {
        super(props);
        this.cellStyle = {
            color: '#FFF',
            fontFamily: 'Bender'
        };
        this.options = {
            pageSize: 10,
            hover: true
        };
        this.state = {
            columns: [
                { title: 'ID', field: 'id', type: 'numeric',
                    cellStyle: this.cellStyle
                },
                { title: 'Name', field: 'name',
                    cellStyle: this.cellStyle
                },
                { title: 'Firearm type', field: 'firearm_type',
                    cellStyle: this.cellStyle
                },
                { title: 'Caliber', field: 'caliber_name',
                    cellStyle: this.cellStyle
                },
                { title: 'Single mode', field: 'single_mode', type: 'boolean',
                    cellStyle: this.cellStyle
                },
                { title: 'Auto mode', field: 'auto_mode', type: 'boolean',
                    cellStyle: this.cellStyle
                },
                { title: 'Fire rate (rpm)', field: 'fire_rate', type: 'numeric',
                    cellStyle: this.cellStyle
                },
                { title: 'Fire range (meters)', field: 'effective_range',
                    cellStyle: this.cellStyle
                },
                { title: 'Foldable?', field: 'foldable', type: 'boolean',
                    cellStyle: this.cellStyle
                },
            ],
            weapons: []
        };
    }

    handleRowClick = (event, data) => {
        console.log("Row clicked: ", event, data);
    };

    componentDidMount() {
        fetch('/api/v1/weapons')
            .then((response) => {return response.json()})
            .then((data) => {
                this.setState({ weapons: data });
            });
    }

    render() {
        return (
            <div id="weapon-table">
                <Table
                    title="Weapons"
                    columns={this.state.columns}
                    data={this.state.weapons}
                    options={this.options}
                    onRowClick={(event, data) => this.handleRowClick(event, data)}
                />
            </div>
        )
    }
}

export default Weapons;