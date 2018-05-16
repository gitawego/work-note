## avoid zombie connections stuck in FIN_WAIT2 or ESTABLISHED

```js
(function () {
  var TCP = process.binding('tcp_wrap').TCP
    , _writeBuffer = TCP.prototype.writeBuffer;

   TCP.prototype.writeBuffer = function () {
    var r = _writeBuffer.apply(this, arguments);
    this.setKeepAlive(true, 30 );
   return r;
  };
})();
```
