import QtQuick 2.7
import QtQuick.Controls 1.4
import QtWebEngine 1.3

Rectangle {
    id: recAdvanced
    anchors.centerIn: parent
    anchors.fill: parent
    width: 1000
    height: 450
    anchors.topMargin: 10
    anchors.bottomMargin: 10
    anchors.leftMargin: 10
    anchors.rightMargin: 10

    Flow {
        id: flow1
        x: 39
        y: -47
        width: 500
        height: 29
        opacity: 0
        visible: false
        anchors.horizontalCenterOffset: 0
        anchors.horizontalCenter: parent.horizontalCenter
        spacing: 5

        Text {
            id: text1
            height: 30
            text: qsTr("Width:")
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignRight
            font.pixelSize: 12

        }

        TextField {
            id: textFielWidth
            width: 100
            height: 30
            placeholderText: qsTr("512")
            horizontalAlignment: Text.AlignHCenter
            text:"512"
            readOnly: true

        }

        Text {
            id: text2
            height: 30
            text: qsTr("Height:")
            font.pixelSize: 12
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignRight
        }

        TextField {
            id: textFieldHeight
            width: 100
            height: 30
            placeholderText: qsTr("512")
            horizontalAlignment: Text.AlignHCenter
            text:"512"
            readOnly: true

        }

        Text {
            id: text_error_correct_level
            height: 30
            text: qsTr("Error correction level:")
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignRight
            font.pixelSize: 12
        }

        ComboBox {
            id: comboBox_error_correct_level
            width: 85
            height: 30
            opacity: 0
            visible: false
            model: ListModel {
                id: error_correct_level_items
                ListElement { text: "L"; }
                ListElement { text: "M"; }
                ListElement { text: "Q"; }
                ListElement { text: "H"; }
            }
        }












    }

    GroupBox {
        id: groupBox3
        x: 241
        y: 65
        width: 467
        height: 276
        title: qsTr("Attempts to open a WIFI network with SSD")



        Button {
            id: button_generate
            x: 337
            y: 284
            width: 180
            height: 35
            text: qsTr("Generator")
            anchors.horizontalCenterOffset: 0
            anchors.horizontalCenter: parent.horizontalCenter


            //


            onClicked: {

                pwait.visible = true

                result_view_larg.url = "http://chart.apis.google.com/chart?cht=qr&chs=512x512&chld=L&choe=UTF-8&chl=WIFI%3AS%3A" + textFieldssid.text + "%3BT%3A" + comboBox_type.currentText + "%3BP%3A" + textFieldpassword.text + "%3B%3B"
                largresult.visible = true
                largresult.opacity = 1


            }
        }

        Text {
            id: text3
            x: 113
            y: 51
            height: 30
            text: qsTr("SSID:")
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignRight
            font.pixelSize: 12
        }

        TextField {
            id: textFieldssid
            x: 149
            y: 51
            width: 200
            height: 30
            placeholderText: qsTr("")
            horizontalAlignment: Text.AlignHCenter
        }

        Text {
            id: text4
            x: 89
            y: 87
            height: 30
            text: qsTr("Password:")
            font.pixelSize: 12
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignVCenter
        }

        TextField {
            id: textFieldpassword
            x: 149
            y: 87
            width: 200
            height: 30
            placeholderText: qsTr("")
            horizontalAlignment: Text.AlignHCenter

        }

        Text {
            id: text5
            x: 68
            y: 123
            height: 30
            text: qsTr("Network type:")
            font.pixelSize: 12
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignVCenter
        }


        ComboBox {
            id: comboBox_type
            x: 149
            y: 123
            width: 200
            height: 30
            model: ListModel {
                id: output_encoding_items
                ListElement { text: "WEP"; }
                ListElement { text: "WPA/WPA2"; }
                ListElement { text: "No encryption"; }
            }
        }


        Text {
            id: text6
            x: 99
            y: 159
            height: 30
            text: qsTr("Caption:")
            font.pixelSize: 12
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignVCenter
        }

        TextField {
            id: textFieldcaption
            x: 149
            y: 159
            width: 200
            height: 30
            placeholderText: qsTr("")
            horizontalAlignment: Text.AlignHCenter

        }

    }

    Image {
        id: image1
        x: 92
        y: 139
        width: 128
        height: 128
        sourceSize.height: 128
        sourceSize.width: 128
        source: "qrc:/logo/icon/wifi.png"


        SequentialAnimation {
            running: true; loops: Animation.Infinite
            NumberAnimation { target:image1; property: "opacity"; to: 1.0; duration: 500}
            NumberAnimation { target:image1; property: "opacity"; to: 0.5; duration: 500}
        }

    }

    Rectangle {
        id:largresult
        x: 67
        y: 338
        width: 550
        height: 550
        color:"#ffffff"
        border.color: "#8b8b8b"
        border.width: 2
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.centerIn: recAdvanced
        anchors.fill: recAdvanced
        visible: false
        opacity: 0

        WebEngineView{
            id: result_view_larg
            anchors.fill: parent
            enabled: false
            antialiasing: true

            onLoadProgressChanged: {

                if(result_view_larg.loadProgress === 100) {
                    pwait.visible = false
                }



            }

            Text {
                id: pwait
                text: qsTr("Please wait...")
                anchors.fill: parent
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 16
            }

            onLoadingChanged: {

                if(result_view_larg.LoadSucceededStatus === true) {
                    pwait.visible = false
                }



            }

        }

        Rectangle {
            id: button_close
            color: "#00000000"
            visible: true
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 373
            anchors.right: parent.right
            anchors.rightMargin: 44
            anchors.left: parent.left
            anchors.leftMargin: 927
            anchors.top: result_view_larg.bottom
            anchors.topMargin: -409
            Text {
                id: button_close_icon
                width: 24
                height: 24
                color: "#4e3dd4"
                text:"X"
                visible: true
                font.pointSize: 19
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                anchors.centerIn: parent

                Behavior on opacity { NumberAnimation { duration: 55 } }

                MouseArea {
                    id: button_close_mouse_area
                    visible: true
                    hoverEnabled: true
                    anchors.fill: parent
                    onHoveredChanged: {if(button_close_mouse_area.containsMouse) {
                            button_close_icon.opacity = 0.5
                        } else { button_close_icon.opacity = 1.0 }

                    }
                    onClicked: { largresult.opacity = 0
                        largresult.visible = false
                    }
                }
            }
        }


        Button {
            id: button_print
            x: 886
            y: 63
            width: 41
            height: 34
            text: qsTr("Print")
            onClicked: {

                var stat = result_view_larg.grabToImage(function(result) {
                    //result.saveToFile("/home/user/someimage.png"); //saves to a file
                    ACTION.print(result.image); //result.image holds the QVariant
                });
                //console.log("Success: ", stat);

            }
        }


        Behavior on opacity{ NumberAnimation {} }

    }





}


//Flickable {
//    id: flickable1
//    anchors.fill: parent
//    contentHeight: result_view.height * 2.5
//    anchors.centerIn: parent

//}

