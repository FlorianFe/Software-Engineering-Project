//-------------------Programm----------------------

var socket = io('http://192.168.0.201:8080/mobile');
var selectorToEventMessageMap = {};
var myName;
var appCode;
var watcher = false;
var loggedIn = false;

startAppState();

//--------------------------------------------------



function registerEventMessageOnButton(selector, eventMessage)
{
    selectorToEventMessageMap[selector] = eventMessage;
    enableButton(selector);
}

function addClasses(element) {
    for (var i = 1; i < arguments.length; i++) {
        element.classList.add(arguments[i]);
    }
};

function removeClasses(element) {
    for (var i = 1; i < arguments.length; i++) {
        element.classList.remove(arguments[i]);
    }
};

function disableButton(selector)
{
    $(selector).removeClass('active');
    $(selector).addClass('disabled');
    $(selector).off('click');
    $(selector).attr('disabled', 'disabled');
}

function enableButton(selector)
{
    $(selector).removeClass('disabled');
    $(selector).addClass('active');
    $(selector).on('click', function () {
        var key = '#' + $(this).attr("id");
        if (selectorToEventMessageMap[key] !== undefined)
        {
            console.log(selectorToEventMessageMap[key]);
            socket.emit(selectorToEventMessageMap[key], {});
        }
    });
    $('#triggerButton').removeAttr('disabled');
}
/*
document.getElementById('startStopWayTimeMeasurementSeries').addEventListener('click', function () {
  if (document.getElementById('startStopWayTimeMeasurementSeries').textContent == 'START') {
    document.getElementById('startStopWayTimeMeasurementSeries').textContent = 'STOP';
    //::::::
  } else if (document.getElementById('startStopWayTimeMeasurementSeries').textContent == 'FINISHED') {
      //DoNothing ?
  }else {
      document.getElementById('startStopWayTimeMeasurementSeries').textContent = 'FINISHED';
      addClasses('startStopWayTimeMeasurementSeries', 'disabled');
    //::::::
  }
});*/


socket.on('connect', function () {
  //-------------------Listeners----------------------


  //-------------------OnMessage----------------------
  socket.on('LiveValuesUpdate', function (obj) {
    var newObj = JSON.parse(obj);
    document.getElementById('liveValueValue1').innerHTML = newObj.value1;
    document.getElementById('liveValueValue2').innerHTML = newObj.value2;
    document.getElementById('liveValueValue3').innerHTML = newObj.value3;
    document.getElementById('liveValueValueForWTM').innerHTML = newObj.value3;
  });
});

socket.on('disconnect', function(){
    socket.emit("RemoveMobileUser", { name: myName, code: appCode });
    startAppState();
});

socket.on('ConfigurationChanged', function (id) {
    closeModal();
    console.log(id);
    if(loggedIn){
        if (id == 0) {
            startAppState();
            Materialize.toast('Es wurde keine Konfiguration!', 4000, 'rounded');
        }else if(id == 1){
            startTriggerState();
        } else if(id == 2){
            startWayTimeState();
        }
    }
});

socket.on('LoggedIn', function () {
    showLoadModal();
    //Ausloeser
    setWatcher(false);
    loggedIn = true;
    setTextOfClass('nameArea', myName)
});

socket.on('NotLoggedIn', function () {
    Materialize.toast('Falscher Code oder Name bereits vergeben.', 4000, 'rounded')
    loggedIn = false;
});


registerEventMessageOnButton('#triggerButton', 'TriggerValueCommand');
registerEventMessageOnButton('#startMeasurementSeries', 'NewMeasurementCommand');
registerEventMessageOnButton('#saveMeasurementSeries', 'SaveMeasurementCommand');
registerEventMessageOnButton('#cancelMeasurementSeries', 'CancelMeasurementCommand');
registerEventMessageOnButton('#calibrateRepeatingAccuracyMeasurementSeries', 'SetToNullCommand');


registerEventMessageOnButton('#startWayTimeMeasurementSeries', 'StartAccumulationCommand');
registerEventMessageOnButton('#stopWayTimeMeasurementSeries', 'StopAccumulationCommand');

