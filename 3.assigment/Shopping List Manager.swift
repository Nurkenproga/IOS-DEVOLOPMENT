import Foundation

func displayMenu() {
    print("=== Shopping List Manager ===")
    print("1. Add item to the list")
    print("2. Remove item from the list")
    print("3. Display the list")
    print("4. Exit")
    print("============================")
    print("Please enter your choice (1-4):")
}

func addItemToList(list: inout [String]) {
    print("Enter the item to add:")
    if let item = readLine() {
        list.append(item)
        print("Item added successfully!")
    }
}

func removeItemFromList(list: inout [String]) {
    print("Enter the item to remove:")
    if let item = readLine(), let index = list.firstIndex(of: item) {
        list.remove(at: index)
        print("Item removed successfully!")
    } else {
        print("Item not found in the list.")
    }
}

func displayList(list: [String]) {
    if list.isEmpty {
        print("The list is empty.")
    } else {
        print("Current shopping list:")
        for (index, item) in list.enumerated() {
            print("\(index + 1). \(item)")
        }
    }
}

func main() {
    var shoppingList: [String] = []
    var choice = 0
    
    while choice != 4 {
        displayMenu()
        
        if let input = readLine(), let option = Int(input) {
            choice = option
            
            switch choice {
            case 1:
                addItemToList(list: &shoppingList)
            case 2:
                removeItemFromList(list: &shoppingList)
            case 3:
                displayList(list: shoppingList)
            case 4:
                print("Exiting the application...")
            default:
                print("Invalid choice. Please try again.")
            }
        } else {
            print("Invalid input. Please try again.")
        }
        
        print()
    }
}

main()