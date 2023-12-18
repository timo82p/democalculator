CREATE TABLE tx_calculator_domain_model_contributions (
	fullname varchar(255) NOT NULL DEFAULT '',
	apiroute varchar(255) NOT NULL DEFAULT '',
	collection int(11) unsigned NOT NULL DEFAULT '0'
);

CREATE TABLE tx_calculator_domain_model_contribution (
	contributions int(11) unsigned DEFAULT '0' NOT NULL,
	name varchar(255) NOT NULL DEFAULT '',
	monity int(11) NOT NULL DEFAULT '0',
	age int(11) NOT NULL DEFAULT '0'
);
