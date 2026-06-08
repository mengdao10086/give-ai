.class public interface abstract Landroidx/constraintlayout/core/motion/utils/TypedValues$OnSwipe;
.super Ljava/lang/Object;
.source "TypedValues.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/motion/utils/TypedValues;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnSwipe"
.end annotation


# static fields
.field public static final AUTOCOMPLETE_MODE:Ljava/lang/String; = "autocompletemode"

.field public static final AUTOCOMPLETE_MODE_ENUM:[Ljava/lang/String;

.field public static final DRAG_DIRECTION:Ljava/lang/String; = "dragdirection"

.field public static final DRAG_SCALE:Ljava/lang/String; = "dragscale"

.field public static final DRAG_THRESHOLD:Ljava/lang/String; = "dragthreshold"

.field public static final LIMIT_BOUNDS_TO:Ljava/lang/String; = "limitboundsto"

.field public static final MAX_ACCELERATION:Ljava/lang/String; = "maxacceleration"

.field public static final MAX_VELOCITY:Ljava/lang/String; = "maxvelocity"

.field public static final MOVE_WHEN_SCROLLAT_TOP:Ljava/lang/String; = "movewhenscrollattop"

.field public static final NESTED_SCROLL_FLAGS:Ljava/lang/String; = "nestedscrollflags"

.field public static final NESTED_SCROLL_FLAGS_ENUM:[Ljava/lang/String;

.field public static final ON_TOUCH_UP:Ljava/lang/String; = "ontouchup"

.field public static final ON_TOUCH_UP_ENUM:[Ljava/lang/String;

.field public static final ROTATION_CENTER_ID:Ljava/lang/String; = "rotationcenterid"

.field public static final SPRINGS_TOP_THRESHOLD:Ljava/lang/String; = "springstopthreshold"

.field public static final SPRING_BOUNDARY:Ljava/lang/String; = "springboundary"

.field public static final SPRING_BOUNDARY_ENUM:[Ljava/lang/String;

.field public static final SPRING_DAMPING:Ljava/lang/String; = "springdamping"

.field public static final SPRING_MASS:Ljava/lang/String; = "springmass"

.field public static final SPRING_STIFFNESS:Ljava/lang/String; = "springstiffness"

.field public static final TOUCH_ANCHOR_ID:Ljava/lang/String; = "touchanchorid"

.field public static final TOUCH_ANCHOR_SIDE:Ljava/lang/String; = "touchanchorside"

.field public static final TOUCH_REGION_ID:Ljava/lang/String; = "touchregionid"


# direct methods
.method static constructor <clinit>()V
    .registers 8

    #@0
    const-string v0, "autoComplete"

    #@2
    const-string v1, "autoCompleteToStart"

    #@4
    const-string v2, "autoCompleteToEnd"

    #@6
    const-string v3, "stop"

    #@8
    const-string v4, "decelerate"

    #@a
    const-string v5, "decelerateAndComplete"

    #@c
    const-string v6, "neverCompleteToStart"

    #@e
    const-string v7, "neverCompleteToEnd"

    #@10
    .line 812
    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$OnSwipe;->ON_TOUCH_UP_ENUM:[Ljava/lang/String;

    #@16
    const-string v0, "bounceEnd"

    #@18
    const-string v1, "bounceBoth"

    #@1a
    const-string v2, "overshoot"

    #@1c
    const-string v3, "bounceStart"

    #@1e
    .line 823
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$OnSwipe;->SPRING_BOUNDARY_ENUM:[Ljava/lang/String;

    #@24
    const-string v0, "continuousVelocity"

    #@26
    const-string v1, "spring"

    #@28
    .line 829
    filled-new-array {v0, v1}, [Ljava/lang/String;

    #@2b
    move-result-object v0

    #@2c
    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$OnSwipe;->AUTOCOMPLETE_MODE_ENUM:[Ljava/lang/String;

    #@2e
    const-string v0, "disableScroll"

    #@30
    const-string v1, "supportScrollUp"

    #@32
    const-string v2, "none"

    #@34
    const-string v3, "disablePostScroll"

    #@36
    .line 834
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    #@39
    move-result-object v0

    #@3a
    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$OnSwipe;->NESTED_SCROLL_FLAGS_ENUM:[Ljava/lang/String;

    #@3c
    return-void
.end method
