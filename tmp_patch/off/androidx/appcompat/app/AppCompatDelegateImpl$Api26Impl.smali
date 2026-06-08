.class Landroidx/appcompat/app/AppCompatDelegateImpl$Api26Impl;
.super Ljava/lang/Object;
.source "AppCompatDelegateImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/AppCompatDelegateImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api26Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 3644
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static generateConfigDelta_colorMode(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V
    .registers 5

    #@0
    .line 3648
    iget v0, p0, Landroid/content/res/Configuration;->colorMode:I

    #@2
    and-int/lit8 v0, v0, 0x3

    #@4
    iget v1, p1, Landroid/content/res/Configuration;->colorMode:I

    #@6
    and-int/lit8 v1, v1, 0x3

    #@8
    if-eq v0, v1, :cond_13

    #@a
    .line 3650
    iget v0, p2, Landroid/content/res/Configuration;->colorMode:I

    #@c
    iget v1, p1, Landroid/content/res/Configuration;->colorMode:I

    #@e
    and-int/lit8 v1, v1, 0x3

    #@10
    or-int/2addr v0, v1

    #@11
    iput v0, p2, Landroid/content/res/Configuration;->colorMode:I

    #@13
    .line 3654
    :cond_13
    iget p0, p0, Landroid/content/res/Configuration;->colorMode:I

    #@15
    and-int/lit8 p0, p0, 0xc

    #@17
    iget v0, p1, Landroid/content/res/Configuration;->colorMode:I

    #@19
    and-int/lit8 v0, v0, 0xc

    #@1b
    if-eq p0, v0, :cond_26

    #@1d
    .line 3656
    iget p0, p2, Landroid/content/res/Configuration;->colorMode:I

    #@1f
    iget p1, p1, Landroid/content/res/Configuration;->colorMode:I

    #@21
    and-int/lit8 p1, p1, 0xc

    #@23
    or-int/2addr p0, p1

    #@24
    iput p0, p2, Landroid/content/res/Configuration;->colorMode:I

    #@26
    :cond_26
    return-void
.end method
