struct RecentNArray<T> {
    var array: [T] {
        return _array
    }
    private var _array: [T]
    let n: Int
    
    init(n: Int = 0) {
        self.n = n
        self._array = []
    }
    
    mutating func append(newElement: T) {
        if _array.count == n {
            _array.remove(at: 0)
        }
        
        _array.append(newElement)
    }
}
