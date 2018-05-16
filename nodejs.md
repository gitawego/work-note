## avoid zombie connections stuck in FIN_WAIT2 or ESTABLISHED

```js
(function () {
  var TCP = process.binding('tcp_wrap').TCP
    , _writeBuffer = TCP.prototype.writeBuffer
    , _setKeepAlive = TCP.prototype.setKeepAlive
    , _shutdown = TCP.prototype.shutdown;

   TCP.prototype.writeBuffer = function () {
    var r = _writeBuffer.apply(this, arguments);
    _setKeepAlive.call(this, true, 30 ); // 30 sec
   return r;
  };
  TCP.prototype.setKeepAlive = function (enable) {
    var r = _setKeepAlive.apply(this, arguments);
    this._ka = enable;
    return r;
  };

  TCP.prototype.shutdown = function () {
    var r = _shutdown.apply(this, arguments);
    if (r && !this._ka)
      _setKeepAlive.call(this, true, 150); // 150 sec
    return r;
  };
})();
```
