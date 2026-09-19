CREATE DATABASE IF NOT EXISTS pawcareclinic;

ALTER DATABASE pawcareclinic
  DEFAULT CHARACTER SET utf8
  DEFAULT COLLATE utf8_general_ci;

CREATE USER IF NOT EXISTS 'pawcareclinic'@'%' IDENTIFIED BY 'pawcareclinic';

GRANT ALL PRIVILEGES ON pawcareclinic.* TO 'pawcareclinic'@'%';

FLUSH PRIVILEGES;
