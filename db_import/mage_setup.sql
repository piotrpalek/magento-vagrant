UPDATE core_config_data SET value = "http://magento.local/" WHERE path = "web/unsecure/base_url" OR path = "web/secure/base_url";
UPDATE core_config_data SET value = "https://magento.local/" WHERE path = "web/secure/base_url" OR path = "web/secure/base_url";
UPDATE core_config_data SET value = ".magento.local" WHERE path = "web/cookie/cookie_domain";

INSERT INTO admin_user
(`user_id`, `firstname`, `lastname`, `email`, `username`, `password`, `created`, `modified`, `logdate`, `lognum`, `reload_acl_flag`, `is_active`, `extra`)
(SELECT
NULL user_id,
"dev_admin",
"dev_admin",
"admin@kaminrun.de",
"dev_admin",
CONCAT(MD5('krpassword1'), ':kr'),
NOW(),
NULL,
NULL,
0,
0,
1,
(SELECT MAX(extra) FROM admin_user WHERE extra IS NOT NULL) );

INSERT into admin_role
SELECT
NULL role_id,
(SELECT role_id FROM admin_role WHERE role_name = 'Administrators') parent_id,
2 tree_level,
0 sort_order,
'U' role_type,
(SELECT user_id FROM admin_user WHERE username = 'dev_admin') user_id,
'dev_admin' role_name;