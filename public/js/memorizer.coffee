window.MemoryBlurb = class MemoryBlurb
  constructor: (text) ->
    @text = text

  getLetter: (index) ->
    @text.split("")[index]

  dropItIntoPage: (text) =>
    $("p.target_text").html(text)

  evaluateWord: ->
    entry = $("#entry")
    phraseDisplay = $('.display_text')
    currentGuess = entry.val()
    slicedText = @text.slice(0, currentGuess.length)

    if currentGuess == slicedText
      @displayCount = currentGuess.length
      phraseDisplay.toggleClass('fail') if phraseDisplay.hasClass('fail')
      this.displayWord(@displayCount)

    else
      phraseDisplay.toggleClass('fail') if !phraseDisplay.hasClass('fail')

  displayWord: (count) ->
    characterCount = (count)

    targetText = $('.target_text').html()
    $(".display_text").html(targetText.slice(0, characterCount))


  initialize: =>
    @displayCount = 0
    that = this
    $(".target_text").html("blahzah")


    $("input[type='text']").live('input',
      -> that.evaluateWord() if $("#entry").val()
    ) #CURRENT: update on change of text input, not on keyup

    @dropItIntoPage(@text)



    $("a.start").bind("click", "alert('hello');")


#Modes
#Highlighting

