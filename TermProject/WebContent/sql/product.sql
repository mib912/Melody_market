create table if not exists product(
	p_id VARCHAR(10) NOT NULL,
	p_name VARCHAR(50),
	p_unitPrice INTEGER,
	p_description TEXT,
	p_category VARCHAR(30),
	p_artist VARCHAR(30),
	p_part VARCHAR(30),
	p_key VARCHAR(20),
	p_fileName VARCHAR(20),
	PRIMARY KEY (p_id)
)default CHARSET=utf8;

desc product;

drop table product;


