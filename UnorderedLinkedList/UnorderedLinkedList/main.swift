
import Foundation


let path="/Users/bridgelabz/Desktop/Nikita/UnorderedLinkedList/File"
var str:String=""
do{
    str = try String(contentsOfFile: path, encoding: String.Encoding(rawValue: String.Encoding.utf8.rawValue))
}
catch let error as NSError{
    print("OOPS something went wrong\(error)")
}
var s = str.split(separator:"\n")
var list = LinkedList()
for i in 0..<s.count
{
    list.Insert(value: String(s[i]) as String)
}
var count1 = s.count
list.printList()
print("Enter String to Search:")
var s1 = readLine()!
print("/n")
var n = 0
var t = list.searchNode(item: s1)
if (t < count1)
{
    list.deleteNode(at: t)
}
else
{
    list.Insert(value: String(s1))
   // print("ListContains:")
}
print("List contain:: ")
list.printList()
//for i in 0..<list.count()
//{
  //  list.printList()
//}

