SET CLIENT_ENCODING TO UTF8;
SET STANDARD_CONFORMING_STRINGS TO ON;
BEGIN;
CREATE TABLE "nyccrash" (gid serial PRIMARY KEY,
"crash_year" int4,
"accident_type" int4,
"collision_type" int2,
"weather_condition" int2,
"light_condition" int2,
"x_coordinate" int4,
"y_coordinate" int4);
SELECT AddGeometryColumn('','nyccrash','the_geom','2263','POINT',2);
INSERT INTO "nyccrash" ("crash_year","accident_type","collision_type","weather_condition","light_condition","x_coordinate","y_coordinate",the_geom)  VALUES ('1989','1','9','1','1','1021044','243582',Point(1021044,243582));
