// JS Web Apps: Custom Events and Jquery Plugins

jQuery.fn.tabs = function(control){
  var element = $(this);

  control = $(control);

  $("ul#tabs").delegate("li", "click", function(){
    element.find("a").removeClass("active");

    $(this).children().addClass("active");

    element.bind("change.tabs", function(e, tabName){
      $("#tabs-content").find("div").css("display", "none");
      $("[data-tab='"+tabName+"']").css("display","block");
    });

    //Fire custom event
    number = $(this).children().attr("data-tab");
    var whichTab = "content" + number;
    element.trigger("change.tabs", whichTab);

  });
  return this;
};
