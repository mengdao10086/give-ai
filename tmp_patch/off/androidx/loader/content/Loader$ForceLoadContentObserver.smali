.class public final Landroidx/loader/content/Loader$ForceLoadContentObserver;
.super Landroid/database/ContentObserver;
.source "Loader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/loader/content/Loader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ForceLoadContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/loader/content/Loader;


# direct methods
.method public constructor <init>(Landroidx/loader/content/Loader;)V
    .registers 2

    #@0
    .line 58
    iput-object p1, p0, Landroidx/loader/content/Loader$ForceLoadContentObserver;->this$0:Landroidx/loader/content/Loader;

    #@2
    .line 59
    new-instance p1, Landroid/os/Handler;

    #@4
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    #@7
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    #@a
    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public onChange(Z)V
    .registers 2

    #@0
    .line 69
    iget-object p1, p0, Landroidx/loader/content/Loader$ForceLoadContentObserver;->this$0:Landroidx/loader/content/Loader;

    #@2
    invoke-virtual {p1}, Landroidx/loader/content/Loader;->onContentChanged()V

    #@5
    return-void
.end method
