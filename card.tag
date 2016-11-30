<card>
  <div class="play-container">
    <div class=card-container each={ cardname, i in images } >
      <div class="flip-card" id={ i }>
        <div class="front" >
        </div>
        <div class="back" style="background: url(../images/{ cardname }.jpg) 0 0/contain no-repeat">
        </div>
      </div>
    </div>
  </div>

  this.images = [ 'one', 'two', 'three', 'four', 'five', 'six']


</card>
