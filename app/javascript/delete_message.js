window.addEventListener('turbo:load',function(){
  const button = document.getElementById("d-button")
  const message = document.getElementById("delete_message")

  const button2 = document.getElementById("d-button2")
  const message2 = document.getElementById("delete_message2")



  if (button !==null){
  button.addEventListener('mouseover',function(){
    message.style.display = 'block';
  });

  button.addEventListener('mouseout',function(){
    message.style.display = 'none';
  });
  };

  if (button2 !==null){
    button2.addEventListener('mouseover',function(){
      message2.style.display = 'block';
    });
  
    button2.addEventListener('mouseout',function(){
      message2.style.display = 'none';
    });
    };

});