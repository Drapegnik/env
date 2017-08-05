# live templates

## [JavaScript](https://github.com/Drapegnik/env/blob/master/jetbrains/templates/JavaScript.xml)

### > `im`
> ES6 Import - default
```js
import $CLASS$ from '$MODULE$';
$END$
```

### > `imp`
> ES6 Import
```js
import { $FUNC$ } from '$MODULE$';
$END$
```

### > `log`
> console.log
```js
console.log('$MESSAGE$: ', $PARAM$);
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

### > `red`
> ES6 reduce function
```js
$ARRAY$.reduce(($ACC$, $CUR$) => $END$);
```

### > `=>`
> ES6 arrow function
```js
const $NAME$ = ($PARAMS$) => { 
  return $END$;
};
```

### > `for`
> Iterate elements of array
```js
for (let $INDEX$ = 0; $INDEX$ < $ARRAY$.length; $INDEX$++) {
  let $VAR$ = $ARRAY$[$INDEX$];
  $END$
}
```

name | expression | default
--- | --- | --
`INDEX` | `jsSuggestIndexName()` | "i"
`ARRAY` | `jsArrayVariable()` | 
`VAR` | `jsSuggestVariableName()` |

### > `forin`
> Iterate (for..in)
```js
for (let $VAR$ in $ARRAY$) {
  $END$
}
```

### > `forof`
> Iterate (for..of) - ES6
```js
for (let $VAR$ of $ARRAY$) {
  $END$
}
```

### > `if`
> If condition
```js
if ($COND$) {
  $END$
}
```

### > `ifel`
> If, else construction
```js
if ($COND$) {
  $END$
} else {

}
```

### > `ter`
> Ternary operator
```js
$COND$ ? $EXPR$ : $END$;
```

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

### > `fi`
> FIXME
```js
    // FIXME(@$WHO$): $TEXT$
$END$
```



