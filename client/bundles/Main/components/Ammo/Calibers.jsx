import React from 'react';

class Calibers extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
           calibers: []
        };
    }

    componentDidMount() {
        fetch('/api/v1/calibers')
            .then((response) => {return response.json()})
            .then((data) => {this.setState({ calibers: data }) });
    }

    render(){
        let calibers = this.state.calibers.map((caliber) => {
            return(
                <tr key={caliber.id}>
                    <td>{caliber.id}</td>
                    <td>{caliber.name}</td>
                </tr>
            )
        })
        return(
            <div>
                <h3>Caliber list</h3>
                <table className="responsive-table centered">
                    <thead>
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                    </tr>
                    </thead>

                    <tbody>
                        {calibers}
                    </tbody>
                </table>
            </div>
        )
    }
}

export default Calibers;