import QtQuick 2.7
import QtQuick.Controls 1.4
import QtWebEngine 1.3

Rectangle {
    id: recSimple
    anchors.centerIn: parent
    anchors.fill: parent
    width: 900
    height: 600
    anchors.topMargin: 10
    anchors.bottomMargin: 10
    anchors.leftMargin: 10
    anchors.rightMargin: 10


    Row {
        id: flow1
        x: 39
        y: 16
        width: 612
        height: 29
        anchors.horizontalCenterOffset: 7
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
            width: 65
            height: 30
            placeholderText: qsTr("512")
            horizontalAlignment: Text.AlignHCenter
            text:"512"

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
            width: 65
            height: 30
            placeholderText: qsTr("512")
            horizontalAlignment: Text.AlignHCenter
            text:"512"

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
            width: 35
            height: 30
            model: ListModel {
                id: error_correct_level_items
                ListElement { text: "L"; }
                ListElement { text: "M"; }
                ListElement { text: "Q"; }
                ListElement { text: "H"; }
            }
        }

        Text {
            id: text4
            width: 95
            height: 30
            text: qsTr("output encoding:")
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignRight
            font.pixelSize: 12
        }

        ComboBox {
            id: comboBox_output_encoding
            width: 127
            height: 30
            model: ListModel {
                id: output_encoding_items
                ListElement { text: "UTF-8 [Default]"; }
                ListElement { text: "Shift_JIS"; }
                ListElement { text: "ISO-8859-1"; }
            }
        }


    }

    Button {
        id: button_generate
        x: 360
        y: 355
        width: 180
        height: 35
        text: qsTr("Generator")



        onClicked: {
            pwait.visible = true
            if(comboBox_Simpletype.currentIndex == 0){
                result_view.url = "http://chart.apis.google.com/chart?cht=qr&chs=" +
                        textFielWidth.text + "x" + textFieldHeight.text+ "&chl=" + textArea_content.text;
            } else if(comboBox_Simpletype.currentIndex == 1){
                result_view.url = "http://chart.apis.google.com/chart?cht=qr&chs=" +
                        textFielWidth.text + "x" + textFieldHeight.text+ "&chl=mailto:" + textField_mail_address.text + "?subject=" + textField_mail_subject.text;
            } else if(comboBox_Simpletype.currentIndex == 2){
                if(radioButton_dial.checked == true) {

                    result_view.url = "http://chart.apis.google.com/chart?cht=qr&chs=" +
                            textFielWidth.text + "x" + textFieldHeight.text+ "&chl=tel:" + textField_phone_no.text;

                }else if(radioButton_dial.checked == false) {

                    result_view.url = "http://chart.apis.google.com/chart?cht=qr&chs=" +
                            textFielWidth.text + "x" + textFieldHeight.text+ "&chl=sms:" + textField_phone_no.text + "?body=" + textArea_phone_content.text;
                }
            } else if(comboBox_Simpletype.currentIndex == 3){
                result_view.url = "http://chart.apis.google.com/chart?cht=qr&chs=" +
                        textFielWidth.text + "x" + textFieldHeight.text+ "&chl=" + textField_weburl.text
            } else if(comboBox_Simpletype.currentIndex == 4){
                if(comboBoxSocial.currentIndex == 0)  {
                    result_view.url = "http://chart.apis.google.com/chart?cht=qr&chs=" +
                            textFielWidth.text + "x" + textFieldHeight.text+ "&chl=" + "facebook.com/" + textField_sweburl.text
                } else if(comboBoxSocial.currentIndex == 1)  {
                    result_view.url = "http://chart.apis.google.com/chart?cht=qr&chs=" +
                            textFielWidth.text + "x" + textFieldHeight.text+ "&chl=" + "linkedin.com/pub/" + textField_sweburl.text
                } else if(comboBoxSocial.currentIndex == 2)  {
                    result_view.url = "http://chart.apis.google.com/chart?cht=qr&chs=" +
                            textFielWidth.text + "x" + textFieldHeight.text+ "&chl=" + "instagram.com/" + textField_sweburl.text
                } else if(comboBoxSocial.currentIndex == 3)  {
                    result_view.url = "http://chart.apis.google.com/chart?cht=qr&chs=" +
                            textFielWidth.text + "x" + textFieldHeight.text+ "&chl=" + "twitter.com/" + textField_sweburl.text
                }



            }


            largresult.visible = true
            largresult.opacity = 1


        }
    }

    GroupBox {
        id: groupBox3
        y: 51
        height: 112
        anchors.left: parent.left
        anchors.leftMargin: 8
        anchors.right: parent.right
        anchors.rightMargin: 8
        title: qsTr("Input")



        Flow {
            id: flow3
            y: 5
            height: 91
            layoutDirection: Qt.LeftToRight
            anchors.left: parent.left
            anchors.leftMargin: 0
            anchors.right: parent.right
            anchors.rightMargin: 0
            spacing: 10


            Flow {
                id: flow2
                layoutDirection: Qt.LeftToRight
                anchors.fill: parent
                spacing: 10

                Text {
                    id: text3
                    height: 30
                    text: qsTr("Input type:")
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignRight
                    font.pixelSize: 12
                }

                ComboBox {
                    id: comboBox_Simpletype
                    width: 200
                    height: 30
                    model: ListModel {
                        id: send_type
                        ListElement { text: "Content"; }
                        ListElement { text: "Mail"; }
                        ListElement { text: "Phone"; }
                        ListElement { text: "Website"; }
                        ListElement { text: "Social Links"; }
                    }

                    onCurrentIndexChanged: {
                        if(comboBox_Simpletype.currentIndex == 0) {
                            flow_simple_content.visible = true
                            flow_phone.visible = false
                            flow_simpleMail.visible = false
                            flow_website.visible = false
                            flow_social.visible = false


                        } else if(comboBox_Simpletype.currentIndex == 1) {
                            flow_simple_content.visible = false
                            flow_phone.visible = false
                            flow_simpleMail.visible = true
                            flow_website.visible = false
                            flow_social.visible = false


                        } else if(comboBox_Simpletype.currentIndex == 2) {
                            flow_simple_content.visible = false
                            flow_phone.visible = true
                            flow_simpleMail.visible = false
                            flow_website.visible = false
                            flow_social.visible = false

                        } else if(comboBox_Simpletype.currentIndex == 3) {
                            flow_simple_content.visible = false
                            flow_phone.visible = false
                            flow_simpleMail.visible = false
                            flow_website.visible = true
                            flow_social.visible = false


                        } else if(comboBox_Simpletype.currentIndex == 4) {
                            flow_simple_content.visible = false
                            flow_phone.visible = false
                            flow_simpleMail.visible = false
                            flow_website.visible = false
                            flow_social.visible = true


                        }
                    }
                }


            }

            Loader {
                id:input_loader
                anchors.fill: parent
                //source: "qrc:/SimpleContent.qml"
                Rectangle {
                    id: rectangle1
                    y: 0
                    height: 122
                    color: "#00000000"
                    anchors.left: parent.left
                    anchors.leftMargin: 277
                    anchors.right: parent.right
                    anchors.rightMargin: 0
                    Flow {
                        id: flow_simple_content
                        y: 0
                        height: 83
                        anchors.right: parent.right
                        anchors.rightMargin: 0
                        anchors.left: parent.left
                        anchors.leftMargin: 18
                        anchors.topMargin: 0
                        anchors.bottomMargin: 0
                        anchors.bottom: parent.bottom
                        anchors.top: parent.top
                        spacing: 5
                        visible: true

                        Text {
                            id: text_content
                            height: 30
                            text: qsTr("Content:")
                            font.pixelSize: 12
                            verticalAlignment: Text.AlignVCenter
                            horizontalAlignment: Text.AlignRight
                        }

                        TextArea {
                            id: textArea_content
                            width: 400
                            height: 65
                        }










                    }
                    Flow {
                        id: flow_simpleMail
                        x: 0
                        y: 0
                        width: 306
                        height: 83
                        anchors.leftMargin: 18
                        anchors.topMargin: 0
                        anchors.bottomMargin: 0
                        anchors.left: parent.left
                        anchors.bottom: parent.bottom
                        anchors.top: parent.top
                        spacing: 5
                        visible: false

                        Text {
                            id: text_address
                            height: 30
                            text: qsTr("Address:")
                            horizontalAlignment: Text.AlignRight
                            verticalAlignment: Text.AlignVCenter
                            font.pixelSize: 12
                        }

                        TextField {
                            id: textField_mail_address
                            width: 100
                            height: 30
                            placeholderText: qsTr("Yourmail@domain.com")
                            horizontalAlignment: Text.AlignHCenter

                        }

                        Text {
                            id: text_l_mail_subject
                            height: 30
                            text: qsTr("Subject:")
                            font.pixelSize: 12
                            verticalAlignment: Text.AlignVCenter
                            horizontalAlignment: Text.AlignRight
                        }

                        TextField {
                            id: textField_mail_subject
                            width: 100
                            height: 30
                            placeholderText: qsTr("Enter mail title")
                            horizontalAlignment: Text.AlignHCenter

                        }

                        //                    Text {
                        //                        id: text_l_mail_content
                        //                        height: 30
                        //                        text: qsTr("Content:")
                        //                        font.pixelSize: 12
                        //                        verticalAlignment: Text.AlignVCenter
                        //                        horizontalAlignment: Text.AlignRight
                        //                    }

                        //                    TextArea {
                        //                        id: textArea_mail_content
                        //                        width: 312
                        //                        height: 33
                        //                    }










                    }
                    Flow {
                        id: flow_phone
                        x: 0
                        y: 0
                        width: 343
                        height: 83
                        anchors.leftMargin: 18
                        anchors.topMargin: 0
                        anchors.bottomMargin: 7
                        anchors.left: parent.left
                        anchors.bottom: parent.bottom
                        anchors.top: parent.top
                        spacing: 5
                        visible: false

                        Text {
                            id: text_l_phone_no
                            height: 30
                            text: qsTr("Number:")
                            horizontalAlignment: Text.AlignRight
                            verticalAlignment: Text.AlignVCenter
                            font.pixelSize: 12
                        }

                        TextField {
                            id: textField_phone_no
                            height: 30
                            placeholderText: qsTr("09140000000")
                            horizontalAlignment: Text.AlignHCenter

                        }

                        RadioButton {
                            id: radioButton_dial
                            height: 30
                            text: qsTr("Dial")
                            checked: true
                            onClicked: {
                                radioButton_sms.checked = false
                                radioButton_dial.checked = true
                                textArea_phone_content.enabled = false

                            }
                        }

                        RadioButton {
                            id: radioButton_sms
                            height: 30
                            text: qsTr("Send message (SMS)")
                            onClicked: {
                                radioButton_dial.checked = false;
                                radioButton_sms.checked = true
                                textArea_phone_content.enabled = true

                            }
                        }

                        Text {
                            id: text_phone_l_content
                            height: 30
                            text: qsTr("Content:")
                            font.pixelSize: 12
                            verticalAlignment: Text.AlignVCenter
                            horizontalAlignment: Text.AlignRight
                        }

                        TextArea {
                            id: textArea_phone_content
                            width: 200
                            height: 33
                            enabled: false
                        }













                    }
                    Flow {
                        id: flow_website
                        x: 0
                        y: 0
                        width: 343
                        height: 83
                        anchors.leftMargin: 18
                        anchors.topMargin: 0
                        anchors.bottomMargin: 51
                        anchors.left: parent.left
                        anchors.bottom: parent.bottom
                        anchors.top: parent.top
                        spacing: 5
                        visible: false

                        Text {
                            id: text_url
                            height: 30
                            text: qsTr("URL / Link:")
                            horizontalAlignment: Text.AlignRight
                            verticalAlignment: Text.AlignVCenter
                            font.pixelSize: 12
                        }

                        TextField {
                            id: textField_weburl
                            width: 200
                            height: 30
                            placeholderText: qsTr("http://www.nanosoftco.com")
                            horizontalAlignment: Text.AlignHCenter

                        }










                    }

                    Flow {
                        id: flow_social
                        x: 0
                        y: 0
                        width: 343
                        height: 83
                        anchors.leftMargin: 18
                        anchors.topMargin: 0
                        anchors.bottomMargin: 51
                        anchors.left: parent.left
                        anchors.bottom: parent.bottom
                        anchors.top: parent.top
                        spacing: 5
                        visible: false

                        Text {
                            id: text_surl
                            height: 30
                            text: qsTr("Your Social ID")
                            horizontalAlignment: Text.AlignRight
                            verticalAlignment: Text.AlignVCenter
                            font.pixelSize: 12
                        }

                        ComboBox {
                            id : comboBoxSocial
                            width: 120
                            height: 30


                            model : ListModel {
                                id: cbItems
                                ListElement { text: "Facebook"; imageHeight: 24; imageSource: "qrc:/social/icon/fb.png"  }
                                ListElement { text: "Linkedin"; imageHeight: 24; imageSource: "qrc:/social/icon/in.png"  }
                                ListElement { text: "Instagram"; imageHeight: 24; imageSource: "qrc:/social/icon/ins.png"  }
                                ListElement { text: "Twitter"; imageHeight: 24; imageSource: "qrc:/social/icon/tw.png"  }
                                ListElement { text: "Pinterest"; imageHeight: 24; imageSource: "qrc:/social/icon/pt.png"  }
                                ListElement { text: "Tumblr"; imageHeight: 24; imageSource: "qrc:/social/icon/tr.png"  }
                            }
                            Image {
                                anchors.leftMargin: 65
                                anchors.topMargin: 0

                                id: img
                                x: 229
                                y: 0
                                width: 32
                                height: 32
                                fillMode: Image.PreserveAspectFit
                                source: "qrc:/social/icon/fb.png"

                                Component.onCompleted: {
                                    comboBoxSocial.currentIndexChanged.connect(changeImage)
                                }

                                function changeImage() {
                                    img.source = cbItems.get(comboBoxSocial.currentIndex).imageSource;
                                    img.height = cbItems.get(comboBoxSocial.currentIndex).imageHeight;
                                }
                            }

                        }

                        TextField {
                            id: textField_sweburl
                            width: 100
                            height: 30
                            placeholderText: qsTr("Your social id")
                            horizontalAlignment: Text.AlignHCenter

                        }











                    }

                }

            }

        }

        Image {
            id: image1
            x: 105
            y: 96
            width: 498
            height: 167
            sourceSize.height: 302
            anchors.horizontalCenter: parent.horizontalCenter
            fillMode: Image.PreserveAspectFit
            source: "qrc:/social/icon/illustration-work-together.png"
        }


    }

    GroupBox {
        id: groupBox2
        x: 9
        opacity: 0
        visible: false
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 8
        anchors.top: groupBox1.bottom
        anchors.topMargin: -270
        anchors.left: parent.left
        anchors.leftMargin: 8
        anchors.right: parent.right
        title: qsTr("Result")
        anchors.rightMargin: 8


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
        anchors.centerIn: recSimple
        anchors.fill: recSimple
        visible: false
        opacity: 0

        WebEngineView{
            id: result_view
            anchors.fill: parent
            enabled: false
            antialiasing: true

            onLoadProgressChanged: {

                if(result_view.loadProgress === 100) {
                    pwait.visible = false
                }



            }

        }

        Text {
            id: pwait
            text: qsTr("Please wait...")
            visible: true
            anchors.fill: parent
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter

        }

        Rectangle {
            id: button_close
            y: 197
            width: 39
            height: 38
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
            id: button_print2
            x: 883
            y: 66
            width: 41
            height: 34
            text: qsTr("Print")
            onClicked: {

                var stat = result_view.grabToImage(function(result) {
                    //result.saveToFile("/home/user/someimage.png"); //saves to a file
                    ACTION.print(result.image); //result.image holds the QVariant
                });
                //console.log("Success: ", stat);

            }
        }



        Behavior on opacity{ NumberAnimation {} }

    }



}

