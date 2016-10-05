import QtQuick 2.7
import QtQuick.Controls 1.4
import QtQuick.Window 2.2
import QtQuick.Dialogs 1.2

ApplicationWindow {
    id: applicationWindow1
    title: qsTr("QR Code Generator v2.6 Pro")
    width: 1000
    height: 730
    minimumWidth: 1000
        minimumHeight : 730
    maximumWidth: 1000
        maximumHeight : 730
    visible: true


    menuBar: MenuBar {
        Menu {
            title: qsTr("&Action")
            MenuItem {
                text: qsTr("&Exit")
                onTriggered: Qt.quit();
            }

        }

//        Menu {
//            title: qsTr("&Language")
//            MenuItem {
//                id:per
//                text: qsTr("&Persian")
//                enabled: true
//                checkable: true  ;
//                onTriggered: {

//                    eng.checked = false
//                    if(ACTION.define_lang() === "persian") {
//                        gmain.mirror = true
//                        gmain.mirror = Qt.application.layoutDirection == Qt.LeftToRight

//                    }


//                }
//            }
//            MenuItem {
//                id:eng
//                text: qsTr("&English")
//                enabled: true

//                checkable: true  ;
//                onTriggered: {

//                    per.checked = false
//                    if(ACTION.define_lang() === "english") {
//                        gmain.mirror = true
//                        gmain.mirror = Qt.application.layoutDirection == Qt.RightToLeft

//                    }

//                }
//            }

//        }


    }


    Rectangle {

        anchors.centerIn: parent
        anchors.fill: parent
        id:gmain
        property bool mirror: Qt.application.layoutDirection == Qt.RightToLeft
        LayoutMirroring.enabled: mirror
        LayoutMirroring.childrenInherit: true



        MainForm {
            id:gMain
            y: 60
            width: 700
            height: 560
            anchors.horizontalCenterOffset: 0
            anchors.horizontalCenter: parent.horizontalCenter


        }

        StatusBar {
            x: 0
            y: 694
            width: 1000
            height: 30
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 0

            Label {
                x: 9
                y: 5
                color: "#292929"
                onLinkActivated: {
                    Qt.openUrlExternally(link)

                }
                text: "Copyright (C) 2015 <a href=\"http://nanosoftco.com\">Nanosoft Corporation</a> , All right reserved."
            }


        }


    }



}
