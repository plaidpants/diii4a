LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_CFLAGS := $(GLOBAL_CFLAGS) -DGAME_DLL
LOCAL_CPPFLAGS := -fexceptions -frtti -fno-format-security

LOCAL_C_INCLUDES :=

LOCAL_ARM_MODE := arm

LOCAL_SRC_FILES := \
    ai/AAS.cpp \
    ai/AAS_debug.cpp \
    ai/AAS_pathing.cpp \
    ai/AAS_routing.cpp \
    ai/AI.cpp \
    ai/AI_events.cpp \
    ai/AI_pathing.cpp \
    ai/AI_Vagary.cpp \
    anim/Anim.cpp \
    anim/Anim_Blend.cpp \
    anim/Anim_Import.cpp \
    anim/Anim_Testmodel.cpp \
    gamesys/Class.cpp \
    gamesys/DebugGraph.cpp \
    gamesys/Event.cpp \
    gamesys/SaveGame.cpp \
    gamesys/SysCmds.cpp \
    gamesys/SysCvar.cpp \
    gamesys/TypeInfo.cpp \
    physics/Clip.cpp \
    physics/Force.cpp \
    physics/Force_Constant.cpp \
    physics/Force_Drag.cpp \
    physics/Force_Field.cpp \
    physics/Force_Spring.cpp \
    physics/Physics.cpp \
    physics/Physics_Actor.cpp \
    physics/Physics_AF.cpp \
    physics/Physics_Base.cpp \
    physics/Physics_Monster.cpp \
    physics/Physics_Parametric.cpp \
    physics/Physics_Player.cpp \
    physics/Physics_RigidBody.cpp \
    physics/Physics_Static.cpp \
    physics/Physics_StaticMulti.cpp \
    physics/Push.cpp \
    script/Script_Compiler.cpp \
    script/Script_Interpreter.cpp \
    script/Script_Program.cpp \
    script/Script_Thread.cpp \
    Actor.cpp \
    AF.cpp \
    AFEntity.cpp \
    BrittleFracture.cpp \
    Camera.cpp \
    EndLevel.cpp \
    Entity.cpp \
    Fx.cpp \
    Game_local.cpp \
    Game_network.cpp \
    GameEdit.cpp \
    IK.cpp \
    Item.cpp \
    Light.cpp \
    Misc.cpp \
    Moveable.cpp \
    Mover.cpp \
    MultiplayerGame.cpp \
    Player.cpp \
    PlayerIcon.cpp \
    PlayerView.cpp \
    Projectile.cpp \
    Pvs.cpp \
    SecurityCamera.cpp \
    SmokeParticles.cpp \
    Sound.cpp \
    Target.cpp \
    Trigger.cpp \
    Weapon.cpp \
    WorldSpawn.cpp

LOCAL_MODULE := libgame

LOCAL_STATIC_LIBRARIES := libid

ifeq ($(APP_DEBUGGABLE),true)
LOCAL_C_INCLUDES += $(PROFILER_INCLUDE_DIR)
LOCAL_STATIC_LIBRARIES += libandprof
LOCAL_LDLIBS := -llog
endif

include $(BUILD_SHARED_LIBRARY)
