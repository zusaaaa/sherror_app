$(function () {
  marked.setOptions({
    langPrefix: "",
    highlight: function (code, lang) {
      return hljs.highlightAuto(code, [lang]).value;
    },
  });
  $("#form1").keyup(function () {
    var html = marked($(this).val());
    $("#markdownPreview1").html(html);
  });
  $("#form2").keyup(function () {
    var html = marked($(this).val());
    $("#markdownPreview2").html(html);
  });
  $("#form3").keyup(function () {
    var html = marked($(this).val());
    $("#markdownPreview3").html(html);
  });
  $("#form4").keyup(function () {
    var html = marked($(this).val());
    $("#markdownPreview4").html(html);
  });
});
