DROP TABLE IF EXISTS `Maps`;
CREATE TABLE `Maps`(
    `mapID` int(11) NOT NULL AUTO_INCREMENT,
    `name` varchar(255) NOT NULL,
    `city` varchar(255) NOT NULL,
    `state` varchar(255) NOT NULL,
    `src` varchar(255) NOT NULL,
    `href` varchar(255) NOT NULL,
    PRIMARY KEY (`mapID`)
)ENGINE=InnoDB;

INSERT INTO `Maps` VALUES
    (1, "Cannon Beach", "Cannon Beach", "Oregon", "https://www.openstreetmap.org/export/embed.html?bbox=-124.03255462646486%2C45.86060760151193%2C-123.889217376709%2C45.91330242670522&amp;layer=mapnik", "https://www.openstreetmap.org/#map=14/45.8870/-123.9609"),
    (2, "Indian Beach", "Seaside", "Oregon", "https://www.openstreetmap.org/export/embed.html?bbox=-123.98588418960573%2C45.92498321060814%2C-123.9717221260071%2C45.93156516322123&amp;layer=mapnik", "https://www.openstreetmap.org/#map=17/45.92828/-123.97880"),
    (3, "Seaside Beach", "Seaside", "Oregon", "https://www.openstreetmap.org/export/embed.html?bbox=-123.99702072143556%2C45.95753461077106%2C-123.8837242126465%2C46.01013745714165&amp;layer=mapnik", "https://www.openstreetmap.org/#map=14/45.9838/-123.9404"),
    (4, "Short Sands Beach", "Arch Cape", "Oregon", "https://www.openstreetmap.org/export/embed.html?bbox=-123.9826011657715%2C45.75424453769449%2C-123.95427703857423%2C45.76744812081226&amp;layer=mapnik", "https://www.openstreetmap.org/#map=16/45.7609/-123.9684"),
    (5, "Pacific City Beach", "Pacific City", "Oregon", "https://www.openstreetmap.org/export/embed.html?bbox=-123.98455381393434%2C45.208014940432484%2C-123.95622968673707%2C45.221347171208436&amp;layer=mapnik", "https://www.openstreetmap.org/#map=16/45.2147/-123.9704"),
    (6, "Rockaway Beach", "Rockaway Beach", "Oregon", "https://www.openstreetmap.org/export/embed.html?bbox=-124.05418395996095%2C45.572836521464495%2C-123.82759094238283%2C45.67872055615951&amp;layer=mapnik", "https://www.openstreetmap.org/#map=13/45.6257/-123.9409"),
    (7, "Gearhart Beach", "Gearhart", "Oregon", "https://www.openstreetmap.org/export/embed.html?bbox=-123.97084236145021%2C46.00465287376907%2C-123.85754585266115%2C46.05721095297774&amp;layer=mapnik", "https://www.openstreetmap.org/#map=14/46.0310/-123.9142"),
    (8, "Manzanita Beach", "Manzanita", "Oregon", "https://www.openstreetmap.org/export/embed.html?bbox=-123.96294593811037%2C45.70147388841269%2C-123.90629768371583%2C45.72790289199613&amp;layer=mapnik", "https://www.openstreetmap.org/#map=15/45.7147/-123.9346"),
    (9, "Oregon State University", "Corvallis", "Oregon", "https://www.openstreetmap.org/export/embed.html?bbox=-123.2996%2C44.5444%2C-123.2646%2C44.5822&amp;layer=mapnik", "https://www.openstreetmap.org/#map=15/44.5633/-123.2821");

-- Query to get attributes from Maps table using mapID 
SELECT name, city, state, src, href FROM Maps WHERE mapID = ?;
