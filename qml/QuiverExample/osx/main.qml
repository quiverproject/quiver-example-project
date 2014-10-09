import QtQuick 2.2
import QtQuick.Controls 1.1

import "../../../Quiver/config/27_inch_cinema_display.js" as Quiver

ApplicationWindow {
        property string sourceFileName: "MainUI.qml"
        property string menuFileName: "MainMenu.qml"

        visible: true
        width: Quiver.device.widthReal
        height: Quiver.device.heightReal
        title: Quiver.device.os
        menuBar: mainMenuLoader.item

        Connections {
                target: quiver
                onPendingConnectionRequestChanged: {
                        mainLoader.source = ""
                        mainLoader.source = sourceFileName
                        
                        //FIXME this is broken (Unable to assign MenuBar_QMLTYPE_20 to MenuBar_QMLTYPE_2)
                        //mainMenuLoader.source = ""
                        //mainMenuLoader.source = menuFileName
                }
        }

        Loader { id: mainLoader
                source: sourceFileName
                anchors.fill: parent
                focus: true
        }

        Loader { id: mainMenuLoader
                source: menuFileName
        }
}
