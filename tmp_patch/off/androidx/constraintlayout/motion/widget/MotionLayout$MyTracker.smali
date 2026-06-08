.class Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;
.super Ljava/lang/Object;
.source "MotionLayout.java"

# interfaces
.implements Landroidx/constraintlayout/motion/widget/MotionLayout$MotionTracker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/MotionLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyTracker"
.end annotation


# static fields
.field private static me:Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;


# instance fields
.field tracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 1230
    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;

    #@2
    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;-><init>()V

    #@5
    sput-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;->me:Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;

    #@7
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    #@0
    .line 1228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static obtain()Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;
    .registers 2

    #@0
    .line 1233
    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;->me:Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;

    #@2
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    #@5
    move-result-object v1

    #@6
    iput-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;->tracker:Landroid/view/VelocityTracker;

    #@8
    .line 1234
    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;->me:Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;

    #@a
    return-object v0
.end method


# virtual methods
.method public addMovement(Landroid/view/MotionEvent;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    #@0
    .line 1254
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;->tracker:Landroid/view/VelocityTracker;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 1255
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    #@7
    :cond_7
    return-void
.end method

.method public clear()V
    .registers 2

    #@0
    .line 1247
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;->tracker:Landroid/view/VelocityTracker;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 1248
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    #@7
    :cond_7
    return-void
.end method

.method public computeCurrentVelocity(I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "units"
        }
    .end annotation

    #@0
    .line 1261
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;->tracker:Landroid/view/VelocityTracker;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 1262
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    #@7
    :cond_7
    return-void
.end method

.method public computeCurrentVelocity(IF)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "units",
            "maxVelocity"
        }
    .end annotation

    #@0
    .line 1268
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;->tracker:Landroid/view/VelocityTracker;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 1269
    invoke-virtual {v0, p1, p2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    #@7
    :cond_7
    return-void
.end method

.method public getXVelocity()F
    .registers 2

    #@0
    .line 1275
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;->tracker:Landroid/view/VelocityTracker;

    #@2
    if-eqz v0, :cond_9

    #@4
    .line 1276
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    #@7
    move-result v0

    #@8
    return v0

    #@9
    :cond_9
    const/4 v0, 0x0

    #@a
    return v0
.end method

.method public getXVelocity(I)F
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    #@0
    .line 1291
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;->tracker:Landroid/view/VelocityTracker;

    #@2
    if-eqz v0, :cond_9

    #@4
    .line 1292
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    #@7
    move-result p1

    #@8
    return p1

    #@9
    :cond_9
    const/4 p1, 0x0

    #@a
    return p1
.end method

.method public getYVelocity()F
    .registers 2

    #@0
    .line 1283
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;->tracker:Landroid/view/VelocityTracker;

    #@2
    if-eqz v0, :cond_9

    #@4
    .line 1284
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    #@7
    move-result v0

    #@8
    return v0

    #@9
    :cond_9
    const/4 v0, 0x0

    #@a
    return v0
.end method

.method public getYVelocity(I)F
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    #@0
    .line 1299
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;->tracker:Landroid/view/VelocityTracker;

    #@2
    if-eqz v0, :cond_9

    #@4
    .line 1300
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;->getYVelocity(I)F

    #@7
    move-result p1

    #@8
    return p1

    #@9
    :cond_9
    const/4 p1, 0x0

    #@a
    return p1
.end method

.method public recycle()V
    .registers 2

    #@0
    .line 1239
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;->tracker:Landroid/view/VelocityTracker;

    #@2
    if-eqz v0, :cond_a

    #@4
    .line 1240
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    #@7
    const/4 v0, 0x0

    #@8
    .line 1241
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;->tracker:Landroid/view/VelocityTracker;

    #@a
    :cond_a
    return-void
.end method
