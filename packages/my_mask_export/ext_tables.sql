CREATE TABLE tt_content (
    tx_mymaskexport_elementcontent_parent int(11) unsigned DEFAULT '0' NOT NULL,
    KEY tx_mymaskexport_elementcontent_parent (tx_mymaskexport_elementcontent_parent,pid,deleted),
    tx_mymaskexport_accordionelement int(11) unsigned DEFAULT '0' NOT NULL
);
CREATE TABLE tx_mymaskexport_accordionelement (
    parentid int(11) DEFAULT '0' NOT NULL,
    parenttable varchar(255) DEFAULT '' NOT NULL,
    sorting int(11) unsigned DEFAULT '0' NOT NULL,
    t3ver_id int(11) DEFAULT '0' NOT NULL,
    t3ver_label varchar(255) DEFAULT '' NOT NULL,
    tx_mymaskexport_elementcontent int(11) unsigned DEFAULT '0' NOT NULL,
    tx_mymaskexport_elementtitle tinytext,
    KEY language (l10n_parent,sys_language_uid)
);
