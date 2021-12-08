-- -----------------------------------------------------------------------------------------------------
-- add regions
-- adapted from https://github.com/jpwhite3/northwind-SQLite3/blob/master/Northwind.Sqlite3.update.sql
-- -----------------------------------------------------------------------------------------------------
use nw;

update Customer set Region='British Isles' where Country='UK';
update Customer set Region='British Isles' where Country='Ireland';
update Customer set Region='North America' where Country='USA';
update Customer set Region='North America' where Country='Canada';
update Customer set Region='Central America' where Country='Mexico';
update Customer set Region='South America' where Country='Argentina';
update Customer set Region='South America' where Country='Brazil';
update Customer set Region='South America' where Country='Venezuela';
update Customer set Region='Eastern Europe' where Country='Poland';
update Customer set Region='Northern Europe' where Country='Sweden';
update Customer set Region='Northern Europe' where Country='Denmark';
update Customer set Region='Southern Europe' where Country='Spain';
update Customer set Region='Southern Europe' where Country='Italy';
update Customer set Region='Southern Europe' where Country='Portugal';
update Customer set Region='Western Europe' where Country='Germany';
update Customer set Region='Western Europe' where Country='France';
update Customer set Region='Western Europe' where Country='Belgium';
update Customer set Region='Western Europe' where Country='Switzerland';
update Customer set Region='Western Europe' where Country='Austria';
update Customer set Region='Scandinavia' where Country='Norway';
update Customer set Region='Scandinavia' where Country='Finland';


update SalesOrder set ShipRegion='British Isles' where ShipCountry='UK';
update SalesOrder set ShipRegion='British Isles' where ShipCountry='Ireland';
update SalesOrder set ShipRegion='North America' where ShipCountry='USA';
update SalesOrder set ShipRegion='North America' where ShipCountry='Canada';
update SalesOrder set ShipRegion='Central America' where ShipCountry='Mexico';
update SalesOrder set ShipRegion='South America' where ShipCountry='Argentina';
update SalesOrder set ShipRegion='South America' where ShipCountry='Brazil';
update SalesOrder set ShipRegion='South America' where ShipCountry='Venezuela';
update SalesOrder set ShipRegion='Eastern Europe' where ShipCountry='Poland';
update SalesOrder set ShipRegion='Northern Europe' where ShipCountry='Sweden';
update SalesOrder set ShipRegion='Northern Europe' where ShipCountry='Denmark';
update SalesOrder set ShipRegion='Southern Europe' where ShipCountry='Spain';
update SalesOrder set ShipRegion='Southern Europe' where ShipCountry='Italy';
update SalesOrder set ShipRegion='Southern Europe' where ShipCountry='Portugal';
update SalesOrder set ShipRegion='Western Europe' where ShipCountry='Germany';
update SalesOrder set ShipRegion='Western Europe' where ShipCountry='France';
update SalesOrder set ShipRegion='Western Europe' where ShipCountry='Belgium';
update SalesOrder set ShipRegion='Western Europe' where ShipCountry='Switzerland';
update SalesOrder set ShipRegion='Western Europe' where ShipCountry='Austria';
update SalesOrder set ShipRegion='Scandinavia' where ShipCountry='Norway';
update SalesOrder set ShipRegion='Scandinavia' where ShipCountry='Finland';

update Supplier set Region='British Isles' where Country='UK';
update Supplier set Region='British Isles' where Country='Ireland';
update Supplier set Region='North America' where Country='USA';
update Supplier set Region='North America' where Country='Canada';
update Supplier set Region='Central America' where Country='Mexico';
update Supplier set Region='South America' where Country='Argentina';
update Supplier set Region='South America' where Country='Brazil';
update Supplier set Region='South America' where Country='Venezuela';
update Supplier set Region='Eastern Europe' where Country='Poland';
update Supplier set Region='Northern Europe' where Country='Sweden';
update Supplier set Region='Northern Europe' where Country='Denmark';
update Supplier set Region='Southern Europe' where Country='Spain';
update Supplier set Region='Southern Europe' where Country='Italy';
update Supplier set Region='Southern Europe' where Country='Portugal';
update Supplier set Region='Western Europe' where Country='Germany';
update Supplier set Region='Western Europe' where Country='France';
update Supplier set Region='Western Europe' where Country='Belgium';
update Supplier set Region='Western Europe' where Country='Switzerland';
update Supplier set Region='Western Europe' where Country='Austria';
update Supplier set Region='Scandinavia' where Country='Norway';
update Supplier set Region='Scandinavia' where Country='Finland';
update Supplier set Region='Eastern Asia' where Country='Japan';
update Supplier set Region='South-East Asia' where Country='Singapore';
update Supplier set Region='Northern Europe' where Country='Netherlands';