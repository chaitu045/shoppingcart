(function(){tinymce.PluginManager.requireLangPack('linker');tinymce.create('tinymce.plugins.Linker',{init:function(ed,url){ed.addCommand('mceLinker',function(){ed.windowManager.open({file:url+'/linker.html',width:600+parseInt(ed.getLang('linker.delta_width',0)),height:550+parseInt(ed.getLang('linker.delta_height',0)),inline:1},{plugin_url:url,some_custom_arg:'custom arg'})});ed.addButton('linker',{title:'linker.desc',cmd:'mceLinker',image:url+'/img/linker.gif'})},createControl:function(n,cm){return null},getInfo:function(){return{longname:'Store Linker',author:'Ray Ward',authorurl:'',infourl:'',version:"1.0"}}});tinymce.PluginManager.add('linker',tinymce.plugins.Linker)})();