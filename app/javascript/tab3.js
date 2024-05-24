window.addEventListener('turbo:load', function(){
  const tab3=document.getElementById("sign-in3");
  
  tab3.addEventListener('mouseover', function(){
    this.setAttribute("style","background-color:#baeff7;");
  });

  tab3.addEventListener('mouseout', function(){
    this.removeAttribute("style","background-color:#baeff7;");
  });
});