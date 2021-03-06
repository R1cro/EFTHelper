import React from 'react';
import Table from "../UI/Table";

class Firearms extends React.Component {
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
                { title: 'Weapon', field: 'weapon_name',
                    cellStyle: this.cellStyle
                }
            ],
            firearms: []
        };
    }

    componentDidMount() {
        fetch('/api/v1/firearms')
            .then((response) => {return response.json()})
            .then((data) => {
                this.setState({ firearms: data });
            });
    }

    render() {
        return (
            <div id="firearm-table">
                <Table
                    title="Firearms"
                    columns={this.state.columns}
                    data={this.state.firearms}
                    options={this.options}
                />
            </div>
        )
    }
}

export default Firearms;