.class public abstract Lcom/blankj/utilcode/util/ClickUtils$OnDebouncingClickListener;
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
    name = "OnDebouncingClickListener"
.end annotation


# static fields
.field private static final ENABLE_AGAIN:Ljava/lang/Runnable;

.field private static mEnabled:Z = true


# instance fields
.field private mDuration:J

.field private mIsGlobal:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 426
    new-instance v0, Lcom/blankj/utilcode/util/ClickUtils$OnDebouncingClickListener$1;

    #@2
    invoke-direct {v0}, Lcom/blankj/utilcode/util/ClickUtils$OnDebouncingClickListener$1;-><init>()V

    #@5
    sput-object v0, Lcom/blankj/utilcode/util/ClickUtils$OnDebouncingClickListener;->ENABLE_AGAIN:Ljava/lang/Runnable;

    #@7
    return-void
.end method

.method public constructor <init>()V
    .registers 4

    #@0
    const/4 v0, 0x1

    #@1
    const-wide/16 v1, 0x3e8

    #@3
    .line 441
    invoke-direct {p0, v0, v1, v2}, Lcom/blankj/utilcode/util/ClickUtils$OnDebouncingClickListener;-><init>(ZJ)V

    #@6
    return-void
.end method

.method public constructor <init>(J)V
    .registers 4

    #@0
    const/4 v0, 0x1

    #@1
    .line 449
    invoke-direct {p0, v0, p1, p2}, Lcom/blankj/utilcode/util/ClickUtils$OnDebouncingClickListener;-><init>(ZJ)V

    #@4
    return-void
.end method

.method public constructor <init>(Z)V
    .registers 4

    #@0
    const-wide/16 v0, 0x3e8

    #@2
    .line 445
    invoke-direct {p0, p1, v0, v1}, Lcom/blankj/utilcode/util/ClickUtils$OnDebouncingClickListener;-><init>(ZJ)V

    #@5
    return-void
.end method

.method public constructor <init>(ZJ)V
    .registers 4

    #@0
    .line 452
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 453
    iput-boolean p1, p0, Lcom/blankj/utilcode/util/ClickUtils$OnDebouncingClickListener;->mIsGlobal:Z

    #@5
    .line 454
    iput-wide p2, p0, Lcom/blankj/utilcode/util/ClickUtils$OnDebouncingClickListener;->mDuration:J

    #@7
    return-void
.end method

.method static synthetic access$002(Z)Z
    .registers 1

    #@0
    .line 422
    sput-boolean p0, Lcom/blankj/utilcode/util/ClickUtils$OnDebouncingClickListener;->mEnabled:Z

    #@2
    return p0
.end method

.method private static isValid(Landroid/view/View;J)Z
    .registers 3

    #@0
    .line 434
    invoke-static {p0, p1, p2}, Lcom/blankj/utilcode/util/UtilsBridge;->isValid(Landroid/view/View;J)Z

    #@3
    move-result p0

    #@4
    return p0
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    #@0
    .line 461
    iget-boolean v0, p0, Lcom/blankj/utilcode/util/ClickUtils$OnDebouncingClickListener;->mIsGlobal:Z

    #@2
    if-eqz v0, :cond_16

    #@4
    .line 462
    sget-boolean v0, Lcom/blankj/utilcode/util/ClickUtils$OnDebouncingClickListener;->mEnabled:Z

    #@6
    if-eqz v0, :cond_21

    #@8
    const/4 v0, 0x0

    #@9
    .line 463
    sput-boolean v0, Lcom/blankj/utilcode/util/ClickUtils$OnDebouncingClickListener;->mEnabled:Z

    #@b
    .line 464
    sget-object v0, Lcom/blankj/utilcode/util/ClickUtils$OnDebouncingClickListener;->ENABLE_AGAIN:Ljava/lang/Runnable;

    #@d
    iget-wide v1, p0, Lcom/blankj/utilcode/util/ClickUtils$OnDebouncingClickListener;->mDuration:J

    #@f
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    #@12
    .line 465
    invoke-virtual {p0, p1}, Lcom/blankj/utilcode/util/ClickUtils$OnDebouncingClickListener;->onDebouncingClick(Landroid/view/View;)V

    #@15
    goto :goto_21

    #@16
    .line 468
    :cond_16
    iget-wide v0, p0, Lcom/blankj/utilcode/util/ClickUtils$OnDebouncingClickListener;->mDuration:J

    #@18
    invoke-static {p1, v0, v1}, Lcom/blankj/utilcode/util/ClickUtils$OnDebouncingClickListener;->isValid(Landroid/view/View;J)Z

    #@1b
    move-result v0

    #@1c
    if-eqz v0, :cond_21

    #@1e
    .line 469
    invoke-virtual {p0, p1}, Lcom/blankj/utilcode/util/ClickUtils$OnDebouncingClickListener;->onDebouncingClick(Landroid/view/View;)V

    #@21
    :cond_21
    :goto_21
    return-void
.end method

.method public abstract onDebouncingClick(Landroid/view/View;)V
.end method
