.class final Landroidx/appcompat/widget/AppCompatSpinner$Api17Impl;
.super Ljava/lang/Object;
.source "AppCompatSpinner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/AppCompatSpinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Api17Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 1140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static getTextAlignment(Landroid/view/View;)I
    .registers 1

    #@0
    .line 1146
    invoke-virtual {p0}, Landroid/view/View;->getTextAlignment()I

    #@3
    move-result p0

    #@4
    return p0
.end method

.method static getTextDirection(Landroid/view/View;)I
    .registers 1

    #@0
    .line 1156
    invoke-virtual {p0}, Landroid/view/View;->getTextDirection()I

    #@3
    move-result p0

    #@4
    return p0
.end method

.method static setTextAlignment(Landroid/view/View;I)V
    .registers 2

    #@0
    .line 1151
    invoke-virtual {p0, p1}, Landroid/view/View;->setTextAlignment(I)V

    #@3
    return-void
.end method

.method static setTextDirection(Landroid/view/View;I)V
    .registers 2

    #@0
    .line 1161
    invoke-virtual {p0, p1}, Landroid/view/View;->setTextDirection(I)V

    #@3
    return-void
.end method
