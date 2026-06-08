.class Landroidx/core/database/CursorWindowCompat$Api15Impl;
.super Ljava/lang/Object;
.source "CursorWindowCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/database/CursorWindowCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api15Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static createCursorWindow(Ljava/lang/String;)Landroid/database/CursorWindow;
    .registers 2

    #@0
    .line 73
    new-instance v0, Landroid/database/CursorWindow;

    #@2
    invoke-direct {v0, p0}, Landroid/database/CursorWindow;-><init>(Ljava/lang/String;)V

    #@5
    return-object v0
.end method
