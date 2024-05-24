window.addEventListener('turbo:load', function(){
  const school=document.getElementById("school");
  
  school.addEventListener('mouseover', function(){
    this.setAttribute("style","box-shadow:0px 0px 10px rgba(0, 0, 0, 0.5);");
  });

  school.addEventListener('mouseout', function(){
    this.removeAttribute("style","box-shadow:0px 0px 10px rgba(0, 0, 0, 0.5);");
  });
});