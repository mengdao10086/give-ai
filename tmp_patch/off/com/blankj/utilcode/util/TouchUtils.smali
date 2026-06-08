.class public Lcom/blankj/utilcode/util/TouchUtils;
.super Ljava/lang/Object;
.source "TouchUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blankj/utilcode/util/TouchUtils$OnTouchUtilsListener;,
        Lcom/blankj/utilcode/util/TouchUtils$Direction;
    }
.end annotation


# static fields
.field public static final DOWN:I = 0x8

.field public static final LEFT:I = 0x1

.field public static final RIGHT:I = 0x4

.field public static final UNKNOWN:I = 0x0

.field public static final UP:I = 0x2


# direct methods
.method private constructor <init>()V
    .registers 3

    #@0
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 35
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@5
    const-string v1, "u can\'t instantiate me..."

    #@7
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0
.end method

.method public static setOnTouchListener(Landroid/view/View;Lcom/blankj/utilcode/util/TouchUtils$OnTouchUtilsListener;)V
    .registers 2

    #@0
    if-eqz p0, :cond_8

    #@2
    if-nez p1, :cond_5

    #@4
    goto :goto_8

    #@5
    .line 42
    :cond_5
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    #@8
    :cond_8
    :goto_8
    return-void
.end method