registerEventMessageOnButton('#saveWayTimeMeasurementSeries', 'SaveMeasurementCommand');

registerEventMessageOnButton('#calibrateWayTimeMeasurementSeries', 'SetToNullCommand');

function jump(elementID){            
    document.getElementById(elementID).click();
}

function startAppState() {
    enableButton('#loginTabButton');
    disableButton('#triggerTabButton');
    disableButton('#wayTimeTabButton');
    disableButton('#savedTabButton');
    disableButton('#saveTabButton');

    jump('loginTabButtonAnchor');
};

function startTriggerState() {

    disableButton('#loginTabButton');
    enableButton('#triggerTabButton');
    disableButton('#wayTimeTabButton');
    enableButton('#savedTabButton');
    disableButton('#saveTabButton');

    disableButton('#triggerButton');

    jump('triggerTabButtonAnchor');
};

function startTriggerStateSave() {
    disableButton('#loginTabButton');
    disableButton('#triggerTabButton');
    disableButton('#wayTimeTabButton');
    disableButton('#savedTabButton');
    enableButton('#saveTabButton');

    jump('saveTabButtonAnchor');
};

function startWayTimeState()
{
    disableButton('#loginTabButton');
    disableButton('#triggerTabButton');
    enableButton('#wayTimeTabButton');
    disableButton('#savedTabButton');
    disableButton('#saveTabButton');

    jump('wayTimeTabButtonAnchor');
};

function startWayTimeStateSave() {
    disableButton('#loginTabButton');
    disableButton('#triggerTabButton');
    disableButton('#wayTimeTabButton');
    disableButton('#savedTabButton');
    enableButton('#saveTabButton');

    jump('saveTabButtonAnchor');
};


// === View Funktionalitäten === //

$('#startMeasurementSeries').on('click', function ()
{
    $('#startMeasurementSeries').hide();
    $('#saveMeasurementSeries').show();
    $('#saveMeasurementSeries').css({ display: "flex" });

    enableButton('#triggerButton');
});

$('#saveMeasurementSeries').click(function () {
    $('#startMeasurementSeries').show();
    $('#startMeasurementSeries').css({ display: "flex" });
    $('#saveMeasurementSeries').hide();

    disableButton('#triggerButton');
});

var date = new Date();
var seconds = 0;

$('#startWayTimeMeasurementSeries').on('click', function () {
    $('#startWayTimeMeasurementSeries').hide();
    $('#stopWayTimeMeasurementSeries').show();
    $('#stopWayTimeMeasurementSeries').css({ display: "flex" });

    seconds = 0;

    //date = new Date();
    interval = setInterval(function ()
    {
        $('#time').text(seconds.toFixed(2) + " sek");
        seconds += 0.01;
    }, 10);
});

$('#stopWayTimeMeasurementSeries').click(function () {
    $('#startWayTimeMeasurementSeries').show();
    $('#startWayTimeMeasurementSeries').css({ display: "flex" });
    $('#stopWayTimeMeasurementSeries').hide();

    $('#time').text(seconds.toFixed(3) + " sek");
    clearInterval(interval);
});

function connect() {
    //verbinden ....
    var name = $('#namefield').val();
    var code = $('#codefield').val();

    myName = name;
    appCode = code;

    if (name.length != 0 && code.length != 0) {
        socket.emit("Login", {name: name, code: code });

        //Wenn Code korrekt
    }
}

document.getElementById('connectButton').addEventListener('click', function () {
    connect();
});

function showLoadModal() {
    $('#modal').openModal();
    $('.lean-overlay').remove();
};

function closeModal() {
    $('#modal').closeModal();
}

function setWatcher(isWatcher) {
    if (isWatcher) {
        setTextOfClass('watcher', 'visibility');
        watcher = false;
    } else {
        setTextOfClass('watcher', 'touch_app');
        watcher = true;
    }
};

function setTextOfClass(className, text) {
    divs = document.getElementsByClassName(className);

    for (var i = 0; i < divs.length; i++) {
        divs[i].innerText = text;    // Change the content
    }
};

