class CheckoutCalculator {
  // Static lookup table for finishes. 
  // Key: Remaining Score. Value: Recommended Path (String).
  // This avoids recursion overhead for the standard set.
  static const Map<int, String> _checkouts = {
    170: "T20 - T20 - BULL",
    167: "T20 - T19 - BULL",
    164: "T20 - T18 - BULL",
    161: "T20 - T17 - BULL",
    160: "T20 - T20 - D20",
    158: "T20 - T20 - D19",
    157: "T20 - T19 - D20",
    156: "T20 - T20 - D18",
    155: "T20 - T19 - D19",
    154: "T20 - T18 - D20",
    153: "T20 - T19 - D18",
    // ... Simplified list for Core MVP, can be expanded to full table
    121: "T20 - T11 - D14",
    120: "T20 - 20 - D20",
    100: "T20 - D20",
    60: "20 - D20",
    50: "10 - D20", // or BULL
    40: "D20",
    32: "D16",
    24: "D12",
    16: "D8",
    8: "D4",
    4: "D2",
    2: "D1",
  };

  static String? getSuggestion(int remainingScore) {
    if (remainingScore > 170) return null;
    if (_checkouts.containsKey(remainingScore)) {
      return _checkouts[remainingScore];
    }
    
    // Fallback algorithmic calculation for non-standard or low scores not in map
    if (remainingScore <= 40 && remainingScore % 2 == 0) {
      return "D${remainingScore ~/ 2}";
    }

    // Basic heuristic for common 2-dart outs
    if (remainingScore < 100) {
       // Example logic placeholder
       return "Aim for T20..."; 
    }

    return null;
  }
}
