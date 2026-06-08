.class final Lcom/google/android/material/color/utilities/QuantizerWsmeans$Distance;
.super Ljava/lang/Object;
.source "QuantizerWsmeans.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/color/utilities/QuantizerWsmeans;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Distance"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/google/android/material/color/utilities/QuantizerWsmeans$Distance;",
        ">;"
    }
.end annotation


# instance fields
.field distance:D

.field index:I


# direct methods
.method constructor <init>()V
    .registers 3

    #@0
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, -0x1

    #@4
    .line 49
    iput v0, p0, Lcom/google/android/material/color/utilities/QuantizerWsmeans$Distance;->index:I

    #@6
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    #@8
    .line 50
    iput-wide v0, p0, Lcom/google/android/material/color/utilities/QuantizerWsmeans$Distance;->distance:D

    #@a
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/google/android/material/color/utilities/QuantizerWsmeans$Distance;)I
    .registers 5

    #@0
    .line 55
    iget-wide v0, p0, Lcom/google/android/material/color/utilities/QuantizerWsmeans$Distance;->distance:D

    #@2
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@5
    move-result-object v0

    #@6
    iget-wide v1, p1, Lcom/google/android/material/color/utilities/QuantizerWsmeans$Distance;->distance:D

    #@8
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@b
    move-result-object p1

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    #@f
    move-result p1

    #@10
    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    #@0
    .line 44
    check-cast p1, Lcom/google/android/material/color/utilities/QuantizerWsmeans$Distance;

    #@2
    invoke-virtual {p0, p1}, Lcom/google/android/material/color/utilities/QuantizerWsmeans$Distance;->compareTo(Lcom/google/android/material/color/utilities/QuantizerWsmeans$Distance;)I

    #@5
    move-result p1

    #@6
    return p1
.end method
