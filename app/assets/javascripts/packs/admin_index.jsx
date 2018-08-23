import {MOUNT_NODE} from '../constants.js'
import React from 'react';
import {render} from 'react-dom';
import * as PropTypes from 'prop-types';
import {AppProvider, Page, Card, Button} from '@shopify/polaris';

class MyApp extends React.Component {
  // This line is very important! It tells React to attach the `easdk`
  // object to `this.context` within your component.
  static contextTypes = {
    easdk: PropTypes.object,
  };

  render() {
    return (
      <Page title="Example application">
        <Card sectioned>
          <Button onClick={() => this.context.easdk.startLoading()}>
            Start loading
          </Button>
          <Button onClick={() => this.context.easdk.stopLoading()}>
            Stop loading
          </Button>
        </Card>
      </Page>
    );
  }
}

render(
  <AppProvider
    apiKey="YOUR_APP_API_KEY"
    shopOrigin="https://localhost:3000"
  >
    <MyApp />
  </AppProvider>,
  document.querySelector(`#${MOUNT_NODE}`),
);
