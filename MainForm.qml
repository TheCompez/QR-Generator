import QtQuick 2.7
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.1
import QtQuick.Controls.Styles 1.3

Item {
    id: item1
    width: 1000
    height: 700

    Rectangle {
        id: rectangle1
        x: 8
        y: 8
        width: 984
        height: 660
        color: "#ffffff"
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        border.color: "#7e1a82"
        border.width: 4

        Rectangle {
            id: rectangle2
            x: 8
            y: 8
            width: 968
            height: 644
            color: "#d8bada"
            opacity: 1


            TabView {

                id : btab
                x: 8
                y: 173
                width: 952
                height: 463
                currentIndex: 0
                tabPosition: 1
                style: tabViewStyle


                Tab {
                    id : tab_simple
                    title: "Simple Mode"
                    source: "qrc:/Simple.qml"


                }

                Tab {
                    id : tab_advanced
                    title: "Advanced Mode (vCard)"
                    source: "qrc:/Advanced.qml"

                }

                Tab {
                    id : tab_wifi
                    title: "WiFi"
                    source: "qrc:/WiFi.qml"

                }

                Tab {
                    id : tab_scaner
                    title: "Reader (Scanner)"
                    source: "qrc:/scanner.qml"

                }

                Tab {
                    id : tab_about
                    title: "About"
                    source: "qrc:/about.qml"

                }


            }

            Flow {
                id: flow1
                y: 39
                width: 553
                height: 103
                anchors.left: parent.left
                anchors.leftMargin: 27
                spacing: 5

                Image {
                    id: image_logo
                    width: 100
                    height: 100
                    sourceSize.height: 128
                    sourceSize.width: 128
                    fillMode: Image.PreserveAspectCrop
                    source: "qrc:/logo/image/qr-code.png"

                    SequentialAnimation {
                        running: true; loops: Animation.Infinite
                        NumberAnimation { target:image_logo; property: "opacity"; to: 1.0; duration: 500}
                        NumberAnimation { target:image_logo; property: "opacity"; to: 0.5; duration: 500}
                    }


                }

                Text {
                    id: text1
                    x: 105
                    width: 446
                    height: 100
                    color: "#9338a2"
                    text: qsTr("QR Code Generator  v2.6.1")
                    styleColor: "#e5dede"
                    font.pointSize: 18
                    style: Text.Raised
                    font.family: "Verdana"
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                }


            }




        }
    }

    Component {
        id: tabViewStyle
        TabViewStyle {
            frameOverlap: 1
            tabsMovable: true
            tab: Rectangle {
                id:vtabs
                color: styleData.selected ? "#ffffff" :"#b42af0"
                implicitWidth: Math.max(text.width + 50, 100)
                implicitHeight: 30
                radius: 0
                border.width: 1
                border.color: "#b42af0"

                Text {
                    id: text
                    anchors.centerIn: parent
                    text: styleData.title
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    color: styleData.selected ? "#b42af0" : "#ffffff"
                }


            }

            leftCorner: Item { implicitWidth: 20 }
            rightCorner: Item { implicitWidth: 20 }
            frame: Rectangle { color: "white"; border.width: 2; border.color: "#b42af0"; radius: 4 }
        }
    }

}
