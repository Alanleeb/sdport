import React, { Component } from 'react';
import user from '../reducers/user';
import axios from 'axios'

class Profile extends Component {
    state = {user: []}

    componentDidMount() {
        axios.get('/api/users')
          .then( res => this.setState({ users: res.data }) )
        }

    render() {
        return(
            <div>
                <h1>Sundance Portal</h1>
            </div>

        )
    }
}
export default Profile;