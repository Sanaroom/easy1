window.addEventListener('turbo:load', function(){
  const tab1=document.getElementById("sign-in1");
  

  if (tab1 !==null){
  tab1.addEventListener('mouseover', function(){
    this.setAttribute("style","background-color:#baeff7;");
   
  });

  tab1.addEventListener('mouseout', function(){
    this.removeAttribute("style","background-color:#baeff7;");
  });
  }
});

