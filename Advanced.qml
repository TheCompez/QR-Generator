import QtQuick 2.0
import QtQuick.Controls 1.3
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
        height: 410
        anchors.top: parent.top
        anchors.topMargin: -5
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.right: parent.right
        anchors.rightMargin: 0
        title: qsTr("Input")



        Flow {
            id: flow3
            x: 42
            y: 6
            width: 880
            height: 141
            anchors.horizontalCenterOffset: 0
            anchors.horizontalCenter: parent.horizontalCenter
            spacing: 5


            Text {
                id: label_fullname
                height: 30
                text: qsTr("First name:")
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignRight
                font.pixelSize: 12
            }

            TextField {
                id: textFieldFirstname
                width: 150
                height: 30
                placeholderText: qsTr("")
                horizontalAlignment: Text.AlignHCenter

            }

            Text {
                id: label_lastname
                width: 60
                height: 30
                text: qsTr("Last name:")
                horizontalAlignment: Text.AlignRight
                font.pixelSize: 12
                verticalAlignment: Text.AlignVCenter
            }

            TextField {
                id: textFieldLastname
                width: 150
                height: 30
                horizontalAlignment: Text.AlignHCenter
                placeholderText: qsTr("")
            }


            Text {
                id: label_company
                width: 60
                height: 30
                text: qsTr("Company:")
                horizontalAlignment: Text.AlignRight
                font.pixelSize: 12
                verticalAlignment: Text.AlignVCenter
            }

            TextField {
                id: textFieldCompany
                width: 150
                height: 30
                placeholderText: qsTr("Nanosoft")
                horizontalAlignment: Text.AlignHCenter

            }

            Text {
                id: label_jobtitle
                x: 414
                width: 60
                height: 30
                text: qsTr("Job title:")
                horizontalAlignment: Text.AlignRight
                verticalAlignment: Text.AlignVCenter
                font.pixelSize: 12
            }

            TextField {
                id: textFieldJobtitle
                x: 474
                width: 150
                height: 30
                placeholderText: qsTr("")
                horizontalAlignment: Text.AlignHCenter

            }

            Text {
                id: label_web
                width: 60
                height: 30
                text: qsTr("Web:")
                horizontalAlignment: Text.AlignRight
                verticalAlignment: Text.AlignVCenter
                font.pixelSize: 12
            }

            TextField {
                id: textFieldWeb
                width: 150
                height: 30
                placeholderText: qsTr("Enter url without http://")
                horizontalAlignment: Text.AlignHCenter

            }

            Text {
                id: label_email
                width: 60
                height: 30
                text: qsTr("E-Mail:")
                horizontalAlignment: Text.AlignRight
                font.pixelSize: 12
                verticalAlignment: Text.AlignVCenter
            }

            TextField {
                id: textFieldEmail
                width: 150
                height: 30
                placeholderText: qsTr("Yourmail@domain.com")
                horizontalAlignment: Text.AlignHCenter

            }

            Text {
                id: label_email1
                width: 60
                height: 30
                text: qsTr("E-Mail2:")
                horizontalAlignment: Text.AlignRight
                font.pixelSize: 12
                verticalAlignment: Text.AlignVCenter
            }

            TextField {
                id: textFieldEmail1
                width: 150
                height: 30
                horizontalAlignment: Text.AlignHCenter
                placeholderText: qsTr("Yourmail@domain.com")
            }


            Text {
                id: label_mobile
                width: 60
                height: 30
                text: qsTr("Mobile:")
                horizontalAlignment: Text.AlignRight
                font.pixelSize: 12
                verticalAlignment: Text.AlignVCenter
            }

            TextField {
                id: textFieldMobile
                width: 150
                height: 30
                placeholderText: qsTr("09140000000")
                horizontalAlignment: Text.AlignHCenter

            }

            Text {
                id: label_fax
                width: 60
                height: 30
                text: qsTr("Fax:")
                horizontalAlignment: Text.AlignRight
                font.pixelSize: 12
                verticalAlignment: Text.AlignVCenter
            }

            TextField {
                id: textFieldFax
                width: 150
                height: 30
                placeholderText: qsTr("")
                horizontalAlignment: Text.AlignHCenter

            }

            Text {
                id: label_tel
                width: 60
                height: 30
                text: qsTr("Tel:")
                horizontalAlignment: Text.AlignRight
                verticalAlignment: Text.AlignVCenter
                font.pixelSize: 12
            }

            TextField {
                id: textFieldTel
                width: 150
                height: 30
                placeholderText: qsTr("")
                horizontalAlignment: Text.AlignHCenter

            }

            Loader {
                id:input_loader
                //source: "qrc:/SimpleContent.qml"

            }

            Text {
                id: label_tel4
                width: 60
                height: 30
                text: qsTr("City:")
                horizontalAlignment: Text.AlignRight
                font.pixelSize: 12
                verticalAlignment: Text.AlignVCenter
            }

            TextField {
                id: textFieldCity
                width: 150
                height: 30
                horizontalAlignment: Text.AlignHCenter
                placeholderText: qsTr("")
            }




            Text {
                id: label_mobile1
                width: 60
                height: 30
                text: qsTr("Street:")
                horizontalAlignment: Text.AlignRight
                font.pixelSize: 12
                verticalAlignment: Text.AlignVCenter
            }

            TextField {
                id: textFieldStreet
                width: 150
                height: 30
                horizontalAlignment: Text.AlignHCenter
                placeholderText: qsTr("")
            }

            Text {
                id: label_fax1
                width: 60
                height: 30
                text: qsTr("Zip code:")
                horizontalAlignment: Text.AlignRight
                font.pixelSize: 12
                verticalAlignment: Text.AlignVCenter
            }

            TextField {
                id: textFieldZipCode
                width: 150
                height: 30
                horizontalAlignment: Text.AlignHCenter
                placeholderText: qsTr("")
            }

            Text {
                id: label_tel3
                width: 60
                height: 30
                text: qsTr("Country:")
                horizontalAlignment: Text.AlignRight
                font.pixelSize: 12
                verticalAlignment: Text.AlignVCenter
            }

            TextField {
                id: textFieldCountry
                width: 150
                height: 30
                horizontalAlignment: Text.AlignHCenter
                placeholderText: qsTr("")

            }

















































            Text {
                id: label_note
                width: 60
                height: 30
                text: qsTr("Note:")
                horizontalAlignment: Text.AlignRight
                verticalAlignment: Text.AlignVCenter
                font.pixelSize: 12
            }
            TextArea {
                id: textFieldNote
                width: 370
                height: 40
                horizontalAlignment: Text.AlignHCenter
            }
        }

        Button {
            id: button_generate
            x: 337
            y: 342
            width: 180
            height: 35
            text: qsTr("Generator")
            anchors.horizontalCenterOffset: -2
            anchors.horizontalCenter: parent.horizontalCenter


            //


            onClicked: {


                pwait.visible = true

                //GOOGLE APIS

                //                    result_view_larg.url = "http://chart.apis.google.com/chart?cht=qr&chs=" +
                //                            textFielWidth.text + "x" + textFieldHeight.text +
                //                            "&chl=BEGIN:VCARD\r\nVERSION:3.0\r\n
                //                N:" + textFieldFullname.text + "
                //                TEL;CELL:" + textFieldTel.text + "
                //                TEL;WORK:" + textFieldMobile.text +"
                //                TEL;WORK;FAX:" + textFieldFax.text +"
                //                ADR;WORK:;;" + textFieldStreet.text + ";" + textFieldState.text + ";" + textFieldZipCode.text + ";" + textFieldCountry.text + "
                //                ORG:"+textFieldCompany.text+";"+textFieldJobtitle.text+"
                //                TITLE:vCard Information
                //                EMAIL:" + textFieldEmail.text + "
                //                URL:" + textFieldWeb.text +  "
                //                EMAIL;IM:" + textFieldIM.text + "
                //                NOTE:" + textFieldNote.text + "
                //                BDAY:" + textFieldBirthday.text + "
                //                END:VCARD";

                // QORQR.ME APIS

                var surl_fb = "facebook.com/";
                var surl_gp = "plus.google.com/";
                var surl_tw = "twitter.com/";
                var surl_in = "linkedin.com/pub/";
                var surl_insta = "instagram.com/";
                var surl_tr = "tumblr.com/";
                var surl_pr = "pinterest.com/";

                result_view_larg.url = "http://api.qrserver.com/v1/create-qr-code/?color=000000&bgcolor=FFFFFF&data=BEGIN%3AVCARD%0AVERSION%3A3.0%0AFN%3A"
                        + textFieldFirstname.text +
                        "+" + textFieldLastname.text +
                        "%0AN%3A" + textFieldLastname.text + "%3B" +
                        textFieldFirstname.text + "%0ATEL%3BCELL%3A" +
                        textFieldMobile.text + "%0ATEL%3BHOME%3BVOICE%3A" +
                        textFieldTel.text + "%0ANOTE:" + textFieldNote.text +
                        "%0AEMAIL%3BHOME%3BINTERNET%3A" + textFieldEmail.text +
                        "%0AEMAIL%3BWORK%3BINTERNET%3A" + textFieldEmail1.text +
                        "%0AURL%3Ahttp%3A%2F%2F" + textFieldWeb.text +
                        "%0AX-AIM;WORK;pref:" + textField_aim.text +
                        "%0AX-JABBER;HOME;pref:" + textField_jabber.text +
                        "%0AX-MSN;WORK;pref:" + textField_msn.text +
                        "%0AX-YAHOO;WORK;pref:" + textField_yahoo.text +
                        "%0AX-ICQ;HOME;pref:" + textField_icq.text +
                        "%0AX-GTALK;WORK;pref:" + textField_gtalk.text +
                        "%0AX-SKYPE;WORK;pref:" + textField_skype.text +
                        "%0AX-SOCIALPROFILE;type=linkedin:http://www.linkedin.com/in/" + textField_in.text +
                        "%0AX-SOCIALPROFILE;type=facebook:http://facebook.com//" + textField_fb.text +
                        "%0AX-SOCIALPROFILE;type=twitter:http://twitter.com/" + textField_tw.text +
                        "%0AURL%3Ahttp%3A%2F%2F" + "plus.google.com/" + textField_gp.text +
                        "%0AURL%3Ahttp%3A%2F%2F" + "instagram.com/" + textField_insta.text +
                        "%0AURL%3Ahttp%3A%2F%2F" + "youtube.com/" + textField_yt.text +
                        "%0AURL%3Ahttp%3A%2F%2F" + "flickr.com/photos/" + textField_flickr.text +

                        "%0AADR%3A%3B%3B" + textFieldStreet.text + "%3B" +
                        textFieldCity.text + "%3B%3B" + textFieldZipCode.text +
                        "%3B" + textFieldCountry.text + "%0AORG%3A" + textFieldCompany.text +
                        "%0ATITLE:"+ textFieldJobtitle.text +
                        "%0AEND%3AVCARD%0A&qzone=0&margin=0&size=" +
                        textFielWidth.text + "x" + textFieldHeight.text +
                        "&ecc=" + comboBox_error_correct_level.currentText + ""


                largresult.visible = true
                largresult.opacity = 1


            }
        }

        GroupBox {
            id: groupBox1
            y: 153
            height: 181
            anchors.left: parent.left
            anchors.leftMargin: 0
            anchors.right: parent.right
            anchors.rightMargin: 0
            title: qsTr("Social and IM account (Enter your account only) without url")

            TextField {
                id: textField_fb
                x: 100
                y: 9
                width: 110
                height: 30
                placeholderText: qsTr("")
                horizontalAlignment: Text.AlignHCenter

            }

            Image {
                anchors.leftMargin: 65
                anchors.topMargin: 0

                id: img
                x: 66
                y: 12
                width: 24
                height: 24
                fillMode: Image.PreserveAspectFit
                source: "qrc:/social/icon/fb.png"


            }

            Text {
                id: text_surl
                x: 7
                y: 9
                height: 30
                text: qsTr("Facebook:")
                horizontalAlignment: Text.AlignRight
                verticalAlignment: Text.AlignVCenter
                font.pixelSize: 12
            }

            Text {
                id: text_surl1
                x: 216
                y: 11
                width: 50
                height: 30
                text: qsTr("Twitter:")
                verticalAlignment: Text.AlignVCenter
                font.pixelSize: 12
                horizontalAlignment: Text.AlignRight
            }

            Image {
                id: img1
                x: 272
                y: 12
                width: 24
                height: 24
                anchors.leftMargin: 65
                fillMode: Image.PreserveAspectFit
                anchors.topMargin: 0
                source: "qrc:/social/icon/tw.png"
            }

            TextField {
                id: textField_tw
                x: 306
                y: 9
                width: 110
                height: 30
                placeholderText: qsTr("")
                horizontalAlignment: Text.AlignHCenter
            }

            Text {
                id: text_surl4
                x: 423
                y: 10
                width: 65
                height: 30
                text: qsTr("Linkedin:")
                verticalAlignment: Text.AlignVCenter
                font.pixelSize: 12
                horizontalAlignment: Text.AlignRight
            }

            Image {
                id: img4
                x: 494
                y: 11
                width: 24
                height: 24
                anchors.leftMargin: 65
                fillMode: Image.PreserveAspectFit
                anchors.topMargin: 0
                source: "qrc:/social/icon/in.png"
            }

            TextField {
                id: textField_in
                x: 525
                y: 8
                width: 110
                height: 30
                placeholderText: qsTr("")
                horizontalAlignment: Text.AlignHCenter
            }



            Text {
                id: text_surl2
                x: 7
                y: 47
                width: 54
                height: 30
                text: qsTr("YouTube:")
                verticalAlignment: Text.AlignVCenter
                font.pixelSize: 12
                horizontalAlignment: Text.AlignRight
            }

            Image {
                id: img2
                x: 66
                y: 50
                width: 24
                height: 24
                anchors.leftMargin: 65
                fillMode: Image.PreserveAspectFit
                anchors.topMargin: 0
                source: "qrc:/social/icon/yt.png"
            }

            TextField {
                id: textField_yt
                x: 100
                y: 47
                width: 110
                height: 30
                placeholderText: qsTr("")
                horizontalAlignment: Text.AlignHCenter
            }

            Text {
                id: text_surl3
                x: 216
                y: 47
                height: 30
                text: qsTr("Google+:")
                verticalAlignment: Text.AlignVCenter
                font.pixelSize: 12
                horizontalAlignment: Text.AlignRight
            }

            Image {
                id: img3
                x: 272
                y: 50
                width: 24
                height: 24
                anchors.leftMargin: 65
                fillMode: Image.PreserveAspectFit
                anchors.topMargin: 0
                source: "qrc:/social/icon/gp.png"
            }

            TextField {
                id: textField_gp
                x: 306
                y: 47
                width: 110
                height: 30
                placeholderText: qsTr("")
                horizontalAlignment: Text.AlignHCenter
            }




            Text {
                id: text_surl5
                x: 423
                y: 46
                width: 65
                height: 30
                text: qsTr("Instagram:")
                verticalAlignment: Text.AlignVCenter
                font.pixelSize: 12
                horizontalAlignment: Text.AlignRight
            }

            Image {
                id: img5
                x: 494
                y: 49
                width: 24
                height: 24
                anchors.leftMargin: 65
                fillMode: Image.PreserveAspectFit
                anchors.topMargin: 0
                source: "qrc:/social/icon/ins.png"
            }

            TextField {
                id: textField_insta
                x: 525
                y: 46
                width: 110
                height: 30
                placeholderText: qsTr("")
                horizontalAlignment: Text.AlignHCenter
            }

            Text {
                id: text_surl8
                x: 641
                y: 8
                width: 65
                height: 30
                text: qsTr("Flickr:")
                font.pixelSize: 12
                horizontalAlignment: Text.AlignRight
                verticalAlignment: Text.AlignVCenter
            }

            Image {
                id: img8
                x: 712
                y: 11
                width: 24
                height: 24
                source: "qrc:/social/icon/fr.png"
                anchors.leftMargin: 65
                fillMode: Image.PreserveAspectFit
                anchors.topMargin: 0
            }

            TextField {
                id: textField_flickr
                x: 743
                y: 8
                width: 110
                height: 30
                horizontalAlignment: Text.AlignHCenter
                placeholderText: qsTr("")
            }

            Text {
                id: text_surl9
                x: 213
                y: 85
                width: 54
                height: 30
                text: qsTr("ICQ:")
                font.pixelSize: 12
                horizontalAlignment: Text.AlignRight
                verticalAlignment: Text.AlignVCenter
            }

            Image {
                id: img9
                x: 272
                y: 88
                width: 24
                height: 24
                source: "qrc:/social/icon/iq.png"
                anchors.leftMargin: 65
                fillMode: Image.PreserveAspectFit
                anchors.topMargin: 0
            }

            TextField {
                id: textField_icq
                x: 306
                y: 85
                width: 110
                height: 30
                horizontalAlignment: Text.AlignHCenter
                placeholderText: qsTr("")
            }

            Text {
                id: text_surl10
                x: 423
                y: 85
                width: 66
                height: 30
                text: qsTr("Skype:")
                font.pixelSize: 12
                horizontalAlignment: Text.AlignRight
                verticalAlignment: Text.AlignVCenter
            }

            Image {
                id: img10
                x: 494
                y: 88
                width: 24
                height: 24
                source: "qrc:/social/icon/sk.png"
                anchors.leftMargin: 65
                fillMode: Image.PreserveAspectFit
                anchors.topMargin: 0
            }

            TextField {
                id: textField_skype
                x: 525
                y: 85
                width: 110
                height: 30
                horizontalAlignment: Text.AlignHCenter
                placeholderText: qsTr("")
            }

            Text {
                id: text_surl11
                x: 641
                y: 46
                width: 66
                height: 30
                text: qsTr("Google Talk:")
                font.pixelSize: 12
                horizontalAlignment: Text.AlignRight
                verticalAlignment: Text.AlignVCenter
            }

            Image {
                id: img11
                x: 713
                y: 49
                width: 24
                height: 24
                source: "qrc:/social/icon/gtalk.png"
                anchors.leftMargin: 65
                fillMode: Image.PreserveAspectFit
                anchors.topMargin: 0
            }

            TextField {
                id: textField_gtalk
                x: 743
                y: 46
                width: 110
                height: 30
                horizontalAlignment: Text.AlignHCenter
                placeholderText: qsTr("")
            }

            Text {
                id: text_surl12
                x: 7
                y: 88
                width: 54
                height: 30
                text: qsTr("MSN:")
                font.pixelSize: 12
                horizontalAlignment: Text.AlignRight
                verticalAlignment: Text.AlignVCenter
            }

            Image {
                id: img12
                x: 66
                y: 91
                width: 24
                height: 24
                source: "qrc:/social/icon/msn.png"
                anchors.leftMargin: 65
                fillMode: Image.PreserveAspectFit
                anchors.topMargin: 0
            }

            TextField {
                id: textField_msn
                x: 100
                y: 88
                width: 110
                height: 30
                horizontalAlignment: Text.AlignHCenter
                placeholderText: qsTr("")
            }

            Text {
                id: text_surl13
                x: 7
                y: 124
                width: 54
                height: 30
                text: qsTr("Yahoo:")
                font.pixelSize: 12
                horizontalAlignment: Text.AlignRight
                verticalAlignment: Text.AlignVCenter
            }

            Image {
                id: img13
                x: 66
                y: 127
                width: 24
                height: 24
                source: "qrc:/social/icon/yo.png"
                anchors.leftMargin: 65
                fillMode: Image.PreserveAspectFit
                anchors.topMargin: 0
            }

            TextField {
                id: textField_yahoo
                x: 100
                y: 124
                width: 110
                height: 30
                horizontalAlignment: Text.AlignHCenter
                placeholderText: qsTr("")
            }

            Text {
                id: text_surl14
                x: 215
                y: 121
                width: 52
                height: 30
                text: qsTr("Jabber:")
                font.pixelSize: 12
                horizontalAlignment: Text.AlignRight
                verticalAlignment: Text.AlignVCenter
            }

            Image {
                id: img14
                x: 273
                y: 123
                width: 24
                height: 24
                source: "qrc:/social/icon/jb.png"
                anchors.leftMargin: 65
                fillMode: Image.PreserveAspectFit
                anchors.topMargin: 0
            }

            TextField {
                id: textField_jabber
                x: 306
                y: 121
                width: 110
                height: 30
                horizontalAlignment: Text.AlignHCenter
                placeholderText: qsTr("")
            }

            Text {
                id: text_surl15
                x: 423
                y: 124
                width: 66
                height: 30
                text: qsTr("AIM:")
                font.pixelSize: 12
                horizontalAlignment: Text.AlignRight
                verticalAlignment: Text.AlignVCenter
            }

            Image {
                id: img15
                x: 495
                y: 127
                width: 24
                height: 24
                source: "qrc:/social/icon/aim.png"
                anchors.leftMargin: 65
                fillMode: Image.PreserveAspectFit
                anchors.topMargin: 0
            }

            TextField {
                id: textField_aim
                x: 525
                y: 124
                width: 110
                height: 30
                horizontalAlignment: Text.AlignHCenter
                placeholderText: qsTr("")
            }


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
        opacity: 1


        WebEngineView{
            id: result_view_larg
            visible: true
            anchors.fill: parent
            enabled: false
            antialiasing: true

            onLoadProgressChanged: {

                if(result_view_larg.loadProgress === 100) {
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
            font.pixelSize: 16
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

