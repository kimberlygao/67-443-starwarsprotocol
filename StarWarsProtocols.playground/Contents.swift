

//struct MasterYoda {
//  func lightSaberSkill() -> Int { return 8 }
//  func telekinesis() -> Int { return 9 }
//  func prescience() -> Int { return 5 }
//  func introspection() -> String { return "Search your feelings." }
//  func mindControl() -> String { return "Do or do not." }
//}
//
//struct MasterObiWan {
//  func lightSaberSkill() -> Int { return 8 }
//  func telekinesis() -> Int { return 5 }
//  func prescience() -> Int { return 5 }
//  func introspection() -> String { return "Search your feelings." }
//  func mindControl() -> String { return "These are not the droids you're looking for." }
//}
//
//struct MasterQuiGon {
//  func lightSaberSkill() -> Int { return 8 }
//  func telekinesis() -> Int { return 5 }
//  func prescience() -> Int { return 5 }
//  func mindControl() -> String { return "Republic credits will do." }
//  func introspection() -> String { return "Feel, don’t think. Trust your instincts." }
//}
//
//struct DarthVader {
//  func lightSaberSkill() -> Int { return 9 }
//  func telekinesis() -> Int { return 8 }
//  func prescience() -> Int { return 5 }
//  func forceChoke() -> Bool { return true }
//  func forceLightning() -> Bool { return false }
//}
//
//struct DarthSidious {
//  func lightSaberSkill() -> Int { return 8 }
//  func telekinesis() -> Int { return 7 }
//  func prescience() -> Int { return 6 }
//  func forceChoke() -> Bool { return true }
//  func forceLightning() -> Bool { return true }
//}
//
//struct DarthTyrannous {
//  func lightSaberSkill() -> Int { return 8 }
//  func telekinesis() -> Int { return 5 }
//  func prescience() -> Int { return 5 }
//  func forceChoke() -> Bool { return false }
//  func forceLightning() -> Bool { return true }
//}

/*:
 Place your refactored structs below:
 */

protocol JediPowers {
  func lightSaberSkill() -> Int
  func telekinses() -> Int
  func prescience() -> Int
}

extension JediPowers {
  func lightSaberSkill() -> Int { return 8 }
  func prescience() -> Int { return 5 }
}

protocol ForcePowers {
  func forceChoke() -> Bool
  func forceLightning() -> Bool
}

extension ForcePowers {
  func forceChoke() -> Bool {return true}
  func forceLightning() -> Bool {return true}
}

protocol MasterPowers {
  func introspection() -> String
  func mindControl() -> String
}

extension MasterPowers {
  func introspection() -> String { return "Search your feelings." }
}

struct MasterYoda : JediPowers {
  func telekinesis() -> Int { return 9 }
  func mindControl() -> String { return "Do or do not." }
}

struct MasterObiWan : JediPowers {
  func telekinesis() -> Int { return 5 }
  func mindControl() -> String { return "These are not the droids you're looking for." }
}

struct MasterQuiGon : JediPowers {
  func telekinesis() -> Int { return 5 }
  func mindControl() -> String { return "Republic credits will do." }
  func introspection() -> String { return "Feel, don’t think. Trust your instincts." }
}

struct DarthVader : JediPowers, ForcePowers {
  func lightSaberSkill() -> Int { return 9 }
  func telekinesis() -> Int { return 8 }
  func forceLightning() -> Bool { return false }
}

struct DarthSidious : JediPowers, ForcePowers {
  func telekinesis() -> Int { return 7 }
  func prescience() -> Int { return 6 }
}

struct DarthTyrannous : JediPowers, ForcePowers {
  func lightSaberSkill() -> Int { return 8 }
  func telekinesis() -> Int { return 5 }
  func forceChoke() -> Bool { return false }
}
