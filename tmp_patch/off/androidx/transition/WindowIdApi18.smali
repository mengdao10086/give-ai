.class Landroidx/transition/WindowIdApi18;
.super Ljava/lang/Object;
.source "WindowIdApi18.java"

# interfaces
.implements Landroidx/transition/WindowIdImpl;


# instance fields
.field private final mWindowId:Landroid/view/WindowId;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 2

    #@0
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 30
    invoke-virtual {p1}, Landroid/view/View;->getWindowId()Landroid/view/WindowId;

    #@6
    move-result-object p1

    #@7
    iput-object p1, p0, Landroidx/transition/WindowIdApi18;->mWindowId:Landroid/view/WindowId;

    #@9
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    #@0
    .line 35
    instance-of v0, p1, Landroidx/transition/WindowIdApi18;

    #@2
    if-eqz v0, :cond_12

    #@4
    check-cast p1, Landroidx/transition/WindowIdApi18;

    #@6
    iget-object p1, p1, Landroidx/transition/WindowIdApi18;->mWindowId:Landroid/view/WindowId;

    #@8
    iget-object v0, p0, Landroidx/transition/WindowIdApi18;->mWindowId:Landroid/view/WindowId;

    #@a
    invoke-virtual {p1, v0}, Landroid/view/WindowId;->equals(Ljava/lang/Object;)Z

    #@d
    move-result p1

    #@e
    if-eqz p1, :cond_12

    #@10
    const/4 p1, 0x1

    #@11
    goto :goto_13

    #@12
    :cond_12
    const/4 p1, 0x0

    #@13
    :goto_13
    return p1
.end method

.method public hashCode()I
    .registers 2

    #@0
    .line 40
    iget-object v0, p0, Landroidx/transition/WindowIdApi18;->mWindowId:Landroid/view/WindowId;

    #@2
    invoke-virtual {v0}, Landroid/view/WindowId;->hashCode()I

    #@5
    move-result v0

    #@6
    return v0
.end method
