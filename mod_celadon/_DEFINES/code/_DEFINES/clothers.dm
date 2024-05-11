// /obj/item/clothing
/// (/obj/item/clothing, visor_state) - When a clothing gets it's visor toggled.
#define COMSIG_CLOTHING_VISOR_TOGGLE "clothing_visor_toggle"

/// just before a datum's Destroy() is called: (force), at this point none of the other components chose to interrupt qdel and Destroy will be called
#define COMSIG_QDELETING "parent_qdeleting"
