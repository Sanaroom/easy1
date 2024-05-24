window.addEventListener('turbo:load', function(){
  const tab4=document.getElementById("sign-in4");
  
  tab4.addEventListener('mouseover', function(){
    this.setAttribute("style","background-color:#baeff7;");
  });

  tab4.addEventListener('mouseout', function(){
    this.removeAttribute("style","background-color:#baeff7;");
  });
});