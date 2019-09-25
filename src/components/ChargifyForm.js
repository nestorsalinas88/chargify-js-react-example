import React, { Component } from 'react';

class ChargifyForm extends Component {
  constructor(props) {
    super(props);
   
    this.handleSubmit = this.handleSubmit.bind(this);
    this.chargifyForm = React.createRef();
    this.state = {token: ''};
  }

  handleSubmit(e) {
    e.preventDefault();

    this.chargify.token(
      this.chargifyForm.current,

      (token) => {
        console.log('{host} token SUCCESS - token: ', token);
        this.setState({token: token});
      },

      (error) => {
        console.log('{host} token ERROR - err: ', error);
      }
    );
  }
      componentDidMount() {
    this.chargify = new window.Chargify();

    this.chargify.load({
      // selector where the iframe will be included in the host's HTML (i.e. '#chargify-form')
      // optional if you have a `selector` on each and every field
      selector: '#chargify-form',
  


      // required label/translation (i.e. '*') for required fields
      // Especially useful if you use 'fields' option
      requiredLabel: '*',

      firstName: {
        // selector, where the iframe with this field will be included
        // on your page
        selector: '#chargify1',

        // ot overrides default label
        label: 'FIRST NAME',

        // it overrides default placeholder
        placeholder: 'John',

        // if a given field is optional by default, you can make it required
        required: false,

        // it overrides default error message
        message: 'First name is not valid. Please update it.',

        // it overrides or defines max length
        maxlength: '30',

        // it overrides global styles for this field only
        style: {
          field: {
            backgroundColor: '#ffdfdf',
            padding: '3px',
            borderRadius: '5px'
          },
          input: {
            backgroundColor: '#fdfde1',
            paddingTop: '2px',
            paddingBottom: '1px',
            placeholder: { color: 'green' }
          },
          label: {
            paddingTop: '2px',
            paddingBottom: '1px',
            fontSize: '11px'
          },
          message: { paddingTop: '2px', paddingBottom: '1px' }
        }
      },

      lastName: {
        selector: '#chargify1',
        label: 'LAST NAME',
        placeholder: 'Doe',
        required: false,
        message: 'This field is not valid. Please update it.',
        maxlength: '30',
        style: {
          field: {
            backgroundColor: '#ffdfdf',
            padding: '3px',
            borderRadius: '5px'
          },
          input: {
            backgroundColor: '#fdfde1',
            paddingTop: '2px',
            paddingBottom: '1px'
          },
          label: {
            paddingTop: '2px',
            paddingBottom: '1px',
            fontSize: '11px'
          },
          message: { paddingTop: '2px', paddingBottom: '1px' }
        }
      }


    });
  }

  componentDidUpdate(prevProps) {  
    if (prevProps.type !== this.props.type) {
      this.chargify.load({type: this.props.type});
      this.setState({token: ''});
    }
  }

  componentWillUnmount() {
    this.chargify.unload();
  }

  render() {
    return(
      <form onSubmit={this.handleSubmit} ref={this.chargifyForm}>
        <div id="chargify-form">
          <div className="host-field" id={"chargify1"}>
            <input className="host-input" data-chargify="firstName" value="Jane"/>
            <input className="host-input" data-chargify="lastName" value="Mehmed"/>
          </div>

          <div className="host-field">
            <input className="host-input" data-chargify="address" value="123 Main St"/>
          </div>
          <div className="host-field">
            <input className="host-input" data-chargify="address2" value="#321"/>
          </div>
          <div className="host-field">
            <input className="host-input" data-chargify="city" value="San Antonio"/>
          </div>
          <div className="host-field">
            <input className="host-input" data-chargify="state" value="TX"/>
          </div>
          <div className="host-field">
            <input className="host-input" data-chargify="country" value="US"/>
          </div>
          <div className="host-field">
            <input className="host-input" data-chargify="zip" value="12345"/>
          </div>
        </div>
        <label>
          Hidden Token: <input id="host-token" disabled value={this.state.token}/>
        </label>
        <p>
          <button type="submit">Submit Host Form</button>
        </p>
      </form>
    )
  }
}

export default ChargifyForm;