window.addEventListener('turbo:load', function(){
function draw() {
  const board = document.querySelector("#canvas");
  const canvasWidth = canvasHeight = 400;
  const context = board.getContext("2d");
 
  // 色
  const colorRed = "#FF0000";
  const colorBlack = "#000000";
 
  // 枠
  const flameR = canvasWidth / 2.5;
  const flameLineWidth = 3;
 
  // 略
 
  // 描画開始
  context.clearRect(0, 0, canvasWidth, canvasHeight);
 
  // 枠
  context.beginPath();
  context.strokeStyle = colorBlack;
  context.lineWidth = flameLineWidth;
  context.arc(canvasWidth / 2, canvasHeight / 2, flameR, 0, Math.PI * 2, true);
  context.stroke();

}});