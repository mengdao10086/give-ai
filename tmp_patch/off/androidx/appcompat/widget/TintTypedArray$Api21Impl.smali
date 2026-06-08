.class Landroidx/appcompat/widget/TintTypedArray$Api21Impl;
.super Ljava/lang/Object;
.source "TintTypedArray.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/TintTypedArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api21Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static getChangingConfigurations(Landroid/content/res/TypedArray;)I
    .registers 1

    #@0
    .line 274
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    #@3
    move-result p0

    #@4
    return p0
.end method

.method static getType(Landroid/content/res/TypedArray;I)I
    .registers 2

    #@0
    .line 269
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getType(I)I

    #@3
    move-result p0

    #@4
    return p0
.end method
