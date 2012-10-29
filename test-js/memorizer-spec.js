(function() {

  describe("MemoryBlurb", function() {
    beforeEach(function() {
      return this.memoryBlurb = new MemoryBlurb("It's not the size of the dog in the fight, it's the size of the fight in the dog.");
    });
    it("extracts the first letter", function() {
      return expect(this.memoryBlurb.getLetter(10)).toEqual("h");
    });
    return it("extracts the third letter", function() {
      return expect(this.memoryBlurb.getLetter(21)).toEqual("t");
    });
  });

}).call(this);
