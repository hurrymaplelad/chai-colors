chai = require 'chai'
chaiColors = require '..'

chai.should()
chai.use chaiColors

describe 'chai-colors', ->
  describe 'hex and rgba representations', ->
    describe 'the same color', ->
      beforeEach ->
        @hex = '#000000'
        @rgba = 'rgba(0, 0, 0, 1)'

      it 'passes', ->
        @rgba.should.be.colored @hex
        @hex.should.be.colored @rgba

    describe 'different colors', ->
      beforeEach ->
        @hex = '#FFFFFF'
        @rgba = 'rgba(0, 0, 0, 1)'

      it 'fails', ->
        @rgba.should.not.be.colored @hex
        @hex.should.not.be.colored @rgba
