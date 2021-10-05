#include <iostream>
using namespace std;

//struct BinTree{
    struct Node{
        struct Node* left;
        struct Node* right;
        int value;

        public:
            Node(int value){
                this->value = value;
                left = NULL;
                right = NULL;
            }

            void setLeft(Node* n){
                this->left = n;
            }

            void setRight(Node* n){
                this->right = n;
            }

            Node* getLeft(){
                return left;
            }

            Node* getRight(){
                return right;
            }

            void setValue(int v){
                this->value = v;
            }
            int getValue(){
                return this->value;
            }

            int insert(int v){
                if(v > value){
                    if(right == NULL){
                        right = new Node(v);
                    }else{
                        right->insert(v);
                    }
                }else if(v < value){
                    if(left == NULL){
                        left = new Node(v);
                    }else{
                        left->insert(v);
                    }
                }
            }

            bool exists(int v){
                bool exists = false;
                if(v > value){
                    if(right != NULL){
                        exists = right->exists(v);
                    }
                }else if(v < value){
                    if(left != NULL){
                        exists = left->exists(v);
                    }
                }else{
                    exists = true;
                }
                return exists;
            }
    };
//};


int main(){
    Node n1(1);
    n1.insert(2);
    n1.insert(5);
    n1.insert(3);
    cout << "Node1: " << n1.getValue() << endl;
    cout << "Node1 Right: " << n1.getRight()->getValue() << endl;
    cout << "Node1 Right: " << n1.getRight()->getRight()->getValue() << endl;
    cout << "Node1 Right: " << n1.getRight()->getRight()->getLeft()->getValue() << endl;
    cout << "Node1 Left: " << n1.getLeft() << endl;
    cout << "Existance check: " << n1.exists(5) << endl;
    return 0;
}