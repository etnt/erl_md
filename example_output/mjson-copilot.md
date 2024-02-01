
## Type: val()
```erlang
-type val() :: obj() | array() | num() | str() | literal().
% Represents a JSON value for encoding. Just like a `val()`, but also
% accepts atoms as strings, and iodata as object member names.
```

## Type: enc_val()
```erlang
-type enc_val() :: val() | enc_obj() | enc_str().
% Represents a JSON object.
```

## Type: obj()
```erlang
-type obj()     :: #{str() => val()}.
% Represents a JSON array.
```

## Type: array()
```erlang
-type array()   :: [val()].
% Represents a JSON string.
```

## Type: str()
```erlang
-type str()     :: binary().
% Represents a JSON number.
```

## Type: num()
```erlang
-type num()     :: number().
% Represents a JSON literal.
```

## Type: literal()
```erlang
-type literal() :: true | false | null.
% When encoding, object member names can be atoms and iodata.
```

## Type: enc_obj()
```erlang
-type enc_obj() :: #{enc_str() | iodata() => enc_val()}.
% When encoding, atoms and binaries will be encoded as JSON strings.
```

## Type: enc_str()
```erlang
-type enc_str() :: binary() | atom().
% Options for `encode/2`.
```

## Type: encode_opts()
```erlang
-type encode_opts() ::
```

## Function: encode(enc_val())
```erlang
-spec encode(enc_val()) -> iodata().
```

## Function: encode(enc_val(),
```erlang
-spec encode(enc_val(), encode_opts()) -> iodata().
```

## Function: decode(binary())
```erlang
-spec decode(binary()) -> {ok, val()}.
% If `Bin` does not contain valid JSON, `decode/1` crashes.
```
