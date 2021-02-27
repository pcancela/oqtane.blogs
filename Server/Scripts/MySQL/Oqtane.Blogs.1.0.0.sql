/*  
Create Blog table
*/

CREATE TABLE `Blog`(
	`BlogId` INT AUTO_INCREMENT NOT NULL,
	`ModuleId` INT NOT NULL,
	`Title` VARCHAR(256) NOT NULL,
	`Content` TEXT NOT NULL,
	`CreatedBy` VARCHAR(256) NOT NULL,
	`CreatedOn` DATETIME NOT NULL,
	`ModifiedBy` VARCHAR(256) NOT NULL,
	`ModifiedOn` DATETIME NOT NULL,
  CONSTRAINT `PK_Blog` PRIMARY KEY 
  (
	`BlogId` ASC
  )
)
;

/*  

Create foreign key relationships

*/
ALTER TABLE `Blog`  ADD CONSTRAINT FOREIGN KEY (`ModuleId`)
REFERENCES `Module` (`ModuleId`)
ON DELETE CASCADE
;