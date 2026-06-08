.class public Lcom/google/android/material/internal/ContextUtils;
.super Ljava/lang/Object;
.source "ContextUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getActivity(Landroid/content/Context;)Landroid/app/Activity;
    .registers 2

    #@0
    .line 41
    :goto_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    #@2
    if-eqz v0, :cond_12

    #@4
    .line 42
    instance-of v0, p0, Landroid/app/Activity;

    #@6
    if-eqz v0, :cond_b

    #@8
    .line 43
    check-cast p0, Landroid/app/Activity;

    #@a
    return-object p0

    #@b
    .line 45
    :cond_b
    check-cast p0, Landroid/content/ContextWrapper;

    #@d
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    #@10
    move-result-object p0

    #@11
    goto :goto_0

    #@12
    :cond_12
    const/4 p0, 0x0

    #@13
    return-object p0
.end method
