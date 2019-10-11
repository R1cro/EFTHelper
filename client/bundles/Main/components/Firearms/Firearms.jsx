import React from 'react';

class Firearms extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
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
            <div>
                // Firearms
            </div>
        )
    }
}

export default Firearms;