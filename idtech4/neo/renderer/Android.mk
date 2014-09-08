
LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_CFLAGS := $(GLOBAL_CFLAGS)

ifeq ($(ETC1_PRESENTED),true)
LOCAL_CFLAGS += -DID_ETC1_PRESENTED
endif

LOCAL_CPPFLAGS := -fexceptions -frtti -fno-format-security

LOCAL_C_INCLUDES := \
    $(JPEG_INCLUDE_DIR) \
    $(ETC1_INCLUDE_DIR)

LOCAL_ARM_MODE := arm

LOCAL_SRC_FILES := \
    Cinematic.cpp \
    draw_common.cpp \
    draw_glsl.cpp \
    esTransform.c \
    etc_android.cpp \
    etc_rg_etc1.cpp \
    GuiModel.cpp \
    Image_files.cpp \
    Image_init.cpp \
    Image_load.cpp \
    Image_process.cpp \
    Image_program.cpp \
    Interaction.cpp \
    Material.cpp \
    Model.cpp \
    Model_ase.cpp \
    Model_beam.cpp \
    Model_liquid.cpp \
    Model_lwo.cpp \
    Model_ma.cpp \
    Model_md3.cpp \
    Model_md5.cpp \
    Model_prt.cpp \
    Model_sprite.cpp
    ModelDecal.cpp \
    ModelManager.cpp \
    ModelOverlay.cpp \
    RenderEntity.cpp \
    RenderSystem.cpp \
    RenderSystem_init.cpp \
    RenderWorld.cpp \
    RenderWorld_demo.cpp \
    RenderWorld_load.cpp \
    RenderWorld_portals.cpp \
    tr_backend.cpp \
    tr_deform.cpp \
    tr_font.cpp \
    tr_guisurf.cpp \
    tr_light.cpp \
    tr_lightrun.cpp \
    tr_main.cpp \
    tr_orderIndexes.cpp \
    tr_polytope.cpp \
    tr_render.cpp \
    tr_rendertools.cpp \
    tr_shadowbounds.cpp \
    tr_stencilshadow.cpp \
    tr_subview.cpp \
    tr_trace.cpp \
    tr_trisurf.cpp \
    tr_turboshadow.cpp \
    VertexCache.cpp

LOCAL_MODULE := librenderer

include $(BUILD_STATIC_LIBRARY)
