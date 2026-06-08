.class public final Landroidx/core/view/DisplayCompat$ModeCompat;
.super Ljava/lang/Object;
.source "DisplayCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/DisplayCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ModeCompat"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/DisplayCompat$ModeCompat$Api23Impl;
    }
.end annotation


# instance fields
.field private final mIsNative:Z

.field private final mMode:Landroid/view/Display$Mode;

.field private final mPhysicalSize:Landroid/graphics/Point;


# direct methods
.method constructor <init>(Landroid/graphics/Point;)V
    .registers 3

    #@0
    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const-string v0, "physicalSize == null"

    #@5
    .line 332
    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    .line 333
    iput-object p1, p0, Landroidx/core/view/DisplayCompat$ModeCompat;->mPhysicalSize:Landroid/graphics/Point;

    #@a
    const/4 p1, 0x0

    #@b
    .line 334
    iput-object p1, p0, Landroidx/core/view/DisplayCompat$ModeCompat;->mMode:Landroid/view/Display$Mode;

    #@d
    const/4 p1, 0x1

    #@e
    .line 335
    iput-boolean p1, p0, Landroidx/core/view/DisplayCompat$ModeCompat;->mIsNative:Z

    #@10
    return-void
.end method

.method constructor <init>(Landroid/view/Display$Mode;Landroid/graphics/Point;)V
    .registers 4

    #@0
    .line 362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const-string v0, "mode == null, can\'t wrap a null reference"

    #@5
    .line 363
    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    const-string v0, "physicalSize == null"

    #@a
    .line 364
    invoke-static {p2, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    .line 365
    iput-object p2, p0, Landroidx/core/view/DisplayCompat$ModeCompat;->mPhysicalSize:Landroid/graphics/Point;

    #@f
    .line 366
    iput-object p1, p0, Landroidx/core/view/DisplayCompat$ModeCompat;->mMode:Landroid/view/Display$Mode;

    #@11
    const/4 p1, 0x1

    #@12
    .line 367
    iput-boolean p1, p0, Landroidx/core/view/DisplayCompat$ModeCompat;->mIsNative:Z

    #@14
    return-void
.end method

.method constructor <init>(Landroid/view/Display$Mode;Z)V
    .registers 6

    #@0
    .line 344
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const-string v0, "mode == null, can\'t wrap a null reference"

    #@5
    .line 345
    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    .line 347
    new-instance v0, Landroid/graphics/Point;

    #@a
    invoke-static {p1}, Landroidx/core/view/DisplayCompat$ModeCompat$Api23Impl;->getPhysicalWidth(Landroid/view/Display$Mode;)I

    #@d
    move-result v1

    #@e
    .line 348
    invoke-static {p1}, Landroidx/core/view/DisplayCompat$ModeCompat$Api23Impl;->getPhysicalHeight(Landroid/view/Display$Mode;)I

    #@11
    move-result v2

    #@12
    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    #@15
    iput-object v0, p0, Landroidx/core/view/DisplayCompat$ModeCompat;->mPhysicalSize:Landroid/graphics/Point;

    #@17
    .line 349
    iput-object p1, p0, Landroidx/core/view/DisplayCompat$ModeCompat;->mMode:Landroid/view/Display$Mode;

    #@19
    .line 350
    iput-boolean p2, p0, Landroidx/core/view/DisplayCompat$ModeCompat;->mIsNative:Z

    #@1b
    return-void
.end method


# virtual methods
.method public getPhysicalHeight()I
    .registers 2

    #@0
    .line 381
    iget-object v0, p0, Landroidx/core/view/DisplayCompat$ModeCompat;->mPhysicalSize:Landroid/graphics/Point;

    #@2
    iget v0, v0, Landroid/graphics/Point;->y:I

    #@4
    return v0
.end method

.method public getPhysicalWidth()I
    .registers 2

    #@0
    .line 374
    iget-object v0, p0, Landroidx/core/view/DisplayCompat$ModeCompat;->mPhysicalSize:Landroid/graphics/Point;

    #@2
    iget v0, v0, Landroid/graphics/Point;->x:I

    #@4
    return v0
.end method

.method public isNative()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 395
    iget-boolean v0, p0, Landroidx/core/view/DisplayCompat$ModeCompat;->mIsNative:Z

    #@2
    return v0
.end method

.method public toMode()Landroid/view/Display$Mode;
    .registers 2

    #@0
    .line 404
    iget-object v0, p0, Landroidx/core/view/DisplayCompat$ModeCompat;->mMode:Landroid/view/Display$Mode;

    #@2
    return-object v0
.end method
