.class Landroidx/core/graphics/drawable/IconCompat$Api28Impl;
.super Ljava/lang/Object;
.source "IconCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/graphics/drawable/IconCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api28Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 1064
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static getResId(Ljava/lang/Object;)I
    .registers 1

    #@0
    .line 1080
    check-cast p0, Landroid/graphics/drawable/Icon;

    #@2
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getResId()I

    #@5
    move-result p0

    #@6
    return p0
.end method

.method static getResPackage(Ljava/lang/Object;)Ljava/lang/String;
    .registers 1

    #@0
    .line 1070
    check-cast p0, Landroid/graphics/drawable/Icon;

    #@2
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    #@5
    move-result-object p0

    #@6
    return-object p0
.end method

.method static getType(Ljava/lang/Object;)I
    .registers 1

    #@0
    .line 1075
    check-cast p0, Landroid/graphics/drawable/Icon;

    #@2
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getType()I

    #@5
    move-result p0

    #@6
    return p0
.end method

.method static getUri(Ljava/lang/Object;)Landroid/net/Uri;
    .registers 1

    #@0
    .line 1085
    check-cast p0, Landroid/graphics/drawable/Icon;

    #@2
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getUri()Landroid/net/Uri;

    #@5
    move-result-object p0

    #@6
    return-object p0
.end method
