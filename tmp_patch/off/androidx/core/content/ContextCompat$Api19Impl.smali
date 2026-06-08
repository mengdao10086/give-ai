.class Landroidx/core/content/ContextCompat$Api19Impl;
.super Ljava/lang/Object;
.source "ContextCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/content/ContextCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api19Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 984
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static getExternalCacheDirs(Landroid/content/Context;)[Ljava/io/File;
    .registers 1

    #@0
    .line 990
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDirs()[Ljava/io/File;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method static getExternalFilesDirs(Landroid/content/Context;Ljava/lang/String;)[Ljava/io/File;
    .registers 2

    #@0
    .line 995
    invoke-virtual {p0, p1}, Landroid/content/Context;->getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method static getObbDirs(Landroid/content/Context;)[Ljava/io/File;
    .registers 1

    #@0
    .line 1000
    invoke-virtual {p0}, Landroid/content/Context;->getObbDirs()[Ljava/io/File;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method
