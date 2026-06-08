.class public Landroidx/startup/InitializationProvider;
.super Landroid/content/ContentProvider;
.source "InitializationProvider.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    .line 33
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public final delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 4

    #@0
    .line 83
    new-instance p1, Ljava/lang/IllegalStateException;

    #@2
    const-string p2, "Not allowed."

    #@4
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@7
    throw p1
.end method

.method public final getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3

    #@0
    .line 69
    new-instance p1, Ljava/lang/IllegalStateException;

    #@2
    const-string v0, "Not allowed."

    #@4
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@7
    throw p1
.end method

.method public final insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 3

    #@0
    .line 75
    new-instance p1, Ljava/lang/IllegalStateException;

    #@2
    const-string p2, "Not allowed."

    #@4
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@7
    throw p1
.end method

.method public final onCreate()Z
    .registers 3

    #@0
    .line 37
    invoke-virtual {p0}, Landroidx/startup/InitializationProvider;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_1b

    #@6
    .line 43
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    #@9
    move-result-object v1

    #@a
    if-eqz v1, :cond_14

    #@c
    .line 45
    invoke-static {v0}, Landroidx/startup/AppInitializer;->getInstance(Landroid/content/Context;)Landroidx/startup/AppInitializer;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Landroidx/startup/AppInitializer;->discoverAndInitialize()V

    #@13
    goto :goto_19

    #@14
    :cond_14
    const-string v0, "Deferring initialization because `applicationContext` is null."

    #@16
    .line 47
    invoke-static {v0}, Landroidx/startup/StartupLogger;->w(Ljava/lang/String;)V

    #@19
    :goto_19
    const/4 v0, 0x1

    #@1a
    return v0

    #@1b
    .line 50
    :cond_1b
    new-instance v0, Landroidx/startup/StartupException;

    #@1d
    const-string v1, "Context cannot be null"

    #@1f
    invoke-direct {v0, v1}, Landroidx/startup/StartupException;-><init>(Ljava/lang/String;)V

    #@22
    throw v0
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 6

    #@0
    .line 63
    new-instance p1, Ljava/lang/IllegalStateException;

    #@2
    const-string p2, "Not allowed."

    #@4
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@7
    throw p1
.end method

.method public final update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5

    #@0
    .line 92
    new-instance p1, Ljava/lang/IllegalStateException;

    #@2
    const-string p2, "Not allowed."

    #@4
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@7
    throw p1
.end method
