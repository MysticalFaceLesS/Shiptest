/// Field of vision defines.
#define FOV_90_DEGREES 90
#define FOV_180_DEGREES 180
#define FOV_270_DEGREES 270

/// Base mask dimensions. They're like a client's view, only change them if you modify the mask to different dimensions.
#define BASE_FOV_MASK_X_DIMENSION 15
#define BASE_FOV_MASK_Y_DIMENSION 15

/// Range at which FOV effects treat nearsightness as blind and play
#define NEARSIGHTNESS_FOV_BLINDNESS 2

//Fullscreen overlay resolution in tiles for the clients view.
/// The fullscreen overlay in tiles for x axis
//#define FULLSCREEN_OVERLAY_RESOLUTION_X 15
/// The fullscreen overlay in tiles for y axis
//#define FULLSCREEN_OVERLAY_RESOLUTION_Y 15

#define FOV_EFFECT_LAYER 100
// Doesn't really layer, just throwing this in here cause it's the best place imo
#define FIELD_OF_VISION_BLOCKER_PLANE -45
#define FIELD_OF_VISION_BLOCKER_RENDER_TARGET "*FIELD_OF_VISION_BLOCKER_RENDER_TARGET"

/// Expands our FOV by 30 degrees if restricted
#define TRAIT_EXPANDED_FOV "expanded_fov"
/// Mob has fov applied to it
#define TRAIT_FOV_APPLIED "fov_applied"
/// Prevents the overlay from nearsighted
#define TRAIT_NEARSIGHTED_CORRECTED "fixes_nearsighted"

// /obj/item/clothing
/// (/obj/item/clothing, visor_state) - When a clothing gets it's visor toggled.
#define COMSIG_CLOTHING_VISOR_TOGGLE "clothing_visor_toggle"

/// just before a datum's Destroy() is called: (force), at this point none of the other components chose to interrupt qdel and Destroy will be called
#define COMSIG_QDELETING "parent_qdeleting"

///from base of mob/living/death(): (gibbed)
#define COMSIG_LIVING_DEATH "living_death"

/// From base of /client/proc/change_view() (mob/source, new_size)
#define COMSIG_MOB_CLIENT_CHANGE_VIEW "mob_client_change_view"
/// From base of /mob/proc/reset_perspective() : ()
#define COMSIG_MOB_RESET_PERSPECTIVE "mob_reset_perspective"
