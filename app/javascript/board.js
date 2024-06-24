window.addEventListener('turbo:load', function(){

  const board = document.getElementById('commentSelect')
  const changeBoard = document.getElementById('board-text')

  if (board !==null){
    board.addEventListener('change', function() {
    changeBoard.value += this.value;
  });
};
});