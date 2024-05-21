document.addEventListener("DOMContentLoaded", function() {
  function updateClock() {
    const now = new Date();
    const hours = String(now.getHours()).padStart(2, '0');
    const minutes = String(now.getMinutes()).padStart(2, '0');
    const seconds = String(now.getSeconds()).padStart(2, '0');
    const timeString = `${hours}:${minutes}:${seconds}`;

    const clockElement = document.getElementById('Clock');
    clockElement.textContent = timeString;
  }

  // 初期表示
  updateClock();

  // 1秒ごとに時計を更新
  setInterval(updateClock, 1000);
});