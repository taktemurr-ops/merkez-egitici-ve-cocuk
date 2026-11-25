import 'package:flutter/material.dart';
import 'package:studio_core/app/approved_hub.dart';

/// Onaylı tasarım (Oyun Merkezleri · Tasarım Örnekleri).
const approvedStyle = ApprovedHubStyle(
  background: [Color(0xFF2E86E0), Color(0xFF1E5CB8), Color(0xFF16397E)],
  accent: Color(0xFFFFD23A),
  card: Color(0xFF2A6FCC),
  play: Color(0xFF3CC24E),
  number: Color(0xFFFFE14A),
  blocks: [ApprovedBlock.featured, ApprovedBlock.dailyReward, ApprovedBlock.progress],
  featuredKey: 'featured',
  featured: ['oyun-alfabe-ogrenme', 'oyun-sayi-ogrenme', 'oyun-boyama-kitabi'],
);
