.class Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;
.super Landroidx/activity/result/contract/ActivityResultContract;
.source "FragmentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/FragmentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FragmentIntentSenderContract"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/activity/result/contract/ActivityResultContract<",
        "Landroidx/activity/result/IntentSenderRequest;",
        "Landroidx/activity/result/ActivityResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    .line 3553
    invoke-direct {p0}, Landroidx/activity/result/contract/ActivityResultContract;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createIntent(Landroid/content/Context;Landroidx/activity/result/IntentSenderRequest;)Landroid/content/Intent;
    .registers 6

    #@0
    .line 3559
    new-instance p1, Landroid/content/Intent;

    #@2
    const-string v0, "androidx.activity.result.contract.action.INTENT_SENDER_REQUEST"

    #@4
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@7
    .line 3560
    invoke-virtual {p2}, Landroidx/activity/result/IntentSenderRequest;->getFillInIntent()Landroid/content/Intent;

    #@a
    move-result-object v0

    #@b
    if-eqz v0, :cond_42

    #@d
    const-string v1, "androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE"

    #@f
    .line 3562
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    #@12
    move-result-object v2

    #@13
    if-eqz v2, :cond_42

    #@15
    .line 3564
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    #@18
    .line 3565
    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    #@1b
    const-string v1, "androidx.fragment.extra.ACTIVITY_OPTIONS_BUNDLE"

    #@1d
    const/4 v2, 0x0

    #@1e
    .line 3566
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    #@21
    move-result v0

    #@22
    if-eqz v0, :cond_42

    #@24
    .line 3567
    new-instance v0, Landroidx/activity/result/IntentSenderRequest$Builder;

    #@26
    invoke-virtual {p2}, Landroidx/activity/result/IntentSenderRequest;->getIntentSender()Landroid/content/IntentSender;

    #@29
    move-result-object v1

    #@2a
    invoke-direct {v0, v1}, Landroidx/activity/result/IntentSenderRequest$Builder;-><init>(Landroid/content/IntentSender;)V

    #@2d
    const/4 v1, 0x0

    #@2e
    .line 3568
    invoke-virtual {v0, v1}, Landroidx/activity/result/IntentSenderRequest$Builder;->setFillInIntent(Landroid/content/Intent;)Landroidx/activity/result/IntentSenderRequest$Builder;

    #@31
    move-result-object v0

    #@32
    .line 3569
    invoke-virtual {p2}, Landroidx/activity/result/IntentSenderRequest;->getFlagsValues()I

    #@35
    move-result v1

    #@36
    invoke-virtual {p2}, Landroidx/activity/result/IntentSenderRequest;->getFlagsMask()I

    #@39
    move-result p2

    #@3a
    invoke-virtual {v0, v1, p2}, Landroidx/activity/result/IntentSenderRequest$Builder;->setFlags(II)Landroidx/activity/result/IntentSenderRequest$Builder;

    #@3d
    move-result-object p2

    #@3e
    .line 3570
    invoke-virtual {p2}, Landroidx/activity/result/IntentSenderRequest$Builder;->build()Landroidx/activity/result/IntentSenderRequest;

    #@41
    move-result-object p2

    #@42
    :cond_42
    const-string v0, "androidx.activity.result.contract.extra.INTENT_SENDER_REQUEST"

    #@44
    .line 3574
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@47
    const/4 p2, 0x2

    #@48
    .line 3575
    invoke-static {p2}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    #@4b
    move-result p2

    #@4c
    if-eqz p2, :cond_62

    #@4e
    .line 3576
    new-instance p2, Ljava/lang/StringBuilder;

    #@50
    const-string v0, "CreateIntent created the following intent: "

    #@52
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@55
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@58
    move-result-object p2

    #@59
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5c
    move-result-object p2

    #@5d
    const-string v0, "FragmentManager"

    #@5f
    invoke-static {v0, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@62
    :cond_62
    return-object p1
.end method

.method public bridge synthetic createIntent(Landroid/content/Context;Ljava/lang/Object;)Landroid/content/Intent;
    .registers 3

    #@0
    .line 3553
    check-cast p2, Landroidx/activity/result/IntentSenderRequest;

    #@2
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;->createIntent(Landroid/content/Context;Landroidx/activity/result/IntentSenderRequest;)Landroid/content/Intent;

    #@5
    move-result-object p1

    #@6
    return-object p1
.end method

.method public parseResult(ILandroid/content/Intent;)Landroidx/activity/result/ActivityResult;
    .registers 4

    #@0
    .line 3584
    new-instance v0, Landroidx/activity/result/ActivityResult;

    #@2
    invoke-direct {v0, p1, p2}, Landroidx/activity/result/ActivityResult;-><init>(ILandroid/content/Intent;)V

    #@5
    return-object v0
.end method

.method public bridge synthetic parseResult(ILandroid/content/Intent;)Ljava/lang/Object;
    .registers 3

    #@0
    .line 3553
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;->parseResult(ILandroid/content/Intent;)Landroidx/activity/result/ActivityResult;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method
