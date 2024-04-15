CREATE USER 'gitpod'@'localhost' IDENTIFIED BY 'gitpod';
GRANT ALL PRIVILEGES ON *.* TO 'gitpod'@'localhost';


CREATE SCHEMA IF NOT EXISTS batching;

CREATE TABLE batching.payments  (
id VARCHAR(20) NOT NULL PRIMARY KEY,
details VARCHAR(20) NULL,
contact VARCHAR(20) NULL,
location VARCHAR(20) NULL,
amount NUMERIC(20,3) NOT NULL,
timestamp timestamp
);

use batching;

source /workspace/building-high-throughput-data-microservices/deployments/database/spring-batch-mysql.sql;