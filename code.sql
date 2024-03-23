--use your own table name. 
SELECT 
   1 ID,
   'fa fa-building ' BADGEICON,
   count(*) TOTAL,
   'Total Brand' TXT,
   'https://cdn-icons-png.flaticon.com/512/5651/5651266.png' icon, 
   APEX_PAGE.GET_URL(p_page => 4) URL
FROM BRAND
UNION
SELECT 
    2 ID,
    'fa fa-list ' BADGEICON,
    COUNT(*) TOTAL,
    'Total Category' TXT,
    'https://cdn-icons-png.flaticon.com/512/10444/10444065.png'icon,
    APEX_PAGE.GET_URL(p_page => 6) URL
FROM CATEGORY
UNION
SELECT 
    3 ID,
    'fa fa-sitemap-vertical ' BADGEICON,  
    COUNT(*) TOTAL,
    'Total Item' TXT,
    'https://cdn-icons-png.flaticon.com/512/3050/3050158.png' icon,
    APEX_PAGE.GET_URL(p_page => 16) URL
FROM 
    ITEM_MST
UNION 
SELECT 
    4 ID,
    'fa fa-package ' BADGEICON,
    count(*) TOTAL,
    'Total Purchase' TXT,
    'https://cdn-icons-png.flaticon.com/512/2835/2835531.png' icon,
    APEX_PAGE.GET_URL(p_page => 22) URL
from PO_ORDER
UNION 
SELECT 
    5 ID,
    'fa fa-money ' BADGEICON,
    count(*) TOTAL,
    'Total INVOICE' TXT,
    'https://cdn-icons-png.flaticon.com/512/8072/8072446.png' icon,
    APEX_PAGE.GET_URL(p_page => 26) URL
FROM SL_ORDER