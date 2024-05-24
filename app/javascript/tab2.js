window.addEventListener('turbo:load', function(){
  const tab2=document.getElementById("sign-in2");
  
  tab2.addEventListener('mouseover', function(){
    this.setAttribute("style","background-color:#baeff7;");
  });

  tab2.addEventListener('mouseout', function(){
    this.removeAttribute("style","background-color:#baeff7;");
  });
});