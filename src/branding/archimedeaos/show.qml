/* SPDX-License-Identifier: GPL-3.0-or-later */
import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    id: root
    width: 800
    height: 520

    function onActivate() { timer.start() }
    function onLeave()    { timer.stop()  }

    Rectangle {
        anchors.fill: parent
        color: "#0d1117"
    }

    Timer {
        id: timer
        interval: 5000
        running: false
        repeat: true
        onTriggered: slideView.incrementCurrentIndex()
    }

    SwipeView {
        id: slideView
        anchors.fill: parent
        interactive: false

        // -- Slide 1 --
        Item {
            Column {
                anchors.centerIn: parent
                spacing: 20

                Image {
                    source: "logo.png"
                    width: 120; height: 120
                    fillMode: Image.PreserveAspectFit
                    anchors.horizontalCenter: parent.horizontalCenter
                }
                Text {
                    text: "ArchimedeaOS"
                    color: "#ffffff"
                    font.pixelSize: 32
                    font.bold: true
                    anchors.horizontalCenter: parent.horizontalCenter
                }
                Text {
                    text: "Distribution Linux Purple Team"
                    color: "#8b949e"
                    font.pixelSize: 16
                    anchors.horizontalCenter: parent.horizontalCenter
                }
            }
        }

        // -- Slide 2 --
        Item {
            Column {
                anchors.centerIn: parent
                spacing: 16

                Text {
                    text: "Red Team"
                    color: "#f85149"
                    font.pixelSize: 28
                    font.bold: true
                    anchors.horizontalCenter: parent.horizontalCenter
                }
                Text {
                    text: "Pentest - Exploitation - Reconnaissance"
                    color: "#c9d1d9"
                    font.pixelSize: 15
                    anchors.horizontalCenter: parent.horizontalCenter
                }
                Text {
                    text: "nmap - metasploit - hashcat - hydra - aircrack-ng"
                    color: "#8b949e"
                    font.pixelSize: 13
                    anchors.horizontalCenter: parent.horizontalCenter
                }
            }
        }

        // -- Slide 3 --
        Item {
            Column {
                anchors.centerIn: parent
                spacing: 16

                Text {
                    text: "Blue Team"
                    color: "#1f6feb"
                    font.pixelSize: 28
                    font.bold: true
                    anchors.horizontalCenter: parent.horizontalCenter
                }
                Text {
                    text: "Detection - Forensics - Surveillance"
                    color: "#c9d1d9"
                    font.pixelSize: 15
                    anchors.horizontalCenter: parent.horizontalCenter
                }
                Text {
                    text: "wireshark - suricata - volatility3 - yara - clamav"
                    color: "#8b949e"
                    font.pixelSize: 13
                    anchors.horizontalCenter: parent.horizontalCenter
                }
            }
        }

        // -- Slide 4 --
        Item {
            Column {
                anchors.centerIn: parent
                spacing: 16

                Text {
                    text: "Purple Team"
                    color: "#8957e5"
                    font.pixelSize: 28
                    font.bold: true
                    anchors.horizontalCenter: parent.horizontalCenter
                }
                Text {
                    text: "Correlation attaque / defense"
                    color: "#c9d1d9"
                    font.pixelSize: 15
                    anchors.horizontalCenter: parent.horizontalCenter
                }
                Text {
                    text: "Tous les outils des deux equipes reunis"
                    color: "#8b949e"
                    font.pixelSize: 13
                    anchors.horizontalCenter: parent.horizontalCenter
                }
            }
        }
    }

    PageIndicator {
        count: slideView.count
        currentIndex: slideView.currentIndex
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottomMargin: 16
    }
}
