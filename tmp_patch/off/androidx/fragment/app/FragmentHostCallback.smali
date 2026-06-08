.class public abstract Landroidx/fragment/app/FragmentHostCallback;
.super Landroidx/fragment/app/FragmentContainer;
.source "FragmentHostCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/fragment/app/FragmentContainer;"
    }
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mContext:Landroid/content/Context;

.field final mFragmentManager:Landroidx/fragment/app/FragmentManager;

.field private final mHandler:Landroid/os/Handler;

.field private final mWindowAnimations:I


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V
    .registers 6

    #@0
    .line 96
    invoke-direct {p0}, Landroidx/fragment/app/FragmentContainer;-><init>()V

    #@3
    .line 82
    new-instance v0, Landroidx/fragment/app/FragmentManagerImpl;

    #@5
    invoke-direct {v0}, Landroidx/fragment/app/FragmentManagerImpl;-><init>()V

    #@8
    iput-object v0, p0, Landroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@a
    .line 97
    iput-object p1, p0, Landroidx/fragment/app/FragmentHostCallback;->mActivity:Landroid/app/Activity;

    #@c
    const-string p1, "context == null"

    #@e
    .line 98
    invoke-static {p2, p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    move-result-object p1

    #@12
    check-cast p1, Landroid/content/Context;

    #@14
    iput-object p1, p0, Landroidx/fragment/app/FragmentHostCallback;->mContext:Landroid/content/Context;

    #@16
    const-string p1, "handler == null"

    #@18
    .line 99
    invoke-static {p3, p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1b
    move-result-object p1

    #@1c
    check-cast p1, Landroid/os/Handler;

    #@1e
    iput-object p1, p0, Landroidx/fragment/app/FragmentHostCallback;->mHandler:Landroid/os/Handler;

    #@20
    .line 100
    iput p4, p0, Landroidx/fragment/app/FragmentHostCallback;->mWindowAnimations:I

    #@22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;I)V
    .registers 5

    #@0
    .line 86
    instance-of v0, p1, Landroid/app/Activity;

    #@2
    if-eqz v0, :cond_8

    #@4
    move-object v0, p1

    #@5
    check-cast v0, Landroid/app/Activity;

    #@7
    goto :goto_9

    #@8
    :cond_8
    const/4 v0, 0x0

    #@9
    :goto_9
    invoke-direct {p0, v0, p1, p2, p3}, Landroidx/fragment/app/FragmentHostCallback;-><init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V

    #@c
    return-void
.end method

.method constructor <init>(Landroidx/fragment/app/FragmentActivity;)V
    .registers 4

    #@0
    .line 92
    new-instance v0, Landroid/os/Handler;

    #@2
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    #@5
    const/4 v1, 0x0

    #@6
    invoke-direct {p0, p1, p1, v0, v1}, Landroidx/fragment/app/FragmentHostCallback;-><init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V

    #@9
    return-void
.end method


# virtual methods
.method getActivity()Landroid/app/Activity;
    .registers 2

    #@0
    .line 243
    iget-object v0, p0, Landroidx/fragment/app/FragmentHostCallback;->mActivity:Landroid/app/Activity;

    #@2
    return-object v0
.end method

.method getContext()Landroid/content/Context;
    .registers 2

    #@0
    .line 248
    iget-object v0, p0, Landroidx/fragment/app/FragmentHostCallback;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .registers 2

    #@0
    .line 255
    iget-object v0, p0, Landroidx/fragment/app/FragmentHostCallback;->mHandler:Landroid/os/Handler;

    #@2
    return-object v0
.end method

.method public onDump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    #@0
    return-void
.end method

.method public onFindViewById(I)Landroid/view/View;
    .registers 2

    #@0
    const/4 p1, 0x0

    #@1
    return-object p1
.end method

.method public abstract onGetHost()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation
.end method

.method public onGetLayoutInflater()Landroid/view/LayoutInflater;
    .registers 2

    #@0
    .line 129
    iget-object v0, p0, Landroidx/fragment/app/FragmentHostCallback;->mContext:Landroid/content/Context;

    #@2
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public onGetWindowAnimations()I
    .registers 2

    #@0
    .line 227
    iget v0, p0, Landroidx/fragment/app/FragmentHostCallback;->mWindowAnimations:I

    #@2
    return v0
.end method

.method public onHasView()Z
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public onHasWindowAnimations()Z
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public onRequestPermissionsFromFragment(Landroidx/fragment/app/Fragment;[Ljava/lang/String;I)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    return-void
.end method

.method public onShouldSaveFragmentState(Landroidx/fragment/app/Fragment;)Z
    .registers 2

    #@0
    const/4 p1, 0x1

    #@1
    return p1
.end method

.method public onShouldShowRequestPermissionRationale(Ljava/lang/String;)Z
    .registers 2

    #@0
    const/4 p1, 0x0

    #@1
    return p1
.end method

.method public onStartActivityFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    .line 153
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/fragment/app/FragmentHostCallback;->onStartActivityFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    #@4
    return-void
.end method

.method public onStartActivityFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 5

    #@0
    const/4 p1, -0x1

    #@1
    if-ne p3, p1, :cond_9

    #@3
    .line 167
    iget-object p1, p0, Landroidx/fragment/app/FragmentHostCallback;->mContext:Landroid/content/Context;

    #@5
    invoke-static {p1, p2, p4}, Landroidx/core/content/ContextCompat;->startActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    #@8
    return-void

    #@9
    .line 164
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    #@b
    const-string p2, "Starting activity with a requestCode requires a FragmentActivity host"

    #@d
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@10
    throw p1
.end method

.method public onStartIntentSenderFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    const/4 v0, -0x1

    #@1
    move v3, p3

    #@2
    if-ne v3, v0, :cond_14

    #@4
    move-object v0, p0

    #@5
    .line 189
    iget-object v1, v0, Landroidx/fragment/app/FragmentHostCallback;->mActivity:Landroid/app/Activity;

    #@7
    move-object v2, p2

    #@8
    move v3, p3

    #@9
    move-object v4, p4

    #@a
    move v5, p5

    #@b
    move v6, p6

    #@c
    move/from16 v7, p7

    #@e
    move-object/from16 v8, p8

    #@10
    invoke-static/range {v1 .. v8}, Landroidx/core/app/ActivityCompat;->startIntentSenderForResult(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    #@13
    return-void

    #@14
    :cond_14
    move-object v0, p0

    #@15
    .line 186
    new-instance v1, Ljava/lang/IllegalStateException;

    #@17
    const-string v2, "Starting intent sender with a requestCode requires a FragmentActivity host"

    #@19
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v1
.end method

.method public onSupportInvalidateOptionsMenu()V
    .registers 1

    #@0
    return-void
.end method
