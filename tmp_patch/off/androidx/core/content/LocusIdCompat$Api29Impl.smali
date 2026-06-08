.class Landroidx/core/content/LocusIdCompat$Api29Impl;
.super Ljava/lang/Object;
.source "LocusIdCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/content/LocusIdCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api29Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static create(Ljava/lang/String;)Landroid/content/LocusId;
    .registers 2

    #@0
    .line 159
    new-instance v0, Landroid/content/LocusId;

    #@2
    invoke-direct {v0, p0}, Landroid/content/LocusId;-><init>(Ljava/lang/String;)V

    #@5
    return-object v0
.end method

.method static getId(Landroid/content/LocusId;)Ljava/lang/String;
    .registers 1

    #@0
    .line 167
    invoke-virtual {p0}, Landroid/content/LocusId;->getId()Ljava/lang/String;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method
