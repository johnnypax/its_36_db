CREATE DATABASE lez07_cysec;
USE lez07_cysec;

CREATE TABLE Cves(
	cveID INTEGER PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    severity FLOAT
);

INSERT INTO Cves (name, description, severity)
VALUES 
('CVE-2023-1234', 'Buffer Overflow Vulnerability in Apache HTTP Server', 9.0),
('CVE-2022-4456', 'Authentication Bypass Vulnerability in WordPress Plugin', 7.5),
('CVE-2021-44228', 'Remote Code Execution Vulnerability in Log4j Java Library', 10.0),
('CVE-2019-16759', 'Cross-Site Scripting (XSS) Vulnerability in jQuery UI Widget', 6.1),
('CVE-2023-26546', 'Denial of Service (DoS) Vulnerability in Nginx Web Server', 8.5),
('CVE-2022-47939', 'Sensitive Data Exposure Vulnerability in PHPMyAdmin', 8.0),
('CVE-2019-16094', 'Path Traversal Vulnerability in Tomcat Servlet Container', 7.3),
('CVE-2021-41970', 'Authorization Bypass Vulnerability in Spring Framework', 9.5),
('CVE-2022-29701', 'Security Feature Bypass Vulnerability in Mozilla Firefox', 8.8),
('CVE-2018-19296', 'Cross-Site Request Forgery (CSRF) Vulnerability in Adobe Acrobat', 6.5);

SELECT * FROM Cves;