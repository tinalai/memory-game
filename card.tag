<card>
  <div class="play-container">
    <div class=card-container each={ shuffledArray } >
      <a onclick={ parent.flipCard }></a>
      <div class="flip-card" id={ this.id }>
        <div class="front" >
        </div>
        <div class="back" style="background: url(../images/{ this.cardname }.jpg) 0 0/contain no-repeat">
        </div>
      </div>
    </div>
  </div>

  this.images = [ 'one', 'two', 'three', 'four', 'five', 'six']
  this.doubleImages = []

  double(element, index){
    this.doubleImages.push({id: index, cardname: element, flip: false })
    this.doubleImages.push({id: index, cardname: element, flip: false })
  }

  this.images.forEach(this.double)

  shuffle(array) {
    var currIndex = array.length, tempVal, randomIndex
    while(currIndex !== 0){
    randomIndex = Math.floor(Math.random() * currIndex)
    currIndex -= 1

    tempVal = array[currIndex]
    array[currIndex] = array[randomIndex]
    array[randomIndex] = tempVal
    }
  return array
  }

  this.shuffledArray = this.shuffle(this.doubleImages)

  flip(){
    
  }

</card>
