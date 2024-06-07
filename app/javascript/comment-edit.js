



window.addEventListener('turbo:load', function(){
  const edit = document.getElementById("edit-button");
  const editIndex = document.getElementById("edit-index");  

  edit.addEventListener("click", function(event){
    event.preventDefault();  
    editIndex.classList.add("index");
  });

  
});
