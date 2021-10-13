#include <iostream>
#include "my_item.h"
#include "binary_tree_template.cpp"

using namespace std;

int main() {
    //TemplateTest<string> t("A");
    //cout << "Test: " << t.get() << endl;
    Node<int> n(1);
    Node<float> n2(1.3);
    n2.insert(1.1);
    n2.insert(1.2);
    n2.insert(1.4);
    MyItem m1(10,21,"a");
    MyItem m2(10,21,"b");
    Node<MyItem> myNode(m1);
    myNode.insert(m2);
    cout << "M1: " << m1 << endl;
    cout << "M2: " << m2 << endl;
    bool res = m1==m2;
    cout << "M1==M2: " << res << endl;
    cout << "MyNode: " << myNode.getValue() << endl;
    cout << "MyNodeRight: " << myNode.getRight()->getValue() << endl;
    cout << "MyNodeRight: " << myNode.getRight() << endl;
    myNode.remove(m2);
    cout << "MyNodeRight: " << myNode.getRight() << endl;
    /*cout << "Node: " << n.getValue() << endl;
    cout << "Node float: " << n2.getValue() << endl;
    cout << "Node 1.1: " << n2.getLeft()->getValue() << endl;
    cout << "Node 1.2: " << n2.getLeft()->getRight()->getValue() << endl;
    cout << "Node 1.4: " << n2.getRight()->getValue() << endl;*/
}
