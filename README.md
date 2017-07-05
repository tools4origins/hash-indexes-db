## Hash Indexes DB

A small database with in-memory indexes based on [Designing Data-Intensive Application](http://shop.oreilly.com/product/0636920032175.do).

The only two available operations are `get` and `put`. 

### Usage

	$ source hash-indexes.sh
	$ put key value
	$ get key # returns value

It uses bash associative arrays to keep an index of the database and should be
faster in read than [a simple database](https://github.com/tools4origins/mini-db). Since indexes are not persisted the database is clean each time it is launched.

This readme file is 193% bigger than the database source code :).
