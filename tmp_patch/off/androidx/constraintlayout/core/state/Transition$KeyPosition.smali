.class Landroidx/constraintlayout/core/state/Transition$KeyPosition;
.super Ljava/lang/Object;
.source "Transition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/state/Transition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "KeyPosition"
.end annotation


# instance fields
.field frame:I

.field target:Ljava/lang/String;

.field type:I

.field x:F

.field y:F


# direct methods
.method public constructor <init>(Ljava/lang/String;IIFF)V
    .registers 6

    #@0
    .line 434
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 435
    iput-object p1, p0, Landroidx/constraintlayout/core/state/Transition$KeyPosition;->target:Ljava/lang/String;

    #@5
    .line 436
    iput p2, p0, Landroidx/constraintlayout/core/state/Transition$KeyPosition;->frame:I

    #@7
    .line 437
    iput p3, p0, Landroidx/constraintlayout/core/state/Transition$KeyPosition;->type:I

    #@9
    .line 438
    iput p4, p0, Landroidx/constraintlayout/core/state/Transition$KeyPosition;->x:F

    #@b
    .line 439
    iput p5, p0, Landroidx/constraintlayout/core/state/Transition$KeyPosition;->y:F

    #@d
    return-void
.end method
