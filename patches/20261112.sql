# ****************************************************************
# 20261112.sql
#
# HELD BACK on the CruGlobal-AI fork.
#
# Upstream, this patch registers the default AB UI plugin
# (ab_plugin_default_web) in SITE_PLUGIN and SITE_PLUGIN_LINK.
# That plugin is not built or shipped by any CruGlobal-AI image yet,
# so the portal gets a 404 for
# /assets/ab_plugins/ab_plugin_default_web/dist/ABDefaultWeb_web.mjs
# and stops with "Error initializing Portal".
#
# Restore the upstream inserts (in a new, later patch) once
# ab_plugin_default_web is ported and served by ab_service_web.
# ****************************************************************
