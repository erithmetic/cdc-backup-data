function switchMPLanguage(lang) {
MP.UrlLang='mp_js_current_lang';
MP.SrcUrl=decodeURIComponent('mp_js_orgin_url');
MP.oSite=decodeURIComponent('mp_js_origin_baseUrl');
MP.tSite=decodeURIComponent('mp_js_translated_baseUrl');
MP.init();
} 