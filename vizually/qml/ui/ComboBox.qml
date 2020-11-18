import QtQuick 2.0
import QtQuick.Controls 2.15

ComboBox {
    x: 0; y: 0
    id: combobox
    property string key: "apply"
    onVisibleChanged: {
        currentIndex = 0;
        if (visible) {
            parent.parent.update(key, cbItems.get(currentIndex).value)
        } else {
            parent.parent.args[key] = cbItems.get(currentIndex).value
        }
    }
	onCurrentIndexChanged: {
        parent.parent.update(key, cbItems.get(currentIndex).value)	
	}
}