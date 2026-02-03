import 'dart:math';

class Point {
  final double x;
  final double y;
  Point(this.x, this.y);
}

class DartbotAI {
  final Random _rng = Random();

  /// Simulates a throw at a target [intendedX, intendedY] based on [skillLevel].
  /// [skillLevel] 0-100, where 100 is best. 
  /// Returns the actual coordinate hit.
  Point throwDart(double intendedX, double intendedY, int skillLevel) {
    // Map skill (0-100) to standard deviation (sigma) in mm.
    // Pro (Skill 100) -> Sigma ~10mm
    // Beginner (Skill 0) -> Sigma ~60mm
    
    double sigma = 60.0 - (skillLevel * 0.5); 
    if (sigma < 5.0) sigma = 5.0;

    // Box-Muller transform for Gaussian distribution
    double u1 = _rng.nextDouble();
    double u2 = _rng.nextDouble();
    
    if (u1 == 0) u1 = 0.0001; // Avoid log(0)

    double z0 = sqrt(-2.0 * log(u1)) * cos(2.0 * pi * u2);
    double z1 = sqrt(-2.0 * log(u1)) * sin(2.0 * pi * u2);

    return Point(intendedX + z0 * sigma, intendedY + z1 * sigma);
  }

  // Need a mapper from Point to (Score, Multiplier)
  // Standard dartboard Dimensions (radius in mm):
  // Double Bull: 6.35
  // Single Bull: 16.0
  // Inner Triple: 99.0 (approx mid)
  // Outer Triple: 107.0
  // Inner Double: 162.0
  // Outer Double: 170.0
  
  // Angles: 20 is at top (90 deg or -90 depending on coord system).
  // Each slice 18 deg.
}
