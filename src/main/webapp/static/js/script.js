function save()
  {
    var xhtml = new XMLHttpRequest();
    var url = "http://localhost:8080/api/insert";
    xhtml.open("POST", url, true);
    xhtml.setRequestHeader('Content-Type','application/json');
    
    var t1 = document.getElementById("t1");
    var t2 = document.getElementById("t2");
    var t3 = document.getElementById("t3");
    var t4 = document.getElementById("t4");
    var t5 = document.getElementById("t5");
    var t6 = document.getElementById("t6");
    var t7 = document.getElementById("t7");

    xhtml.send(JSON.stringify({
      username : t1.value,
      password : t2.value,
      id : t3.value,
      email : t5.value,
      name : t6.value,
      phone : t7.value,
    }));
    
    xhtml.onreadystatechange = function()
    {
      if(this.readyState == 4 && this.status == 200)
        lbl.innerText = this.responseText;
    };
  }
  function insert()
  {
    var xhtml = new XMLHttpRequest();
    var url = "http://localhost:8080/api/insert";
    xhtml.open("POST", url, true);
    xhtml.setRequestHeader('Content-Type','application/json');
    
    var t1 = document.getElementById("t1");
    var t2 = document.getElementById("t2");
    var t4 = document.getElementById("t4");
    

    xhtml.send(JSON.stringify({
      username : t1.value,
      password : t2.value,
      email : t4.value,
      
    }));
    
    xhtml.onreadystatechange = function()
    {
      if(this.readyState == 4 && this.status == 200)
        lbl.innerText = this.responseText;
    };
  }
  function login()
  {
  var xhtml = new XMLHttpRequest();
    var user = document.getElementById("t1");
    var password = document.getElementById("t2");

    var url = "http://localhost:8080/api/login/" + user.value + "/" + password.value + "/";
    xhtml.open("POST", url, true);
    xhtml.setRequestHeader('Content-Type','application/json');
    xhtml.send();

    var display = document.getElementById("niku");

    xhtml.onreadystatechange = function()
    {
      if(this.readyState == 4 && this.status == 200)
        display.innerText = this.responseText;
    };
  }