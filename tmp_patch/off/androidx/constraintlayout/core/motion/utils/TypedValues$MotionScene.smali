.class public interface abstract Landroidx/constraintlayout/core/motion/utils/TypedValues$MotionScene;
.super Ljava/lang/Object;
.source "TypedValues.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/motion/utils/TypedValues;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MotionScene"
.end annotation


# static fields
.field public static final KEY_WORDS:[Ljava/lang/String;

.field public static final NAME:Ljava/lang/String; = "MotionScene"

.field public static final S_DEFAULT_DURATION:Ljava/lang/String; = "defaultDuration"

.field public static final S_LAYOUT_DURING_TRANSITION:Ljava/lang/String; = "layoutDuringTransition"

.field public static final TYPE_DEFAULT_DURATION:I = 0x258

.field public static final TYPE_LAYOUT_DURING_TRANSITION:I = 0x259


# direct methods
.method static constructor <clinit>()V
    .registers 2

    #@0
    const-string v0, "defaultDuration"

    #@2
    const-string v1, "layoutDuringTransition"

    #@4
    .line 679
    filled-new-array {v0, v1}, [Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$MotionScene;->KEY_WORDS:[Ljava/lang/String;

    #@a
    return-void
.end method

.method public static getId(Ljava/lang/String;)I
    .registers 2

    #@0
    .line 702
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    #@3
    const-string v0, "defaultDuration"

    #@5
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_18

    #@b
    const-string v0, "layoutDuringTransition"

    #@d
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10
    move-result p0

    #@11
    if-nez p0, :cond_15

    #@13
    const/4 p0, -0x1

    #@14
    return p0

    #@15
    :cond_15
    const/16 p0, 0x259

    #@17
    return p0

    #@18
    :cond_18
    const/16 p0, 0x258

    #@1a
    return p0
.end method

.method public static getType(I)I
    .registers 2

    #@0
    const/16 v0, 0x258

    #@2
    if-eq p0, v0, :cond_c

    #@4
    const/16 v0, 0x259

    #@6
    if-eq p0, v0, :cond_a

    #@8
    const/4 p0, -0x1

    #@9
    return p0

    #@a
    :cond_a
    const/4 p0, 0x1

    #@b
    return p0

    #@c
    :cond_c
    const/4 p0, 0x2

    #@d
    return p0
.end method
