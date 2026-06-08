.class public abstract Lcom/blankj/utilcode/util/ClickUtils$OnMultiClickListener;
.super Ljava/lang/Object;
.source "ClickUtils.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blankj/utilcode/util/ClickUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "OnMultiClickListener"
.end annotation


# static fields
.field private static final INTERVAL_DEFAULT_VALUE:J = 0x29aL


# instance fields
.field private mClickCount:I

.field private final mClickInterval:J

.field private mLastClickTime:J

.field private final mTriggerClickCount:I


# direct methods
.method public constructor <init>(I)V
    .registers 4

    #@0
    const-wide/16 v0, 0x29a

    #@2
    .line 486
    invoke-direct {p0, p1, v0, v1}, Lcom/blankj/utilcode/util/ClickUtils$OnMultiClickListener;-><init>(IJ)V

    #@5
    return-void
.end method

.method public constructor <init>(IJ)V
    .registers 4

    #@0
    .line 489
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 490
    iput p1, p0, Lcom/blankj/utilcode/util/ClickUtils$OnMultiClickListener;->mTriggerClickCount:I

    #@5
    .line 491
    iput-wide p2, p0, Lcom/blankj/utilcode/util/ClickUtils$OnMultiClickListener;->mClickInterval:J

    #@7
    return-void
.end method


# virtual methods
.method public abstract onBeforeTriggerClick(Landroid/view/View;I)V
.end method

.method public onClick(Landroid/view/View;)V
    .registers 10

    #@0
    .line 500
    iget v0, p0, Lcom/blankj/utilcode/util/ClickUtils$OnMultiClickListener;->mTriggerClickCount:I

    #@2
    const/4 v1, 0x1

    #@3
    if-gt v0, v1, :cond_9

    #@5
    .line 501
    invoke-virtual {p0, p1}, Lcom/blankj/utilcode/util/ClickUtils$OnMultiClickListener;->onTriggerClick(Landroid/view/View;)V

    #@8
    return-void

    #@9
    .line 504
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@c
    move-result-wide v2

    #@d
    .line 506
    iget-wide v4, p0, Lcom/blankj/utilcode/util/ClickUtils$OnMultiClickListener;->mLastClickTime:J

    #@f
    sub-long v4, v2, v4

    #@11
    iget-wide v6, p0, Lcom/blankj/utilcode/util/ClickUtils$OnMultiClickListener;->mClickInterval:J

    #@13
    cmp-long v0, v4, v6

    #@15
    if-gez v0, :cond_30

    #@17
    .line 507
    iget v0, p0, Lcom/blankj/utilcode/util/ClickUtils$OnMultiClickListener;->mClickCount:I

    #@19
    add-int/2addr v0, v1

    #@1a
    iput v0, p0, Lcom/blankj/utilcode/util/ClickUtils$OnMultiClickListener;->mClickCount:I

    #@1c
    .line 508
    iget v4, p0, Lcom/blankj/utilcode/util/ClickUtils$OnMultiClickListener;->mTriggerClickCount:I

    #@1e
    if-ne v0, v4, :cond_24

    #@20
    .line 509
    invoke-virtual {p0, p1}, Lcom/blankj/utilcode/util/ClickUtils$OnMultiClickListener;->onTriggerClick(Landroid/view/View;)V

    #@23
    goto :goto_35

    #@24
    :cond_24
    if-ge v0, v4, :cond_2a

    #@26
    .line 511
    invoke-virtual {p0, p1, v0}, Lcom/blankj/utilcode/util/ClickUtils$OnMultiClickListener;->onBeforeTriggerClick(Landroid/view/View;I)V

    #@29
    goto :goto_35

    #@2a
    .line 513
    :cond_2a
    iput v1, p0, Lcom/blankj/utilcode/util/ClickUtils$OnMultiClickListener;->mClickCount:I

    #@2c
    .line 514
    invoke-virtual {p0, p1, v1}, Lcom/blankj/utilcode/util/ClickUtils$OnMultiClickListener;->onBeforeTriggerClick(Landroid/view/View;I)V

    #@2f
    goto :goto_35

    #@30
    .line 517
    :cond_30
    iput v1, p0, Lcom/blankj/utilcode/util/ClickUtils$OnMultiClickListener;->mClickCount:I

    #@32
    .line 518
    invoke-virtual {p0, p1, v1}, Lcom/blankj/utilcode/util/ClickUtils$OnMultiClickListener;->onBeforeTriggerClick(Landroid/view/View;I)V

    #@35
    .line 520
    :goto_35
    iput-wide v2, p0, Lcom/blankj/utilcode/util/ClickUtils$OnMultiClickListener;->mLastClickTime:J

    #@37
    return-void
.end method

.method public abstract onTriggerClick(Landroid/view/View;)V
.end method
