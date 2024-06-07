window.addEventListener('turbo:load', function(){
  const tab2=document.getElementById("sign-in2");
  
  if (tab2 !==null){
  tab2.addEventListener('mouseover', function(){
    this.setAttribute("style","background-color:#baeff7;");
  });

  tab2.addEventListener('mouseout', function(){
    this.removeAttribute("style","background-color:#baeff7;");
  });
  }
})