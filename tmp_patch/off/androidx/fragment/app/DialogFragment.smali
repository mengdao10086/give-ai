.class public Landroidx/fragment/app/DialogFragment;
.super Landroidx/fragment/app/Fragment;
.source "DialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# static fields
.field private static final SAVED_BACK_STACK_ID:Ljava/lang/String; = "android:backStackId"

.field private static final SAVED_CANCELABLE:Ljava/lang/String; = "android:cancelable"

.field private static final SAVED_DIALOG_STATE_TAG:Ljava/lang/String; = "android:savedDialogState"

.field private static final SAVED_INTERNAL_DIALOG_SHOWING:Ljava/lang/String; = "android:dialogShowing"

.field private static final SAVED_SHOWS_DIALOG:Ljava/lang/String; = "android:showsDialog"

.field private static final SAVED_STYLE:Ljava/lang/String; = "android:style"

.field private static final SAVED_THEME:Ljava/lang/String; = "android:theme"

.field public static final STYLE_NORMAL:I = 0x0

.field public static final STYLE_NO_FRAME:I = 0x2

.field public static final STYLE_NO_INPUT:I = 0x3

.field public static final STYLE_NO_TITLE:I = 0x1


# instance fields
.field private mBackStackId:I

.field private mCancelable:Z

.field private mCreatingDialog:Z

.field private mDialog:Landroid/app/Dialog;

.field private mDialogCreated:Z

.field private mDismissRunnable:Ljava/lang/Runnable;

.field private mDismissed:Z

.field private mHandler:Landroid/os/Handler;

.field private mObserver:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "Landroidx/lifecycle/LifecycleOwner;",
            ">;"
        }
    .end annotation
.end field

.field private mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mShownByMe:Z

.field private mShowsDialog:Z

.field private mStyle:I

.field private mTheme:I

.field private mViewDestroyed:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    #@0
    .line 189
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    #@3
    .line 108
    new-instance v0, Landroidx/fragment/app/DialogFragment$1;

    #@5
    invoke-direct {v0, p0}, Landroidx/fragment/app/DialogFragment$1;-><init>(Landroidx/fragment/app/DialogFragment;)V

    #@8
    iput-object v0, p0, Landroidx/fragment/app/DialogFragment;->mDismissRunnable:Ljava/lang/Runnable;

    #@a
    .line 116
    new-instance v0, Landroidx/fragment/app/DialogFragment$2;

    #@c
    invoke-direct {v0, p0}, Landroidx/fragment/app/DialogFragment$2;-><init>(Landroidx/fragment/app/DialogFragment;)V

    #@f
    iput-object v0, p0, Landroidx/fragment/app/DialogFragment;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    #@11
    .line 127
    new-instance v0, Landroidx/fragment/app/DialogFragment$3;

    #@13
    invoke-direct {v0, p0}, Landroidx/fragment/app/DialogFragment$3;-><init>(Landroidx/fragment/app/DialogFragment;)V

    #@16
    iput-object v0, p0, Landroidx/fragment/app/DialogFragment;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    #@18
    const/4 v0, 0x0

    #@19
    .line 138
    iput v0, p0, Landroidx/fragment/app/DialogFragment;->mStyle:I

    #@1b
    .line 139
    iput v0, p0, Landroidx/fragment/app/DialogFragment;->mTheme:I

    #@1d
    const/4 v1, 0x1

    #@1e
    .line 140
    iput-boolean v1, p0, Landroidx/fragment/app/DialogFragment;->mCancelable:Z

    #@20
    .line 141
    iput-boolean v1, p0, Landroidx/fragment/app/DialogFragment;->mShowsDialog:Z

    #@22
    const/4 v1, -0x1

    #@23
    .line 142
    iput v1, p0, Landroidx/fragment/app/DialogFragment;->mBackStackId:I

    #@25
    .line 144
    new-instance v1, Landroidx/fragment/app/DialogFragment$4;

    #@27
    invoke-direct {v1, p0}, Landroidx/fragment/app/DialogFragment$4;-><init>(Landroidx/fragment/app/DialogFragment;)V

    #@2a
    iput-object v1, p0, Landroidx/fragment/app/DialogFragment;->mObserver:Landroidx/lifecycle/Observer;

    #@2c
    .line 170
    iput-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mDialogCreated:Z

    #@2e
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    #@0
    .line 214
    invoke-direct {p0, p1}, Landroidx/fragment/app/Fragment;-><init>(I)V

    #@3
    .line 108
    new-instance p1, Landroidx/fragment/app/DialogFragment$1;

    #@5
    invoke-direct {p1, p0}, Landroidx/fragment/app/DialogFragment$1;-><init>(Landroidx/fragment/app/DialogFragment;)V

    #@8
    iput-object p1, p0, Landroidx/fragment/app/DialogFragment;->mDismissRunnable:Ljava/lang/Runnable;

    #@a
    .line 116
    new-instance p1, Landroidx/fragment/app/DialogFragment$2;

    #@c
    invoke-direct {p1, p0}, Landroidx/fragment/app/DialogFragment$2;-><init>(Landroidx/fragment/app/DialogFragment;)V

    #@f
    iput-object p1, p0, Landroidx/fragment/app/DialogFragment;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    #@11
    .line 127
    new-instance p1, Landroidx/fragment/app/DialogFragment$3;

    #@13
    invoke-direct {p1, p0}, Landroidx/fragment/app/DialogFragment$3;-><init>(Landroidx/fragment/app/DialogFragment;)V

    #@16
    iput-object p1, p0, Landroidx/fragment/app/DialogFragment;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    #@18
    const/4 p1, 0x0

    #@19
    .line 138
    iput p1, p0, Landroidx/fragment/app/DialogFragment;->mStyle:I

    #@1b
    .line 139
    iput p1, p0, Landroidx/fragment/app/DialogFragment;->mTheme:I

    #@1d
    const/4 v0, 0x1

    #@1e
    .line 140
    iput-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mCancelable:Z

    #@20
    .line 141
    iput-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mShowsDialog:Z

    #@22
    const/4 v0, -0x1

    #@23
    .line 142
    iput v0, p0, Landroidx/fragment/app/DialogFragment;->mBackStackId:I

    #@25
    .line 144
    new-instance v0, Landroidx/fragment/app/DialogFragment$4;

    #@27
    invoke-direct {v0, p0}, Landroidx/fragment/app/DialogFragment$4;-><init>(Landroidx/fragment/app/DialogFragment;)V

    #@2a
    iput-object v0, p0, Landroidx/fragment/app/DialogFragment;->mObserver:Landroidx/lifecycle/Observer;

    #@2c
    .line 170
    iput-boolean p1, p0, Landroidx/fragment/app/DialogFragment;->mDialogCreated:Z

    #@2e
    return-void
