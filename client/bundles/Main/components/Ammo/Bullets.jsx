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
                <div key={bullet.id}>
                    <p>{bullet.name}</p>
                </div>
            )
        })
        return(
            <div>
                <h2>Bullet list</h2>
                {bullets}
            </div>
        )
    }
}

export default Bullets;