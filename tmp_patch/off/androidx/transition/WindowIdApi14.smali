.class Landroidx/transition/WindowIdApi14;
.super Ljava/lang/Object;
.source "WindowIdApi14.java"

# interfaces
.implements Landroidx/transition/WindowIdImpl;


# instance fields
.field private final mToken:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    #@0
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 26
    iput-object p1, p0, Landroidx/transition/WindowIdApi14;->mToken:Landroid/os/IBinder;

    #@5
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    #@0
    .line 31
    instance-of v0, p1, Landroidx/transition/WindowIdApi14;

    #@2
    if-eqz v0, :cond_12

    #@4
    check-cast p1, Landroidx/transition/WindowIdApi14;

    #@6
    iget-object p1, p1, Landroidx/transition/WindowIdApi14;->mToken:Landroid/os/IBinder;

    #@8
    iget-object v0, p0, Landroidx/transition/WindowIdApi14;->mToken:Landroid/os/IBinder;

    #@a
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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
    .line 36
    iget-object v0, p0, Landroidx/transition/WindowIdApi14;->mToken:Landroid/os/IBinder;

    #@2
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    #@5
    move-result v0

    #@6
    return v0
.end method
