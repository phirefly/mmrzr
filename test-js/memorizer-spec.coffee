
describe "MemoryBlurb", ->
  beforeEach ->
    @memoryBlurb = new MemoryBlurb "It's not the size of the dog in the fight, it's the size of the fight in the dog."
    
  it "extracts the first letter", ->
    expect(@memoryBlurb.getLetter(10)).toEqual "h"
    
  it "extracts the third letter", ->
    expect(@memoryBlurb.getLetter(21)).toEqual "t"