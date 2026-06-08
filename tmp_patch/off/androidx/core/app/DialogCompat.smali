.class public Landroidx/core/app/DialogCompat;
.super Ljava/lang/Object;
.source "DialogCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/DialogCompat$Api28Impl;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static requireViewById(Landroid/app/Dialog;I)Landroid/view/View;
    .registers 4

    #@0
    .line 57
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1c

    #@4
    if-lt v0, v1, :cond_d

    #@6
    .line 58
    invoke-static {p0, p1}, Landroidx/core/app/DialogCompat$Api28Impl;->requireViewById(Landroid/app/Dialog;I)Ljava/lang/Object;

    #@9
    move-result-object p0

    #@a
    check-cast p0, Landroid/view/View;

    #@c
    return-object p0

    #@d
    .line 60
    :cond_d
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    #@10
    move-result-object p0

    #@11
    if-eqz p0, :cond_14

    #@13
    return-object p0

    #@14
    .line 62
    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    #@16
    const-string p1, "ID does not reference a View inside this Dialog"

    #@18
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1b
    throw p0
.end method
