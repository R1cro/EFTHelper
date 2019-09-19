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
                <div key={caliber.id}>
                    <p>{caliber.name}</p>
                </div>
            )
        })
        return(
            <div>
                <h2>Caliber list</h2>
                {calibers}
            </div>
        )
    }
}

export default Calibers;