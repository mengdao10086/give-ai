.class interface abstract Lcom/google/android/material/color/ColorResourcesOverride;
.super Ljava/lang/Object;
.source "ColorResourcesOverride.java"


# direct methods
.method public static getInstance()Lcom/google/android/material/color/ColorResourcesOverride;
    .registers 2

    #@0
    const/16 v0, 0x1e

    #@2
    .line 44
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    #@4
    if-gt v0, v1, :cond_11

    #@6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@8
    const/16 v1, 0x21

    #@a
    if-gt v0, v1, :cond_11

    #@c
    .line 45
    invoke-static {}, Lcom/google/android/material/color/ResourcesLoaderColorResourcesOverride;->getInstance()Lcom/google/android/material/color/ColorResourcesOverride;

    #@f
    move-result-object v0

    #@10
    return-object v0

    #@11
    .line 46
    :cond_11
    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastU()Z

    #@14
    move-result v0

    #@15
    if-eqz v0, :cond_1c

    #@17
    .line 49
    invoke-static {}, Lcom/google/android/material/color/ResourcesLoaderColorResourcesOverride;->getInstance()Lcom/google/android/material/color/ColorResourcesOverride;

    #@1a
    move-result-object v0

    #@1b
    return-object v0

    #@1c
    :cond_1c
    const/4 v0, 0x0

    #@1d
    return-object v0
.end method


# virtual methods
.method public abstract applyIfPossible(Landroid/content/Context;Ljava/util/Map;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation
.end method
