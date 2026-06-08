.class public final Landroidx/core/database/CursorWindowCompat;
.super Ljava/lang/Object;
.source "CursorWindowCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/database/CursorWindowCompat$Api15Impl;,
        Landroidx/core/database/CursorWindowCompat$Api28Impl;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static create(Ljava/lang/String;J)Landroid/database/CursorWindow;
    .registers 5

    #@0
    .line 44
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1c

    #@4
    if-lt v0, v1, :cond_b

    #@6
    .line 45
    invoke-static {p0, p1, p2}, Landroidx/core/database/CursorWindowCompat$Api28Impl;->createCursorWindow(Ljava/lang/String;J)Landroid/database/CursorWindow;

    #@9
    move-result-object p0

    #@a
    return-object p0

    #@b
    .line 47
    :cond_b
    invoke-static {p0}, Landroidx/core/database/CursorWindowCompat$Api15Impl;->createCursorWindow(Ljava/lang/String;)Landroid/database/CursorWindow;

    #@e
    move-result-object p0

    #@f
    return-object p0
.end method
