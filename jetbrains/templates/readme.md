# live templates

useful shortcuts for WebStorm [live templates feature](https://www.jetbrains.com/help/webstorm/live-templates-2.html)

<p align="center">
  <img width="700px" src="http://res.cloudinary.com/dzsjwgjii/image/upload/v1502207798/rcc-demo.gif"/>
</p>

## table of contents

- [JavaScript](#javascript)
- [React](#react)
  - [common](#react)
  - [redux methods](#redux-methods)
  - [lifecycle hooks](#lifecycle-hooks)
  - [events callbacks](#events-callbacks)
- [Other](#other)

## how to use

> To start using this live templates simply put `.xml` file into your WebStorm live templates folder

- **macOS**: `~/Library/Preferences/WebStorm<version number>/templates`
- **Linux**: `~/.WebStorm<version number>/config/templates`
- **Windows**: `<HOME>\.WebStorm<version number>\config\templates`

> Open `Preferences` -> `Editor` -> `Live Templates` and modify templates for you

> Use `cmd+j` for fulltext search by templates abbreviation and description

## [JavaScript](https://github.com/Drapegnik/env/blob/master/jetbrains/templates/JavaScript.xml)

### > `im`

> ES6 Import - default

```js
import $CLASS$ from '$MODULE$';
$END$;
```

---

### > `imp`

> ES6 Import

```js
import { $FUNC$ } from '$MODULE$';
$END$;
```

---

### > `log`

> console.log

```js
console.log('$MESSAGE$: ', $PARAM$);
```

---

### > `fe`

> ES6 forEach function

```js
$ARRAY$.forEach($VAR$ => $END$);
```

### > `map`

> ES6 map function

```js
$ARRAY$.map($VAR$ => $END$);
```

### > `fil`

> ES6 filter function

```js
$ARRAY$.filter($VAR$ => $END$);
```

| name    | expression          | default  |
| ------- | ------------------- | -------- |
| `ARRAY` | `jsArrayVariable()` |
| `VAR`   |                     | `"item"` |

---

### > `red`

> ES6 reduce function

```js
$ARRAY$.reduce(($ACC$, $CUR$) => $END$);
```

---

### > `=>`

> ES6 arrow function

```js
const $NAME$ = $PARAMS$ => {
  return $END$;
};
```

---

### > `for`

> Iterate elements of an array

```js
for (let $INDEX$ = 0; $INDEX$ < $ARRAY$.length; $INDEX$++) {
  let $VAR$ = $ARRAY$[$INDEX$];
  $END$;
}
```

### > `rfor`

> Iterate elements of an array in a reverse order

```js
for (let $INDEX$ = $ARRAY$.length - 1; $INDEX$ >= 0; $INDEX$--) {
  let $VAR$ = $ARRAY$[$INDEX$];
  $END$;
}
```

| name    | expression                | default |
| ------- | ------------------------- | ------- |
| `INDEX` | `jsSuggestIndexName()`    | `"i"`   |
| `ARRAY` | `jsArrayVariable()`       |
| `VAR`   | `jsSuggestVariableName()` |

---

### > `forof`

> Iterate (for..of) - ES6

```js
for (let $VAR$ of $ARRAY$) {
  $END$;
}
```

---

### > `if`

> If condition

```js
if ($COND$) {
  $END$;
}
```

---

### > `ifel`

> If, else construction

```js
if ($COND$) {
  $END$;
} else {
}
```

---

### > `ter`

> Ternary operator

```js
$COND$ ? $EXPR$ : $END$;
```

---

## [React](https://github.com/Drapegnik/env/blob/master/jetbrains/templates/React.xml)

### > `rcc`

> React Class Component

```js
import React, { Component } from 'react';
import PropTypes from 'prop-types';

class $COMPONENT$ extends Component {
  static propTypes = {};

  static defaultProps = {};

  render() {
    return <div>$END$</div>;
  }
}

export default $COMPONENT$;
```

---

### > `rfc`

> React Functional Component

```js
import React from 'react';
import PropTypes from 'prop-types';

const $COMPONENT$ = props => {
  return <div>$END$</div>;
};

$COMPONENT$.propTypes = {};

$COMPONENT$.defaultProps = {};

export default $COMPONENT$;
```

---

### > `pt`

> PropType

```js
$PROP$: PropTypes.$TYPE$$ISREQUIRED$,
```

| name         | expression | default         |
| ------------ | ---------- | --------------- |
| `ISREQUIRED` |            | `".isRequired"` |

---

### > `pts`

> Functional Component PropTypes

```js
$COMPONENT$.propTypes = {
  $PROP$: PropTypes.$TYPE$$ISREQUIRED$,
  $END$,
};
```

| name        | expression                   | default |
| ----------- | ---------------------------- | ------- |
| `COMPONENT` | `fileNameWithoutExtension()` |

---

### > `df`

> Functional Component defaultProps

```js
$COMPONENT$.defaultProps = {
  $PROP$: $VALUE$,
  $END$,
};
```

---

### > `spt`

> static PropTypes

```js
static propTypes = {
  $PROP$: PropTypes.$TYPE$$ISREQUIRED$,
  $END$
};
```

---

### > `sdf`

> static defaultProps

```js
static defaultProps = {
  $PROP$: $VALUE$,
  $END$
};
```

---

### > `props`

```js
this.props;
```

---

### > `cprops`

> Props [destructuring](https://developer.mozilla.org/en/docs/Web/JavaScript/Reference/Operators/Destructuring_assignment)

```js
const { $PROPS$ } = this.props;
```

---

### > `cst`

> Component Constructor

```js
constructor(props) {
  super(props);
  $END$
}
```

---

### > `ren`

> render

```js
render() {
  return (
    <div>$END$</div>
  );
}
```

---

### > `ss`

> setState

```js
this.setState({
  $KEY$: $VALUE$,
});
```

---

### > `ssp`

> setState with prevState

```js
this.setState(prevState$PROPS$ => ({
  $KEY$: $VALUE$,
}));
```

### > `ssr`

> setState with return

```js
this.setState(prevState$PROPS$ => {
  $END$;
  return {};
});
```

| name    | expression | default     |
| ------- | ---------- | ----------- |
| `PROPS` |            | `", props"` |

---

### > `cs`

> [classnames](https://github.com/JedWatson/classnames) import

```js
import classNames from 'classnames';
```

---

### > `wr`

> Surround with [react-router](https://github.com/ReactTraining/react-router) withRouter function

```js
withRouter($SELECTION$);
```

---

### redux methods

### > `mstp`

> mapStateToProps function

```js
const mapStateToProps = state => ({
  $PROP$: $END$,
});
```

---

### > `mstop`

> mapStateToProps function with ownProps

```js
const mapStateToProps = (state, { $PROPS$ }) => {
  return {
    $PROP$: $END$,
  };
};
```

---

### > `mdtp`

> mapDispatchToProps object

```js
const mapDispatchToProps = {
  $PROP$: $END$,
};
```

---

### > `mdtpf`

> mapDispatchToProps function

```js
const mapDispatchToProps = (dispatch, { $PROPS$ }) => ({
  $PROP$: $END$,
});
```

---

### > `con`

> Surround with [react-redux connect](https://github.com/reactjs/react-redux/blob/master/docs/api.md#connectmapstatetoprops-mapdispatchtoprops-mergeprops-options)

```js
connect(
  mapStateToProps,
  mapDispatchToProps
)($SELECTION$);
```

### lifecycle hooks

### > `cdm`

```js
componentDidMount() {
  $END$
}
```

---

### > `cwr`

```js
componentWillReceiveProps(nextProps) {
  $END$
}
```

---

### > `cdu`

>

```js
componentDidUpdate(prevProps$PARAMS$) {
  $END$
}
```

### > `scu`

>

```js
shouldComponentUpdate(prevProps$PARAMS$) {
  $END$
}
```

| name     | expression | default         |
| -------- | ---------- | --------------- |
| `PARAMS` |            | `", nextState"` |

---

### events callbacks

| shortcut | template                |
| -------- | ----------------------- |
| `onbl`   | `onBlur={$END$}`        |
| `onch`   | `onChange={$END$}`      |
| `onc`    | `onClick={$END$}`       |
| `ondc`   | `onDoubleClick={$END$}` |
| `oner`   | `onError={$END$}`       |
| `onf`    | `onFocus={$END$}`       |
| `onin`   | `onInput={$END$}`       |
| `onkd`   | `onKeyDown={$END$}`     |
| `onkp`   | `onKeyPress={$END$}`    |
| `onku`   | `onKeyUp={$END$}`       |
| `onmd`   | `onMouseDown={$END$}`   |
| `onme`   | `onMouseEnter={$END$}`  |
| `onml`   | `onMouseLeave={$END$}`  |
| `onmm`   | `onMouseMove={$END$}`   |
| `onmot`  | `onMouseOut={$END$}`    |
| `onmov`  | `onMouseOver={$END$}`   |
| `onmu`   | `onMouseUp={$END$}`     |
| `onsc`   | `onScroll={$END$}`      |
| `onsl`   | `onSelect={$END$}`      |

## [Other](https://github.com/Drapegnik/env/blob/master/jetbrains/templates/User.xml)

### > `td`

> TODO

```js
// TODO(@$WHO$): $TEXT$
$END$;
```

| name  | expression             | default |
| ----- | ---------------------- | ------- |
| `WHO` | `decapitalize(user())` |

---

### > `fx`

> FIXME

```js
// FIXME(@$WHO$): $TEXT$
$END$;
```
