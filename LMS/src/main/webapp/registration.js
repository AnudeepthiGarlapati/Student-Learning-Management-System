function getEvents()
{
  var url = "http://localhost:8080/registration/departments";
  callApi("GET", url, "", loadEvents);
}

function loadEvents(res)
{
  var data = JSON.parse(res);
  D1.innerText = "";
  var option = document.createElement("option");
    option.value = "";
    option.text = "";
    D1.add(option);
  for (var x in data) 
  {
      var option = document.createElement("option");
      option.value = data[x].eid;
      option.text = data[x].ename;
      D1.add(option);
  }
}


function register()
{
  var url = "http://localhost:8080/registration/register";
  var data = JSON.stringify({
    "name" : T1.value,
    "contactno" : T2.value,
    "collegename" : T3.value,
    "address" : T4.value,
    "emailid" : T5.value,
    "eid" : D1.value
  });
  
  callApi("POST", url, data, getResponse);
}

function getResponse(res)
{
  alert(res);
}

function callApi(METHOD, URL, DATA, SUCCESS)
{
  var xhttp = new XMLHttpRequest();
  xhttp.open(METHOD, URL, true);
  xhttp.setRequestHeader('Content-Type','application/json');
    
  xhttp.onreadystatechange = function()
  {
    if(this.readyState == 4)
    {
      if(this.status == 200)
        SUCCESS(this.responseText);
      else
        alert("404: Service unavailable");
    }
  };
  
  xhttp.send(DATA);
}
function getList()
{
  var url = "http://localhost:8080/registration/participantslist/" + D1.value;
  callApi("GET", url, "", generateTable);
}

function generateTable(res)
{
  var data = JSON.parse(res);
  var table = `<table border="1px">
          <tr>
            <th>ID</th>
            <th>NAME</th>
            <th>CONTACT#</th>
            <th>INSTITUTION NAME</th>
            <th>ADDRESS</th>
            <th>EMAIL ID</th>
          </tr>
        `;
  for(var x in data)
  {
    table += `<tr>
          <td>`+ data[x].id +`</td>
          <td>`+ data[x].name +`</td>
          <td>`+ data[x].contactno +`</td>
          <td>`+ data[x].collegename +`</td>
          <td>`+ data[x].address +`</td>
          <td>`+ data[x].emailid +`</td>
          </tr>
         `;
  }
  table += `</table>`;  
  list.innerHTML = table;
}

function search()
{
  var url = "http://localhost:8080/registration/read/" + T0.value;
  callApi("GET", url, "", loadData);
}

function loadData(res)
{
  var data = JSON.parse(res);
  T1.value = data.name;
  T2.value = data.contactno;
  T3.value = data.collegename;
  T4.value = data.address;
  T5.value = data.emailid;
  
}

function update()
{
  var url = "http://localhost:8080/registration/update/" + T0.value;
  var data = JSON.stringify({
    name : T1.value,
    contactno : T2.value,
    collegename : T3.value,
    address : T4.value,
    emailid : T5.value
  });
  
  callApi("PUT", url, data, getResponse);
}

function del()
{
  var url = "http://localhost:8080/registration/cancel/" + T0.value;
  callApi("DELETE", url, "", getResponse);
}