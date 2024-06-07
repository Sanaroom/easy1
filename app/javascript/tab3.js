window.addEventListener('turbo:load', function(){
  const tab3=document.getElementById("sign-in3");
  
  if (tab3 !== null) {
  tab3.addEventListener('mouseover', function(){
    tab3.setAttribute("style","background-color:#baeff7;");
  });

  tab3.addEventListener('mouseout', function(){
    tab3.removeAttribute("style","background-color:#baeff7;");
  });
 }
});