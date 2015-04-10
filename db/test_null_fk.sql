create table info_cfdi (
  id INT IDENTITY PRIMARY KEY,
  serie VARCHAR(10)
);

create table info_psrdd (
  id INT IDENTITY PRIMARY KEY,
  ejercicio int
);

create table info_accounting (
  id INT IDENTITY PRIMARY KEY,
  anio int
);

CREATE TABLE document_information (
  id INT IDENTITY PRIMARY KEY,
  fuente VARCHAR(10),
  fk_info_cfdi INT NULL FOREIGN KEY REFERENCES info_cfdi (id),
  fk_info_psrdd INT NULL FOREIGN KEY REFERENCES info_psrdd (id),
  fk_info_accounting INT NULL FOREIGN KEY REFERENCES info_accounting (id)
);



insert into info_cfdi values ('AAA');
insert into info_cfdi values ('BBB');
insert into info_cfdi values ('CCC');

insert into info_psrdd values (2001);
insert into info_psrdd values (2002);
insert into info_psrdd values (2003);

insert into info_accounting values (2001);
insert into info_accounting values (2002);
insert into info_accounting values (2003);

insert into document_information values ('conector', 1, null, null);
insert into document_information values ('conector', 2, null, null);
insert into document_information values ('conector', 3, null, null);

insert into document_information values ('ws', null, 1, null);
insert into document_information values ('ws', null, 2, null);
insert into document_information values ('ws', null, 3, null);

insert into document_information values ('web', null, null, 1);
insert into document_information values ('web', null, null, 2);
insert into document_information values ('web', null, null, 3);

select * from document_information;

rollback;