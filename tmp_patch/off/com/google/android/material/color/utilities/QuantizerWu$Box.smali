.class final Lcom/google/android/material/color/utilities/QuantizerWu$Box;
.super Ljava/lang/Object;
.source "QuantizerWu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/color/utilities/QuantizerWu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Box"
.end annotation


# instance fields
.field b0:I

.field b1:I

.field g0:I

.field g1:I

.field r0:I

.field r1:I

.field vol:I


# direct methods
.method private constructor <init>()V
    .registers 2

    #@0
    .line 401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x0

    #@4
    .line 402
    iput v0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r0:I

    #@6
    .line 403
    iput v0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r1:I

    #@8
    .line 404
    iput v0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g0:I

    #@a
    .line 405
    iput v0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g1:I

    #@c
    .line 406
    iput v0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b0:I

    #@e
    .line 407
    iput v0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b1:I

    #@10
    .line 408
    iput v0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->vol:I

    #@12
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/material/color/utilities/QuantizerWu$1;)V
    .registers 2

    #@0
    .line 401
    invoke-direct {p0}, Lcom/google/android/material/color/utilities/QuantizerWu$Box;-><init>()V

    #@3
    return-void
.end method
