// actor {
//     stable var currentValue: Nat = 0;

//     public func increment(): async () {
//         currentValue += 1;
//     };

//     public query func getValue(): async Nat {
//         currentValue;
//     };
// };
import Time "mo:base/Time";
import Text "mo:base/Text";
import Array "mo:base/Array";

actor wall {

    public type message = {
        id : Nat;
        Name : Text;
        Message : Text;
        Like : Nat;
    };

    stable var messages : [message] = [];
    var lastId : Nat = 0;
    var idToFind : Nat = 0;


    func addmessage (id : Nat , Name: Text, Message : Text , Like : Nat) : [message] {
        let newmessage : message  = {
            id = id;
            Name = Name;
            Message = Message;
            Like = Like;
        };
        messages := Array.append<message>(messages, [newmessage]);
        return(messages)
    };

    let a = addmessage(0,"Seb","Hello", 0);
    lastId += 1;

    func findRight (message : message) : Bool {
        return (message.id == idToFind);
    };


    public func addNewMessage (Name:Text,Message:Text) : async [message] {
        let new =  addmessage(lastId, Name, Message, 0);
        lastId +=1;
        return(new);
    };


    public query func showMessages () : async [message] {
       return(messages);
    };

    public query func showOneMessage (id:Nat) :  async ?message {
        idToFind := id;
        return (Array.find<message>(messages, findRight));
    };

    // public query func showLikeOneMessage (id:Nat): async ?Nat {
    //     idToFind := id;
    //     let ?message = Array.find<message>(messages, findRight);
    //     return (?message.like)
    // };


    // public query func showLikeOneMessage (id:Nat) : async ?message {
    //     idToFind := id;
    //     if (Array.find<message>(messages, findRight) == null) {
    //         return (null);
    //     };
    //     let theMessage = Array.find<message>(messages, findRight);
    //     return (theMessage.like);
        
    // };

    // public func like (id: Nat) : async () {
    //     idToFind := id;
    //     theMessage := Array.find<message>(messages, findRight);
    //     theMessage.like += 1;
    //     return;
    // };



};

