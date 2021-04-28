## 区分python2, python3 的 str, unicode, bytes
- 对于Python2来说，str=bytes, 即 str 可以 decode， 变成 unicode。
- 对于Python3来说，str=unicode，即 str 可以 encode，变成 bytes。

```python
# PY2
>>> a = "asdf"
>>> type(a)
<type 'str'>
>>> ad = a.decode("utf-8")
>>> ad
u'asdf'
>>> ade = ad.encode("utf-8")
>>> ade
'asdf'
>>> type(ade)
<type 'str'>
>>> type(ad)
<type 'unicode'>
>>> bytes("dsfdf")
'dsfdf'
>>> x = bytes("dfsfa")
>>> x
'dfsfa'
>>> type(x)
<type 'str'>
```

```python
#PY3
Python 3.8.2 (default, Aug 25 2020, 09:23:57)
[Clang 12.0.0 (clang-1200.0.32.2)] on darwin
Type "help", "copyright", "credits" or "license" for more information.
>>> a = "sdfsa"
>>> a
'sdfsa'
>>> type(a)
<class 'str'>
>>> ae = a.encode("utf-8")
>>> ae
b'sdfsa'
>>> aed = ae.decode("utf-8")
>>> aed
'sdfsa'
>>> type(ae)
<class 'bytes'>
>>> b = bytes(b"tttdfdf")
>>> b
b'tttdfdf'
>>> b.decode("utf-8")
'tttdfdf'
>>> ux = u"dfdsfa"
>>> ux
'dfdsfa'
>>> type(ux)
<class 'str'>

```