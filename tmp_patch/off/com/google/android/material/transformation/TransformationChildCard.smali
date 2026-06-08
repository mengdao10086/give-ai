.class public Lcom/google/android/material/transformation/TransformationChildCard;
.super Lcom/google/android/material/circularreveal/cardview/CircularRevealCardView;
.source "TransformationChildCard.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 39
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/transformation/TransformationChildCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    #@0
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/circularreveal/cardview/CircularRevealCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@3
    return-void
.end method