.end method

.method static synthetic access$000(Landroidx/fragment/app/DialogFragment;)Landroid/app/Dialog;
    .registers 1

    #@0
    .line 61
    iget-object p0, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@2
    return-object p0
.end method

.method static synthetic access$100(Landroidx/fragment/app/DialogFragment;)Landroid/content/DialogInterface$OnDismissListener;
    .registers 1

    #@0
    .line 61
    iget-object p0, p0, Landroidx/fragment/app/DialogFragment;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    #@2
    return-object p0
.end method

.method static synthetic access$200(Landroidx/fragment/app/DialogFragment;)Z
    .registers 1

    #@0
    .line 61
    iget-boolean p0, p0, Landroidx/fragment/app/DialogFragment;->mShowsDialog:Z

    #@2
    return p0
.end method

.method private dismissInternal(ZZZ)V
    .registers 7

    #@0
    .line 333
    iget-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mDismissed:Z

    #@2
    if-eqz v0, :cond_5

    #@4
    return-void

    #@5
    :cond_5
    const/4 v0, 0x1

    #@6
    .line 336
    iput-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mDismissed:Z

    #@8
    const/4 v1, 0x0

    #@9
    .line 337
    iput-boolean v1, p0, Landroidx/fragment/app/DialogFragment;->mShownByMe:Z

    #@b
    .line 338
    iget-object v1, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@d
    if-eqz v1, :cond_33

    #@f
    const/4 v2, 0x0

    #@10
    .line 342
    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    #@13
    .line 343
    iget-object v1, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@15
    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    #@18
    if-nez p2, :cond_33

    #@1a
    .line 349
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@1d
    move-result-object p2

    #@1e
    iget-object v1, p0, Landroidx/fragment/app/DialogFragment;->mHandler:Landroid/os/Handler;

    #@20
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@23
    move-result-object v1

    #@24
    if-ne p2, v1, :cond_2c

    #@26
    .line 350
    iget-object p2, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@28
    invoke-virtual {p0, p2}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    #@2b
    goto :goto_33

    #@2c
    .line 352
    :cond_2c
    iget-object p2, p0, Landroidx/fragment/app/DialogFragment;->mHandler:Landroid/os/Handler;

    #@2e
    iget-object v1, p0, Landroidx/fragment/app/DialogFragment;->mDismissRunnable:Ljava/lang/Runnable;

    #@30
    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@33
    .line 356
    :cond_33
    :goto_33
    iput-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mViewDestroyed:Z

    #@35
    .line 357
    iget p2, p0, Landroidx/fragment/app/DialogFragment;->mBackStackId:I

    #@37
    if-ltz p2, :cond_52

    #@39
    if-eqz p3, :cond_45

    #@3b
    .line 359
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    #@3e
    move-result-object p1

    #@3f
    iget p2, p0, Landroidx/fragment/app/DialogFragment;->mBackStackId:I

    #@41
    invoke-virtual {p1, p2, v0}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate(II)Z

    #@44
    goto :goto_4e

    #@45
    .line 362
    :cond_45
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    #@48
    move-result-object p2

    #@49
    iget p3, p0, Landroidx/fragment/app/DialogFragment;->mBackStackId:I

    #@4b
    invoke-virtual {p2, p3, v0, p1}, Landroidx/fragment/app/FragmentManager;->popBackStack(IIZ)V

    #@4e
    :goto_4e
    const/4 p1, -0x1

    #@4f
    .line 365
    iput p1, p0, Landroidx/fragment/app/DialogFragment;->mBackStackId:I

    #@51
    goto :goto_6f

    #@52
    .line 367
    :cond_52
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    #@55
    move-result-object p2

    #@56
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    #@59
    move-result-object p2

    #@5a
    .line 368
    invoke-virtual {p2, v0}, Landroidx/fragment/app/FragmentTransaction;->setReorderingAllowed(Z)Landroidx/fragment/app/FragmentTransaction;

    #@5d
    .line 369
    invoke-virtual {p2, p0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    #@60
    if-eqz p3, :cond_66

    #@62
    .line 372
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentTransaction;->commitNow()V

    #@65
    goto :goto_6f

    #@66
    :cond_66
    if-eqz p1, :cond_6c

    #@68
    .line 374
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    #@6b
    goto :goto_6f

    #@6c
    .line 376
    :cond_6c
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    #@6f
    :goto_6f
    return-void
.end method

.method private prepareDialog(Landroid/os/Bundle;)V
    .registers 5

    #@0
    .line 658
    iget-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mShowsDialog:Z

    #@2
    if-nez v0, :cond_5

    #@4
    return-void

    #@5
    .line 662
    :cond_5
    iget-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mDialogCreated:Z

    #@7
    if-nez v0, :cond_4d

    #@9
    const/4 v0, 0x0

    #@a
    const/4 v1, 0x1

    #@b
    .line 664
    :try_start_b
    iput-boolean v1, p0, Landroidx/fragment/app/DialogFragment;->mCreatingDialog:Z

    #@d
    .line 665
    invoke-virtual {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    #@10
    move-result-object p1

    #@11
    iput-object p1, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@13
    .line 668
    iget-boolean v2, p0, Landroidx/fragment/app/DialogFragment;->mShowsDialog:Z

    #@15
    if-eqz v2, :cond_43

    #@17
    .line 669
    iget v2, p0, Landroidx/fragment/app/DialogFragment;->mStyle:I

    #@19
    invoke-virtual {p0, p1, v2}, Landroidx/fragment/app/DialogFragment;->setupDialog(Landroid/app/Dialog;I)V

    #@1c
    .line 670
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getContext()Landroid/content/Context;

    #@1f
    move-result-object p1

    #@20
    .line 671
    instance-of v2, p1, Landroid/app/Activity;

    #@22
    if-eqz v2, :cond_2b

    #@24
    .line 672
    iget-object v2, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@26
    check-cast p1, Landroid/app/Activity;

    #@28
    invoke-virtual {v2, p1}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    #@2b
    .line 674
    :cond_2b
    iget-object p1, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@2d
    iget-boolean v2, p0, Landroidx/fragment/app/DialogFragment;->mCancelable:Z

    #@2f
    invoke-virtual {p1, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    #@32
    .line 675
    iget-object p1, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@34
    iget-object v2, p0, Landroidx/fragment/app/DialogFragment;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    #@36
    invoke-virtual {p1, v2}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    #@39
    .line 676
    iget-object p1, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@3b
    iget-object v2, p0, Landroidx/fragment/app/DialogFragment;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    #@3d
    invoke-virtual {p1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    #@40
    .line 677
    iput-boolean v1, p0, Landroidx/fragment/app/DialogFragment;->mDialogCreated:Z

    #@42
    goto :goto_46

    #@43
    :cond_43
    const/4 p1, 0x0

    #@44
    .line 681
    iput-object p1, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;
    :try_end_46
    .catchall {:try_start_b .. :try_end_46} :catchall_49

    #@46
    .line 684
    :goto_46
    iput-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mCreatingDialog:Z

    #@48
    goto :goto_4d

    #@49
    :catchall_49
    move-exception p1

    #@4a
    iput-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mCreatingDialog:Z

    #@4c
    .line 685
    throw p1

    #@4d
    :cond_4d
    :goto_4d
    return-void
.end method


# virtual methods
.method createFragmentContainer()Landroidx/fragment/app/FragmentContainer;
    .registers 3

    #@0
    .line 526
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->createFragmentContainer()Landroidx/fragment/app/FragmentContainer;

    #@3
    move-result-object v0

    #@4
    .line 527
    new-instance v1, Landroidx/fragment/app/DialogFragment$5;

    #@6
    invoke-direct {v1, p0, v0}, Landroidx/fragment/app/DialogFragment$5;-><init>(Landroidx/fragment/app/DialogFragment;Landroidx/fragment/app/FragmentContainer;)V

    #@9
    return-object v1
.end method

.method public dismiss()V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    .line 310
    invoke-direct {p0, v0, v0, v0}, Landroidx/fragment/app/DialogFragment;->dismissInternal(ZZZ)V

    #@4
    return-void
.end method

.method public dismissAllowingStateLoss()V
    .registers 3

    #@0
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 329
    invoke-direct {p0, v0, v1, v1}, Landroidx/fragment/app/DialogFragment;->dismissInternal(ZZZ)V

    #@5
    return-void
.end method

.method public dismissNow()V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    .line 319
    invoke-direct {p0, v0, v0, v1}, Landroidx/fragment/app/DialogFragment;->dismissInternal(ZZZ)V

    #@5
    return-void
.end method

.method public getDialog()Landroid/app/Dialog;
    .registers 2

    #@0
    .line 388
    iget-object v0, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@2
    return-object v0
.end method

.method public getShowsDialog()Z
    .registers 2

    #@0
    .line 460
    iget-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mShowsDialog:Z

    #@2
    return v0
.end method

.method public getTheme()I
    .registers 2

    #@0
    .line 409
    iget v0, p0, Landroidx/fragment/app/DialogFragment;->mTheme:I

    #@2
    return v0
.end method

.method public isCancelable()Z
    .registers 2

    #@0
    .line 430
    iget-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mCancelable:Z

    #@2
    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 718
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    #@3
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .registers 3

    #@0
    .line 466
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    #@3
    .line 467
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getViewLifecycleOwnerLiveData()Landroidx/lifecycle/LiveData;

    #@6
    move-result-object p1

    #@7
    iget-object v0, p0, Landroidx/fragment/app/DialogFragment;->mObserver:Landroidx/lifecycle/Observer;

    #@9
    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    #@c
    .line 468
    iget-boolean p1, p0, Landroidx/fragment/app/DialogFragment;->mShownByMe:Z

    #@e
    if-nez p1, :cond_13

    #@10
    const/4 p1, 0x0

    #@11
    .line 471
    iput-boolean p1, p0, Landroidx/fragment/app/DialogFragment;->mDismissed:Z

    #@13
    :cond_13
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 2

    #@0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    #@0
    .line 492
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    #@3
    .line 494
    new-instance v0, Landroid/os/Handler;

    #@5
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    #@8
    iput-object v0, p0, Landroidx/fragment/app/DialogFragment;->mHandler:Landroid/os/Handler;

    #@a
    .line 496
    iget v0, p0, Landroidx/fragment/app/DialogFragment;->mContainerId:I

    #@c
    const/4 v1, 0x1

    #@d
    const/4 v2, 0x0

    #@e
    if-nez v0, :cond_12

    #@10
    move v0, v1

    #@11
    goto :goto_13

    #@12
    :cond_12
    move v0, v2

    #@13
    :goto_13
    iput-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mShowsDialog:Z

    #@15
    if-eqz p1, :cond_42

    #@17
    const-string v0, "android:style"

    #@19
    .line 499
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@1c
    move-result v0

    #@1d
    iput v0, p0, Landroidx/fragment/app/DialogFragment;->mStyle:I

    #@1f
    const-string v0, "android:theme"

    #@21
    .line 500
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@24
    move-result v0

    #@25
    iput v0, p0, Landroidx/fragment/app/DialogFragment;->mTheme:I

    #@27
    const-string v0, "android:cancelable"

    #@29
    .line 501
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@2c
    move-result v0

    #@2d
    iput-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mCancelable:Z

    #@2f
    const-string v0, "android:showsDialog"

    #@31
    .line 502
    iget-boolean v1, p0, Landroidx/fragment/app/DialogFragment;->mShowsDialog:Z

    #@33
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@36
    move-result v0

    #@37
    iput-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mShowsDialog:Z

    #@39
    const-string v0, "android:backStackId"

    #@3b
    const/4 v1, -0x1

    #@3c
    .line 503
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@3f
    move-result p1

    #@40
    iput p1, p0, Landroidx/fragment/app/DialogFragment;->mBackStackId:I

    #@42
    :cond_42
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 4

    #@0
    const/4 p1, 0x3

    #@1
    .line 633
    invoke-static {p1}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    #@4
    move-result p1

    #@5
    if-eqz p1, :cond_1b

    #@7
    .line 634
    new-instance p1, Ljava/lang/StringBuilder;

    #@9
    const-string v0, "onCreateDialog called for DialogFragment "

    #@b
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@e
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object p1

    #@12
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object p1

    #@16
    const-string v0, "FragmentManager"

    #@18
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1b
    .line 636
    :cond_1b
    new-instance p1, Landroidx/activity/ComponentDialog;

    #@1d
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->requireContext()Landroid/content/Context;

    #@20
    move-result-object v0

    #@21
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getTheme()I

    #@24
    move-result v1

    #@25
    invoke-direct {p1, v0, v1}, Landroidx/activity/ComponentDialog;-><init>(Landroid/content/Context;I)V

    #@28
    return-object p1
.end method

.method public onDestroyView()V
    .registers 3

    #@0
    .line 778
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    #@3
    .line 779
    iget-object v0, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@5
    if-eqz v0, :cond_21

    #@7
    const/4 v1, 0x1

    #@8
    .line 783
    iput-boolean v1, p0, Landroidx/fragment/app/DialogFragment;->mViewDestroyed:Z

    #@a
    const/4 v1, 0x0

    #@b
    .line 787
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    #@e
    .line 788
    iget-object v0, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@10
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    #@13
    .line 789
    iget-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mDismissed:Z

    #@15
    if-nez v0, :cond_1c

    #@17
    .line 792
    iget-object v0, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@19
    invoke-virtual {p0, v0}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    #@1c
    .line 794
    :cond_1c
    iput-object v1, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@1e
    const/4 v0, 0x0

    #@1f
    .line 795
    iput-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mDialogCreated:Z

    #@21
    :cond_21
    return-void
.end method

.method public onDetach()V
    .registers 3

    #@0
    .line 478
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    #@3
    .line 479
    iget-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mShownByMe:Z

    #@5
    if-nez v0, :cond_e

    #@7
    iget-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mDismissed:Z

    #@9
    if-nez v0, :cond_e

    #@b
    const/4 v0, 0x1

    #@c
    .line 483
    iput-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mDismissed:Z

    #@e
    .line 485
    :cond_e
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getViewLifecycleOwnerLiveData()Landroidx/lifecycle/LiveData;

    #@11
    move-result-object v0

    #@12
    iget-object v1, p0, Landroidx/fragment/app/DialogFragment;->mObserver:Landroidx/lifecycle/Observer;

    #@14
    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    #@17
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3

    #@0
    .line 645
    iget-boolean p1, p0, Landroidx/fragment/app/DialogFragment;->mViewDestroyed:Z

    #@2
    if-nez p1, :cond_24

    #@4
    const/4 p1, 0x3

    #@5
    .line 650
    invoke-static {p1}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    #@8
    move-result p1

    #@9
    if-eqz p1, :cond_1f

    #@b
    .line 651
    new-instance p1, Ljava/lang/StringBuilder;

    #@d
    const-string v0, "onDismiss called for DialogFragment "

    #@f
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@12
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@15
    move-result-object p1

    #@16
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object p1

    #@1a
    const-string v0, "FragmentManager"

    #@1c
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1f
    :cond_1f
    const/4 p1, 0x0

    #@20
    const/4 v0, 0x1

    #@21
    .line 653
    invoke-direct {p0, v0, v0, p1}, Landroidx/fragment/app/DialogFragment;->dismissInternal(ZZZ)V

    #@24
    :cond_24
    return-void
.end method

.method onFindViewById(I)Landroid/view/View;
    .registers 3

    #@0
    .line 546
    iget-object v0, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@2
    if-eqz v0, :cond_9

    #@4
    .line 547
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    #@7
    move-result-object p1

    #@8
    return-object p1

    #@9
    :cond_9
    const/4 p1, 0x0

    #@a
    return-object p1
.end method

.method public onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .registers 6

    #@0
    .line 566
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    #@3
    move-result-object v0

    #@4
    .line 567
    iget-boolean v1, p0, Landroidx/fragment/app/DialogFragment;->mShowsDialog:Z

    #@6
    const/4 v2, 0x2

    #@7
    const-string v3, "FragmentManager"

    #@9
    if-eqz v1, :cond_3e

    #@b
    iget-boolean v1, p0, Landroidx/fragment/app/DialogFragment;->mCreatingDialog:Z

    #@d
    if-eqz v1, :cond_10

    #@f
    goto :goto_3e

    #@10
    .line 579
    :cond_10
    invoke-direct {p0, p1}, Landroidx/fragment/app/DialogFragment;->prepareDialog(Landroid/os/Bundle;)V

    #@13
    .line 581
    invoke-static {v2}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    #@16
    move-result p1

    #@17
    if-eqz p1, :cond_31

    #@19
    .line 582
    new-instance p1, Ljava/lang/StringBuilder;

    #@1b
    const-string v1, "get layout inflater for DialogFragment "

    #@1d
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@20
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@23
    move-result-object p1

    #@24
    const-string v1, " from dialog context"

    #@26
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object p1

    #@2a
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object p1

    #@2e
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@31
    .line 585
    :cond_31
    iget-object p1, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@33
    if-eqz p1, :cond_3d

    #@35
    .line 586
    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    #@38
    move-result-object p1

    #@39
    invoke-virtual {v0, p1}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@3c
    move-result-object v0

    #@3d
    :cond_3d
    return-object v0

    #@3e
    .line 568
    :cond_3e
    :goto_3e
    invoke-static {v2}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    #@41
    move-result p1

    #@42
    if-eqz p1, :cond_7c

    #@44
    .line 569
    new-instance p1, Ljava/lang/StringBuilder;

    #@46
    const-string v1, "getting layout inflater for DialogFragment "

    #@48
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@4b
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object p1

    #@4f
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object p1

    #@53
    .line 570
    iget-boolean v1, p0, Landroidx/fragment/app/DialogFragment;->mShowsDialog:Z

    #@55
    if-nez v1, :cond_6a

    #@57
    .line 571
    new-instance v1, Ljava/lang/StringBuilder;

    #@59
    const-string v2, "mShowsDialog = false: "

    #@5b
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@5e
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object p1

    #@62
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@65
    move-result-object p1

    #@66
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@69
    goto :goto_7c

    #@6a
    .line 573
    :cond_6a
    new-instance v1, Ljava/lang/StringBuilder;

    #@6c
    const-string v2, "mCreatingDialog = true: "

    #@6e
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@71
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object p1

    #@75
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@78
    move-result-object p1

    #@79
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@7c
    :cond_7c
    :goto_7c
    return-object v0
.end method

.method onHasView()Z
    .registers 2

    #@0
    .line 553
    iget-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mDialogCreated:Z

    #@2
    return v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5

    #@0
    .line 740
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    #@3
    .line 741
    iget-object v0, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@5
    if-eqz v0, :cond_16

    #@7
    .line 742
    invoke-virtual {v0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    #@a
    move-result-object v0

    #@b
    const-string v1, "android:dialogShowing"

    #@d
    const/4 v2, 0x0

    #@e
    .line 743
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@11
    const-string v1, "android:savedDialogState"

    #@13
    .line 744
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    #@16
    .line 746
    :cond_16
    iget v0, p0, Landroidx/fragment/app/DialogFragment;->mStyle:I

    #@18
    if-eqz v0, :cond_1f

    #@1a
    const-string v1, "android:style"

    #@1c
    .line 747
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@1f
    .line 749
    :cond_1f
    iget v0, p0, Landroidx/fragment/app/DialogFragment;->mTheme:I

    #@21
    if-eqz v0, :cond_28

    #@23
    const-string v1, "android:theme"

    #@25
    .line 750
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@28
    .line 752
    :cond_28
    iget-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mCancelable:Z

    #@2a
    if-nez v0, :cond_31

    #@2c
    const-string v1, "android:cancelable"

    #@2e
    .line 753
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@31
    .line 755
    :cond_31
    iget-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mShowsDialog:Z

    #@33
    if-nez v0, :cond_3a

    #@35
    const-string v1, "android:showsDialog"

    #@37
    .line 756
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@3a
    .line 758
    :cond_3a
    iget v0, p0, Landroidx/fragment/app/DialogFragment;->mBackStackId:I

    #@3c
    const/4 v1, -0x1

    #@3d
    if-eq v0, v1, :cond_44

    #@3f
    const-string v1, "android:backStackId"

    #@41
    .line 759
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@44
    :cond_44
    return-void
.end method

.method public onStart()V
    .registers 3

    #@0
    .line 724
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    #@3
    .line 726
    iget-object v0, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@5
    if-eqz v0, :cond_20

    #@7
    const/4 v1, 0x0

    #@8
    .line 727
    iput-boolean v1, p0, Landroidx/fragment/app/DialogFragment;->mViewDestroyed:Z

    #@a
    .line 728
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    #@d
    .line 730
    iget-object v0, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@f
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    #@16
    move-result-object v0

    #@17
    .line 731
    invoke-static {v0, p0}, Landroidx/lifecycle/ViewTreeLifecycleOwner;->set(Landroid/view/View;Landroidx/lifecycle/LifecycleOwner;)V

    #@1a
    .line 732
    invoke-static {v0, p0}, Landroidx/lifecycle/ViewTreeViewModelStoreOwner;->set(Landroid/view/View;Landroidx/lifecycle/ViewModelStoreOwner;)V

    #@1d
    .line 733
    invoke-static {v0, p0}, Landroidx/savedstate/ViewTreeSavedStateRegistryOwner;->set(Landroid/view/View;Landroidx/savedstate/SavedStateRegistryOwner;)V

    #@20
    :cond_20
    return-void
.end method

.method public onStop()V
    .registers 2

    #@0
    .line 766
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    #@3
    .line 767
    iget-object v0, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@5
    if-eqz v0, :cond_a

    #@7
    .line 768
    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    #@a
    :cond_a
    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .registers 3

    #@0
    .line 692
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onViewStateRestored(Landroid/os/Bundle;)V

    #@3
    .line 693
    iget-object v0, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@5
    if-eqz v0, :cond_16

    #@7
    if-eqz p1, :cond_16

    #@9
    const-string v0, "android:savedDialogState"

    #@b
    .line 694
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    #@e
    move-result-object p1

    #@f
    if-eqz p1, :cond_16

    #@11
    .line 696
    iget-object v0, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@13
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    #@16
    :cond_16
    return-void
.end method

.method performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .registers 4

    #@0
    .line 510
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    #@3
    .line 513
    iget-object p1, p0, Landroidx/fragment/app/DialogFragment;->mView:Landroid/view/View;

    #@5
    if-nez p1, :cond_1a

    #@7
    .line 514
    iget-object p1, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@9
    if-eqz p1, :cond_1a

    #@b
    if-eqz p3, :cond_1a

    #@d
    const-string p1, "android:savedDialogState"

    #@f
    .line 515
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    #@12
    move-result-object p1

    #@13
    if-eqz p1, :cond_1a

    #@15
    .line 517
    iget-object p2, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@17
    invoke-virtual {p2, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    #@1a
    :cond_1a
    return-void
.end method

.method public final requireDialog()Landroid/app/Dialog;
    .registers 4

    #@0
    .line 400
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_7

    #@6
    return-object v0

    #@7
    .line 402
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    #@9
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    const-string v2, "DialogFragment "

    #@d
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@10
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    const-string v2, " does not have a Dialog."

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@21
    throw v0
.end method

.method public setCancelable(Z)V
    .registers 3

    #@0
    .line 422
    iput-boolean p1, p0, Landroidx/fragment/app/DialogFragment;->mCancelable:Z

    #@2
    .line 423
    iget-object v0, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    #@4
    if-eqz v0, :cond_9

    #@6
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    #@9
    :cond_9
    return-void
.end method

.method public setShowsDialog(Z)V
    .registers 2

    #@0
    .line 453
    iput-boolean p1, p0, Landroidx/fragment/app/DialogFragment;->mShowsDialog:Z

    #@2
    return-void
.end method

.method public setStyle(II)V
    .registers 6

    #@0
    const/4 v0, 0x2

    #@1
    .line 232
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_2f

    #@7
    .line 233
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    const-string v2, "Setting style and theme for DialogFragment "

    #@b
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@e
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    const-string v2, " to "

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    const-string v2, ", "

    #@1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    const-string v2, "FragmentManager"

    #@2c
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2f
    .line 236
    :cond_2f
    iput p1, p0, Landroidx/fragment/app/DialogFragment;->mStyle:I

    #@31
    if-eq p1, v0, :cond_36

    #@33
    const/4 v0, 0x3

    #@34
    if-ne p1, v0, :cond_3b

    #@36
    :cond_36
    const p1, 0x1030059

    #@39
    .line 238
    iput p1, p0, Landroidx/fragment/app/DialogFragment;->mTheme:I

    #@3b
    :cond_3b
    if-eqz p2, :cond_3f

    #@3d
    .line 241
    iput p2, p0, Landroidx/fragment/app/DialogFragment;->mTheme:I

    #@3f
    :cond_3f
    return-void
.end method

.method public setupDialog(Landroid/app/Dialog;I)V
    .registers 5

    #@0
    const/4 v0, 0x1

    #@1
    if-eq p2, v0, :cond_15

    #@3
    const/4 v1, 0x2

    #@4
    if-eq p2, v1, :cond_15

    #@6
    const/4 v1, 0x3

    #@7
    if-eq p2, v1, :cond_a

    #@9
    goto :goto_18

    #@a
    .line 596
    :cond_a
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    #@d
    move-result-object p2

    #@e
    if-eqz p2, :cond_15

    #@10
    const/16 v1, 0x18

    #@12
    .line 598
    invoke-virtual {p2, v1}, Landroid/view/Window;->addFlags(I)V

    #@15
    .line 604
    :cond_15
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    #@18
    :goto_18
    return-void
.end method

.method public show(Landroidx/fragment/app/FragmentTransaction;Ljava/lang/String;)I
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    .line 275
    iput-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mDismissed:Z

    #@3
    const/4 v1, 0x1

    #@4
    .line 276
    iput-boolean v1, p0, Landroidx/fragment/app/DialogFragment;->mShownByMe:Z

    #@6
    .line 277
    invoke-virtual {p1, p0, p2}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    #@9
    .line 278
    iput-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mViewDestroyed:Z

    #@b
    .line 279
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    #@e
    move-result p1

    #@f
    iput p1, p0, Landroidx/fragment/app/DialogFragment;->mBackStackId:I

    #@11
    return p1
.end method

.method public show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 257
    iput-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mDismissed:Z

    #@3
    const/4 v0, 0x1

    #@4
    .line 258
    iput-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mShownByMe:Z

    #@6
    .line 259
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    #@9
    move-result-object p1

    #@a
    .line 260
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->setReorderingAllowed(Z)Landroidx/fragment/app/FragmentTransaction;

    #@d
    .line 261
    invoke-virtual {p1, p0, p2}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    #@10
    .line 262
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    #@13
    return-void
.end method

.method public showNow(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 295
    iput-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mDismissed:Z

    #@3
    const/4 v0, 0x1

    #@4
    .line 296
    iput-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mShownByMe:Z

    #@6
    .line 297
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    #@9
    move-result-object p1

    #@a
    .line 298
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->setReorderingAllowed(Z)Landroidx/fragment/app/FragmentTransaction;

    #@d
    .line 299
    invoke-virtual {p1, p0, p2}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    #@10
    .line 300
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitNow()V

    #@13
    return-void
.end method
