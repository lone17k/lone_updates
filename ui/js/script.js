// script.js

var isNuiOpen = false;
document.getElementById('updateNui').style.display  = 'none';

function closeNui() {
    isNuiOpen = false;
    document.getElementById('updateNui').style.display  = 'none';
    fetch(`https://${GetParentResourceName()}/closeNui`, {});
}

document.addEventListener('DOMContentLoaded', function () {
    window.addEventListener('message', function (event) {
        var data = event.data;

        if (data.type === 'loneopenNui') {
            updateNui(data);
            document.getElementById('updateNui').style.display  = 'block';

        } else if (data.type === 'updateList') {
            updateNui(data);
        }
    });

    document.addEventListener('keydown', function (event) {
        
        if (event.key === 'Escape' && isNuiOpen) {
            closeNui();
        }
    });
});

function updateNui(data) {
    updates = data.updates
    var updateList = document.getElementById('updateList');
    var servername = document.getElementById('serverName');
    var date = document.getElementById('date');
    isNuiOpen = true
    
    servername.innerHTML = data.servername
    date.innerHTML = data.date
    updateList.innerHTML = '';

    updates.forEach(function (update) {
        var listItem = document.createElement('li');
        listItem.textContent = update;
        updateList.appendChild(listItem);
    });
}
