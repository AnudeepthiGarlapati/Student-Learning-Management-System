function getEvents()
{
  var url = "http://localhost:8080/registration1/departments1";
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
  var url = "http://localhost:8080/registration1/register1";
  var data = JSON.stringify({
    "name" : T1.value,
    "contactno" : T2.value,
    "address" : T3.value,
    "emailid" : T4.value,
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
  var url = "http://localhost:8080/registration1/participantslist1/" + D1.value;
  callApi("GET", url, "", generateTable);
}

function generateTable(res)
{
  var data = JSON.parse(res);
  var table = `<table border="1px">
          <tr>
            <th>ID</th>
            <th>NAME</th>
            <th>CONTACT</th>
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
  var url = "http://localhost:8080/registration1/read1/" + T0.value;
  callApi("GET", url, "", loadData);
}

function loadData(res)
{
  var data = JSON.parse(res);
  T1.value = data.name;
  T2.value = data.contactno;
  T3.value = data.address;
  T4.value = data.emailid;
  
}

function update()
{
  var url = "http://localhost:8080/registration1/update1/" + T0.value;
  var data = JSON.stringify({
    name : T1.value,
    contactno : T2.value,
    address : T3.value,
    emailid : T4.value
  });
  
  callApi("PUT", url, data, getResponse);
}

function del()
{
  var url = "http://localhost:8080/registration1/cancel1/" + T0.value;
  callApi("DELETE", url, "", getResponse);
}