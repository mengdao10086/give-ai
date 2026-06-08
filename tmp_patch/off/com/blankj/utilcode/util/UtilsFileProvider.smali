.class public Lcom/blankj/utilcode/util/UtilsFileProvider;
.super Landroidx/core/content/FileProvider;
.source "UtilsFileProvider.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    .line 15
    invoke-direct {p0}, Landroidx/core/content/FileProvider;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public onCreate()Z
    .registers 2

    #@0
    .line 20
    invoke-virtual {p0}, Lcom/blankj/utilcode/util/UtilsFileProvider;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Landroid/app/Application;

    #@a
    invoke-static {v0}, Lcom/blankj/utilcode/util/Utils;->init(Landroid/app/Application;)V

    #@d
    const/4 v0, 0x1

    #@e
    return v0
.end method
