<card>
  <div class=card-container each={ cardname, i in images } ontouchstart="this.classList.toggle('hover');" >
    <div class="flip-card" id={ i }>
      <div class="front" >

      </div>
      <div class="back" style="background: url(../images/{ cardname }.jpg) 0 0/contain no-repeat">
      </div>
    </div>
  </div>

  this.images = [ 'one', 'two', 'three', 'four', 'five', 'six']

  <style>
  .card-container { perspective: 1000; -webkit-perspective: 1000; border: 1px solid #ccc; display: block; margin-bottom: 10px }
    /* hover flip */
    .card-container:hover .flip-card, .card-container.hover .flip-card { transform: rotateY(180deg) }

    .card-container, .front, .back { width: 227px; height: 223px; box-sizing: border-box; border-radius: 15px }

    /* flip card speed */
    .flip-card { transition: 0.6s; transform-style: preserve-3d; position: relative }

    .front, .back { backface-visibility: hidden; position: absolute; top: 0; left: 0 }

    .front { z-index: 2; background: #0be0a0; border: 20px solid #0e878f; box-sizing: border-box }

    .back { transform: rotateY(-180deg) }
  </style>
</card>
