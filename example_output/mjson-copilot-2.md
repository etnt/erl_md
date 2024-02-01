
## Type: val()
<pre><code>
-type val() :: obj() | array() | num() | str() | literal().
</code></pre>

<p>
 Represents a JSON value for encoding. Just like a `val()`, but also
 accepts atoms as strings, and iodata as object member names.</p>

## Type: enc_val()
<pre><code>
-type enc_val() :: val() | enc_obj() | enc_str().
</code></pre>

<p>
 Represents a JSON object.</p>

## Type: obj()
<pre><code>
-type obj()     :: #{str() => val()}.
</code></pre>

<p>
 Represents a JSON array.</p>

## Type: array()
<pre><code>
-type array()   :: [val()].
</code></pre>

<p>
 Represents a JSON string.</p>

## Type: str()
<pre><code>
-type str()     :: binary().
</code></pre>

<p>
 Represents a JSON number.</p>

## Type: num()
<pre><code>
-type num()     :: number().
</code></pre>

<p>
 Represents a JSON literal.</p>

## Type: literal()
<pre><code>
-type literal() :: true | false | null.
</code></pre>

<p>
 When encoding, object member names can be atoms and iodata.</p>

## Type: enc_obj()
<pre><code>
-type enc_obj() :: #{enc_str() | iodata() => enc_val()}.
</code></pre>

<p>
 When encoding, atoms and binaries will be encoded as JSON strings.</p>

## Type: enc_str()
<pre><code>
-type enc_str() :: binary() | atom().
</code></pre>

<p>
 Options for `encode/2`.</p>

## Type: encode_opts()
<pre><code>
-type encode_opts() ::
</code></pre>

## Function: encode(enc_val())
<pre><code>
-spec encode(enc_val()) -> iodata().
</code></pre>

## Function: encode(enc_val(),
<pre><code>
-spec encode(enc_val(), encode_opts()) -> iodata().
</code></pre>

## Function: decode(binary())
<pre><code>
-spec decode(binary()) -> {ok, val()}.
</code></pre>
</code></pre>
