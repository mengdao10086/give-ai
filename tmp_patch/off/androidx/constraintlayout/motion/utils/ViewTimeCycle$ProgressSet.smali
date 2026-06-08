.class Landroidx/constraintlayout/motion/utils/ViewTimeCycle$ProgressSet;
.super Landroidx/constraintlayout/motion/utils/ViewTimeCycle;
.source "ViewTimeCycle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/utils/ViewTimeCycle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ProgressSet"
.end annotation


# instance fields
.field mNoMethod:Z


# direct methods
.method constructor <init>()V
    .registers 2

    #@0
    .line 288
    invoke-direct {p0}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;-><init>()V

    #@3
    const/4 v0, 0x0

    #@4
    .line 289
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$ProgressSet;->mNoMethod:Z

    #@6
    return-void
.end method


# virtual methods
.method public setProperty(Landroid/view/View;FJLandroidx/constraintlayout/core/motion/utils/KeyCache;)Z
    .registers 19
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "t",
            "time",
            "cache"
        }
    .end annotation

    #@0
    move-object v7, p0

    #@1
    move-object v0, p1

    #@2
    const-string v8, "unable to setProgress"

    #@4
    const-string v9, "ViewTimeCycle"

    #@6
    .line 293
    instance-of v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@8
    if-eqz v1, :cond_1c

    #@a
    .line 294
    move-object v8, v0

    #@b
    check-cast v8, Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@d
    move-object v1, p0

    #@e
    move v2, p2

    #@f
    move-wide/from16 v3, p3

    #@11
    move-object v5, p1

    #@12
    move-object/from16 v6, p5

    #@14
    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$ProgressSet;->get(FJLandroid/view/View;Landroidx/constraintlayout/core/motion/utils/KeyCache;)F

    #@17
    move-result v0

    #@18
    invoke-virtual {v8, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    #@1b
    goto :goto_5a

    #@1c
    .line 296
    :cond_1c
    iget-boolean v1, v7, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$ProgressSet;->mNoMethod:Z

    #@1e
    const/4 v10, 0x0

    #@1f
    if-eqz v1, :cond_22

    #@21
    return v10

    #@22
    :cond_22
    const/4 v1, 0x1

    #@23
    .line 301
    :try_start_23
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@26
    move-result-object v2

    #@27
    const-string v3, "setProgress"

    #@29
    new-array v4, v1, [Ljava/lang/Class;

    #@2b
    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    #@2d
    aput-object v5, v4, v10

    #@2f
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@32
    move-result-object v2
    :try_end_33
    .catch Ljava/lang/NoSuchMethodException; {:try_start_23 .. :try_end_33} :catch_34

    #@33
    goto :goto_37

    #@34
    .line 303
    :catch_34
    iput-boolean v1, v7, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$ProgressSet;->mNoMethod:Z

    #@36
    const/4 v2, 0x0

    #@37
    :goto_37
    move-object v11, v2

    #@38
    if-eqz v11, :cond_5a

    #@3a
    :try_start_3a
    new-array v12, v1, [Ljava/lang/Object;

    #@3c
    move-object v1, p0

    #@3d
    move v2, p2

    #@3e
    move-wide/from16 v3, p3

    #@40
    move-object v5, p1

    #@41
    move-object/from16 v6, p5

    #@43
    .line 307
    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$ProgressSet;->get(FJLandroid/view/View;Landroidx/constraintlayout/core/motion/utils/KeyCache;)F

    #@46
    move-result v1

    #@47
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@4a
    move-result-object v1

    #@4b
    aput-object v1, v12, v10

    #@4d
    invoke-virtual {v11, p1, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_50
    .catch Ljava/lang/IllegalAccessException; {:try_start_3a .. :try_end_50} :catch_56
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3a .. :try_end_50} :catch_51

    #@50
    goto :goto_5a

    #@51
    :catch_51
    move-exception v0

    #@52
    .line 311
    invoke-static {v9, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@55
    goto :goto_5a

    #@56
    :catch_56
    move-exception v0

    #@57
    .line 309
    invoke-static {v9, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@5a
    .line 315
    :cond_5a
    :goto_5a
    iget-boolean v0, v7, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$ProgressSet;->mContinue:Z

    #@5c
    return v0
.end method
