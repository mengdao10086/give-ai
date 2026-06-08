.class public final synthetic Lcom/google/android/material/transition/platform/TransitionUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/material/shape/ShapeAppearanceModel$CornerSizeUnaryOperator;


# instance fields
.field public final synthetic f$0:Landroid/graphics/RectF;


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/RectF;)V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/google/android/material/transition/platform/TransitionUtils$$ExternalSyntheticLambda0;->f$0:Landroid/graphics/RectF;

    #@5
    return-void
.end method


# virtual methods
.method public final apply(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/CornerSize;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/material/transition/platform/TransitionUtils$$ExternalSyntheticLambda0;->f$0:Landroid/graphics/RectF;

    #@2
    invoke-static {v0, p1}, Lcom/google/android/material/transition/platform/TransitionUtils;->lambda$convertToRelativeCornerSizes$0(Landroid/graphics/RectF;Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/CornerSize;

    #@5
    move-result-object p1

    #@6
    return-object p1
.end method
