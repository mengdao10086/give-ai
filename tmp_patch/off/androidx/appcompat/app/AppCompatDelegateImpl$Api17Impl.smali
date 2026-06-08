.class Landroidx/appcompat/app/AppCompatDelegateImpl$Api17Impl;
.super Ljava/lang/Object;
.source "AppCompatDelegateImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/AppCompatDelegateImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api17Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 3603
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static createConfigurationContext(Landroid/content/Context;Landroid/content/res/Configuration;)Landroid/content/Context;
    .registers 2

    #@0
    .line 3614
    invoke-virtual {p0, p1}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method static generateConfigDelta_densityDpi(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V
    .registers 4

    #@0
    .line 3607
    iget p0, p0, Landroid/content/res/Configuration;->densityDpi:I

    #@2
    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    #@4
    if-eq p0, v0, :cond_a

    #@6
    .line 3608
    iget p0, p1, Landroid/content/res/Configuration;->densityDpi:I

    #@8
    iput p0, p2, Landroid/content/res/Configuration;->densityDpi:I

    #@a
    :cond_a
    return-void
.end method
