// Journal controller
import Vapor

final class JournalController {
    
    var entries : Array<Entry> = Array() // [1] обявляет масив
    
    //: Get total number of entries
    func total() -> Int { // [2] возращает количесво записей в масиве
        return entries.count
    }
    //: Create a new journal entry
    func create(_ entry: Entry) -> Entry? { // [3] добавляет элемент
        entries.append(entry)
        return entries.last
    }
    //: Read a journal entry
    func read(index: Int) -> Entry? { // [5]
        if let entry = entries.get(index: index) {
            return entry
        }
        return nil
    }
    //: Update the journal entry
    func update(index: Int, entry: Entry) -> Entry? { // [6]
        if let entry = entries.get(index: index) {
            entries[index] = entry
            return entry
        }
        return nil
    }
    //: Delete a journal entry
    func delete(index: Int) -> Entry? { // [7]
        if let _ = entries.get(index: index) {
            return entries.remove(at: index)
        }
        return nil
    }
    //: Read all journal entries
    func readAll() -> [Entry] {
        return entries
    }
}

extension Array {
    func get(index: Int) -> Element? { // [4]
        if index >= 0 && index < count {
            return self[index]
        }
        return nil
    }
}
