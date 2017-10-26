use valmano;

UPDATE core_config_data SET value = 'http://valmano.dev/' WHERE value = 'http://www.valmano.de/';
UPDATE core_config_data SET value = 'https://valmano.dev/' WHERE value = 'https://www.valmano.de/';
UPDATE core_config_data SET value = 'http://valmano.dev.at/' WHERE value = 'http://www.valmano.at/';
UPDATE core_config_data SET value = 'https://valmano.dev.at/' WHERE value = 'https://www.valmano.at/';
UPDATE core_config_data SET value = 'http://valmano.dev/' WHERE value = 'http://backoffice.valmano.de/';
UPDATE core_config_data SET value = 'https://valmano.dev/' WHERE value = 'https://backoffice.valmano.de/';

UPDATE core_config_data SET value='0' WHERE path='dev/css/merge_css_files' OR path='dev/js/merge_files';
UPDATE core_config_data SET value='0' WHERE path='google/analytics/active';
UPDATE core_config_data SET value='NOINDEX,NOFOLLOW' WHERE path='design/head/default_robots';
UPDATE core_config_data SET value='contact-magento-dev@trash-mail.com' WHERE path='trans_email/ident_general/email';
UPDATE core_config_data SET value='contact-magento-dev@trash-mail.com' WHERE path='trans_email/ident_sales/email';
UPDATE core_config_data SET value='contact-magento-dev@trash-mail.com' WHERE path='trans_email/ident_support/email';
UPDATE core_config_data SET value='contact-magento-dev@trash-mail.com' WHERE path='trans_email/ident_custom1/email';
UPDATE core_config_data SET value='contact-magento-dev@trash-mail.com' WHERE path='trans_email/ident_custom2/email';
UPDATE eav_entity_store SET increment_last_id=3*increment_last_id;
UPDATE core_config_data SET value='test' WHERE value LIKE 'live';
UPDATE core_config_data SET value='test' WHERE value LIKE 'prod';
UPDATE core_config_data SET value=1 WHERE path LIKE '%/testmode';
UPDATE core_config_data SET value = 'HKeb5SJMI8TQyaNc' WHERE path = 'payone_general/global/key';
UPDATE core_config_data SET value = '2017888' WHERE path = 'payone_general/global/portalid';

# Disable tracking order import e-mails
update core_config_data set value = 0 where path = 'orderstatusimport/general/enabled';
update core_config_data set value = 0 where path = 'stockimport/general/enabled';

# Disable Navision
UPDATE core_config_data SET value= '0' where path = 'navconnect/server/enabled';

# Disable Varnish Module
#UPDATE core_config_data SET value= '0' where path = 'varnishcache/settings/enabled';

# paypal anonymization
UPDATE core_config_data SET value = '1' WHERE path = 'paypal/wpp/sandbox_flag';
UPDATE core_config_data SET value = '1' WHERE path = 'payment/paypal_standard/sandbox_flag';

# ratepay anonymization
UPDATE core_config_data SET value = '1' WHERE path = 'payment/ratepay_directdebit/sandbox';
UPDATE core_config_data SET value = '1' WHERE path = 'payment/ratepay_rate/sandbox';
UPDATE core_config_data SET value = '1' WHERE path = 'payment/ratepay_rechnung/sandbox';

#amazon payments
UPDATE core_config_data SET value = '1' WHERE path = 'amazonpayments/general/sandbox';
UPDATE core_config_data SET value = 'amzn1.application-oa2-client.ddb6fec95f2c415b8fb0f38ad260778f' WHERE path = 'amazonpayments/login/client_id';

# ga / gtm anonymization
UPDATE core_config_data SET value = '0' WHERE path = 'google/analytics/active';
UPDATE core_config_data SET value = 'UA-40366472-3' WHERE path = 'google/analytics/account';
UPDATE core_config_data SET value = 'GTM-MNXR58' WHERE path = 'google/googletagmanager/containerid';
UPDATE core_config_data SET value = 'UA-40366472-3' WHERE path = 'google/analytics/account' and scope='websites';
UPDATE core_config_data SET value = 'GTM-MNXR58' WHERE path = 'google/googletagmanager/containerid' and scope='websites';

UPDATE payone_config_payment_method SET mode='test' WHERE mode='live';

# wordpress database connection
UPDATE core_config_data SET value = 'mysql' WHERE path = 'wordpress/database/host';
UPDATE core_config_data SET value = 'RTuNjaA0v9k=' WHERE path = 'wordpress/database/username';
UPDATE core_config_data SET value = 'diTriN1ZvXM=' WHERE path = 'wordpress/database/password';
UPDATE core_config_data SET value = 'g8T3HzntGiTvrp33yY5CXw==' WHERE path = 'wordpress/database/dbname';

UPDATE sales_flat_creditmemo_grid SET billing_name='Demo User';
UPDATE sales_flat_invoice_grid SET billing_name='Demo User';
UPDATE sales_flat_shipment_grid SET shipping_name='Demo User';

UPDATE sales_flat_quote SET customer_email=CONCAT('dev_',entity_id,'@trash-mail.com'),
customer_firstname='Demo', customer_lastname='User', customer_middlename='Dev', remote_ip='192.168.1.1', password_hash=NULL;

UPDATE sales_flat_quote_address SET firstname='Demo', lastname='User',
company=NULL, telephone=CONCAT('0123-4567', address_id), street=CONCAT('Devstreet ',address_id);

UPDATE sales_flat_order SET customer_email=CONCAT('dev_',entity_id,'@trash-mail.com'),
customer_firstname='Demo', customer_lastname='User', customer_middlename='Dev';

UPDATE sales_flat_order_address SET firstname='Demo', lastname='User', company=NULL,
telephone=CONCAT('0123-4567', entity_id), street=CONCAT('Devstreet ',entity_id);

UPDATE sales_flat_order_grid SET shipping_name='Demo D. User', billing_name='Demo D. User';

UPDATE sales_flat_order_payment SET additional_data=NULL, additional_information=NULL;

UPDATE newsletter_subscriber SET subscriber_email=CONCAT('dev_newsletter_',subscriber_id,'@trash-mail.com');

UPDATE customer_entity
SET
    email = CONCAT(CAST(entity_id AS CHAR), '@', 'valmano.de')
WHERE
    email NOT LIKE '%valmano.com%'
        AND email NOT LIKE '%valmano.de%'
        AND email LIKE '%@%';
