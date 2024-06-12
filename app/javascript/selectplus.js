window.addEventListener('turbo:load', function(){
  const AA = document.getElementById("AA")

  AA.addEventListener('click', function() {
    const newOption = document.createElement('option');
    newOption.textContent = '新しい選択肢';
    newOption.value = '新しい選択肢';

    const selectElement = document.getElementById('commentSelect');
    selectElement.appendChild(newOption);
  })

});
