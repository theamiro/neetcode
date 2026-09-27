typealias Count = Int
class Solution {
    func characterReplacement(_ s: String, _ k: Int) -> Int {
        let chars = Array(s.utf8)
        var counts = [Int](repeating: 0, count: 26)
        var left = 0
        var best = 0

        for right in chars.indices {
            counts[Int(chars[right] - 65)] += 1

            while (right - left + 1) - counts.max()! > k {
                counts[Int(chars[left] - 65)] -= 1
                left += 1
            }

            best = max(best, right - left + 1)
        }

        return best
    }
}
