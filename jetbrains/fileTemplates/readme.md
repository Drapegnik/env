# file templates

## React Basic Component
```js
import React, { Component, PropTypes } from 'react';

class ${NAME} extends Component {
  render() {
    return (
      <div></div>
    );
  }
}

${NAME}.propTypes = {};
${NAME}.defaultProps = {};

export default ${NAME};
```

## React Stateless Component
```js
import React, { PropTypes } from 'react'

const ${NAME} = (props) => {
	return (
	    <div></div>
	);
}

${NAME}.propTypes = {}

export default ${NAME}
```