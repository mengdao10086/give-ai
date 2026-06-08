.class public final Landroidx/core/content/ContentResolverCompat;
.super Ljava/lang/Object;
.source "ContentResolverCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/content/ContentResolverCompat$Api16Impl;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroidx/core/os/CancellationSignal;)Landroid/database/Cursor;
    .registers 14

    #@0
    if-eqz p6, :cond_9

    #@2
    .line 85
    :try_start_2
    invoke-virtual {p6}, Landroidx/core/os/CancellationSignal;->getCancellationSignalObject()Ljava/lang/Object;

    #@5
    move-result-object p6

    #@6
    goto :goto_a

    #@7
    :catch_7
    move-exception p0

    #@8
    goto :goto_18

    #@9
    :cond_9
    const/4 p6, 0x0

    #@a
    .line 86
    :goto_a
    move-object v6, p6

    #@b
    check-cast v6, Landroid/os/CancellationSignal;

    #@d
    move-object v0, p0

    #@e
    move-object v1, p1

    #@f
    move-object v2, p2

    #@10
    move-object v3, p3

    #@11
    move-object v4, p4

    #@12
    move-object v5, p5

    #@13
    .line 87
    invoke-static/range {v0 .. v6}, Landroidx/core/content/ContentResolverCompat$Api16Impl;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    #@16
    move-result-object p0
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_17} :catch_7

    #@17
    return-object p0

    #@18
    .line 90
    :goto_18
    instance-of p1, p0, Landroid/os/OperationCanceledException;

    #@1a
    if-eqz p1, :cond_22

    #@1c
    .line 93
    new-instance p0, Landroidx/core/os/OperationCanceledException;

    #@1e
    invoke-direct {p0}, Landroidx/core/os/OperationCanceledException;-><init>()V

    #@21
    throw p0

    #@22
    .line 96
    :cond_22
    throw p0
.end method
