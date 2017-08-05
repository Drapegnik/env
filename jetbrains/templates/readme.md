# live templates
useful shortcuts for WebStorm

## table of contents
* [JavaScript](#JavaScript)
* [Other](#Other)

## how to import
> just put `.xml` file into your WebStorm live templates folder
* **macOS**: `~/Library/Preferences/WebStorm<version number>/templates`
* **Linux**: `~\.WebStorm<version number>\config\templates`
* **Windows**: `<HOME>\.WebStorm<version number>\config\templates`

## [JavaScript](https://github.com/Drapegnik/env/blob/master/jetbrains/templates/JavaScript.xml)

### > `im`
> ES6 Import - default
```js
import $CLASS$ from '$MODULE$';
$END$
```
***

### > `imp`
> ES6 Import
```js
import { $FUNC$ } from '$MODULE$';
$END$
```
***

### > `log`
> console.log
```js
console.log('$MESSAGE$: ', $PARAM$);
```
***

### > `fe`
> ES6 forEach function
```js
$ARRAY$.forEach($VAR$ => $END$)
```

### > `map`
> ES6 map function
```js
$ARRAY$.map($VAR$ => $END$)
```

### > `fil`
> ES6 filter function
```js
$ARRAY$.filter($VAR$ => $END$)
```

name | expression | default
--- | --- | --
`ARRAY` | `jsArrayVariable()` | 
`VAR` |  | `"item"`
***

### > `red`
> ES6 reduce function
```js
$ARRAY$.reduce(($ACC$, $CUR$) => $END$);
```
***

### > `=>`
> ES6 arrow function
```js
const $NAME$ = ($PARAMS$) => { 
  return $END$;
};
```
***

### > `for`
> Iterate elements of array
```js
for (let $INDEX$ = 0; $INDEX$ < $ARRAY$.length; $INDEX$++) {
  let $VAR$ = $ARRAY$[$INDEX$];
  $END$
}
```

### > `rfor`
> Iterate elements of array in reverse order
```js
for (let $INDEX$ = $ARRAY$.length - 1; $INDEX$ >= 0; $INDEX$--) {
  let $VAR$ = $ARRAY$[$INDEX$];
  $END$
}
```
name | expression | default
--- | --- | --
`INDEX` | `jsSuggestIndexName()` | "i"
`ARRAY` | `jsArrayVariable()` | 
`VAR` | `jsSuggestVariableName()` |
***

### > `forof`
> Iterate (for..of) - ES6
```js
for (let $VAR$ of $ARRAY$) {
  $END$
}
```
***

### > `if`
> If condition
```js
if ($COND$) {
  $END$
}
```
***

### > `ifel`
> If, else construction
```js
if ($COND$) {
  $END$
} else {

}
```
***

### > `ter`
> Ternary operator
```js
$COND$ ? $EXPR$ : $END$;
```
***

## [React](https://github.com/Drapegnik/env/blob/master/jetbrains/templates/React.xml)

## [Other](https://github.com/Drapegnik/env/blob/master/jetbrains/templates/User.xml)

### > `td`
> TODO
```js
    // TODO(@$WHO$): $TEXT$
$END$
```

name | expression | default
--- | --- | --
`WHO` | `lowercaseAndDash(user())` |
***

### > `fx`
> FIXME
```js
    // FIXME(@$WHO$): $TEXT$
$END$
```