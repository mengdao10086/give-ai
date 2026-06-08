.class public abstract Landroidx/constraintlayout/widget/ConstraintsChangedListener;
.super Ljava/lang/Object;
.source "ConstraintsChangedListener.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public postLayoutChange(II)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "stateId",
            "constraintId"
        }
    .end annotation

    #@0
    return-void
.end method

.method public preLayoutChange(II)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "stateId",
            "constraintId"
        }
    .end annotation

    #@0
    return-void
.end method
