# ****************************************************************
# 20261113.sql
#
# Remove the default AB UI plugin rows that the original upstream
# 20261112.sql inserted. Stacks that already ran that version still
# have them, and the portal fails to load the missing plugin file.
# See 20261112.sql for details. Safe to run when the rows are absent.
# ****************************************************************

DELETE FROM `SITE_PLUGIN_LINK`
WHERE `uuid` IN ('4ae06966-8640-4f4e-81b5-9508a213ad3c', 'd7374fe2-2084-444b-901a-b172d783bf69')
   OR `plugin` = 'ca7e6f86-eff8-4527-9438-5f44ced73a82';

DELETE FROM `SITE_PLUGIN`
WHERE `uuid` = 'ca7e6f86-eff8-4527-9438-5f44ced73a82';
