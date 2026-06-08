.class Landroidx/activity/ComponentActivity$2;
.super Landroidx/activity/result/ActivityResultRegistry;
.source "ComponentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/activity/ComponentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/activity/ComponentActivity;


# direct methods
.method constructor <init>(Landroidx/activity/ComponentActivity;)V
    .registers 2

    #@0
    .line 176
    iput-object p1, p0, Landroidx/activity/ComponentActivity$2;->this$0:Landroidx/activity/ComponentActivity;

    #@2
    invoke-direct {p0}, Landroidx/activity/result/ActivityResultRegistry;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onLaunch(ILandroidx/activity/result/contract/ActivityResultContract;Ljava/lang/Object;Landroidx/core/app/ActivityOptionsCompat;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(I",
            "Landroidx/activity/result/contract/ActivityResultContract<",
            "TI;TO;>;TI;",
            "Landroidx/core/app/ActivityOptionsCompat;",
            ")V"
        }
    .end annotation

    #@0
    .line 185
    iget-object v0, p0, Landroidx/activity/ComponentActivity$2;->this$0:Landroidx/activity/ComponentActivity;

    #@2
    .line 189
    invoke-virtual {p2, v0, p3}, Landroidx/activity/result/contract/ActivityResultContract;->getSynchronousResult(Landroid/content/Context;Ljava/lang/Object;)Landroidx/activity/result/contract/ActivityResultContract$SynchronousResult;

    #@5
    move-result-object v1

    #@6
    if-eqz v1, :cond_1a

    #@8
    .line 191
    new-instance p2, Landroid/os/Handler;

    #@a
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@d
    move-result-object p3

    #@e
    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@11
    new-instance p3, Landroidx/activity/ComponentActivity$2$1;

    #@13
    invoke-direct {p3, p0, p1, v1}, Landroidx/activity/ComponentActivity$2$1;-><init>(Landroidx/activity/ComponentActivity$2;ILandroidx/activity/result/contract/ActivityResultContract$SynchronousResult;)V

    #@16
    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@19
    return-void

    #@1a
    .line 201
    :cond_1a
    invoke-virtual {p2, v0, p3}, Landroidx/activity/result/contract/ActivityResultContract;->createIntent(Landroid/content/Context;Ljava/lang/Object;)Landroid/content/Intent;

    #@1d
    move-result-object p2

    #@1e
    .line 204
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    #@21
    move-result-object p3

    #@22
    if-eqz p3, :cond_35

    #@24
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    #@27
    move-result-object p3

    #@28
    invoke-virtual {p3}, Landroid/os/Bundle;->getClassLoader()Ljava/lang/ClassLoader;

    #@2b
    move-result-object p3

    #@2c
    if-nez p3, :cond_35

    #@2e
    .line 205
    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->getClassLoader()Ljava/lang/ClassLoader;

    #@31
    move-result-object p3

    #@32
    invoke-virtual {p2, p3}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    #@35
    :cond_35
    const-string p3, "androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE"

    #@37
    .line 207
    invoke-virtual {p2, p3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    #@3a
    move-result v1

    #@3b
    if-eqz v1, :cond_46

    #@3d
    .line 208
    invoke-virtual {p2, p3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    #@40
    move-result-object p4

    #@41
    .line 209
    invoke-virtual {p2, p3}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    #@44
    move-object v7, p4

    #@45
    goto :goto_4f

    #@46
    :cond_46
    if-eqz p4, :cond_4d

    #@48
    .line 211
    invoke-virtual {p4}, Landroidx/core/app/ActivityOptionsCompat;->toBundle()Landroid/os/Bundle;

    #@4b
    move-result-object p3

    #@4c
    goto :goto_4e

    #@4d
    :cond_4d
    const/4 p3, 0x0

    #@4e
    :goto_4e
    move-object v7, p3

    #@4f
    :goto_4f
    const-string p3, "androidx.activity.result.contract.action.REQUEST_PERMISSIONS"

    #@51
    .line 213
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@54
    move-result-object p4

    #@55
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@58
    move-result p3

    #@59
    if-eqz p3, :cond_6a

    #@5b
    const-string p3, "androidx.activity.result.contract.extra.PERMISSIONS"

    #@5d
    .line 216
    invoke-virtual {p2, p3}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    #@60
    move-result-object p2

    #@61
    if-nez p2, :cond_66

    #@63
    const/4 p2, 0x0

    #@64
    new-array p2, p2, [Ljava/lang/String;

    #@66
    .line 222
    :cond_66
    invoke-static {v0, p2, p1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    #@69
    goto :goto_aa

    #@6a
    :cond_6a
    const-string p3, "androidx.activity.result.contract.action.INTENT_SENDER_REQUEST"

    #@6c
    .line 223
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@6f
    move-result-object p4

    #@70
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@73
    move-result p3

    #@74
    if-eqz p3, :cond_a7

    #@76
    const-string p3, "androidx.activity.result.contract.extra.INTENT_SENDER_REQUEST"

    #@78
    .line 225
    invoke-virtual {p2, p3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    #@7b
    move-result-object p2

    #@7c
    check-cast p2, Landroidx/activity/result/IntentSenderRequest;

    #@7e
    .line 228
    :try_start_7e
    invoke-virtual {p2}, Landroidx/activity/result/IntentSenderRequest;->getIntentSender()Landroid/content/IntentSender;

    #@81
    move-result-object v1

    #@82
    .line 229
    invoke-virtual {p2}, Landroidx/activity/result/IntentSenderRequest;->getFillInIntent()Landroid/content/Intent;

    #@85
    move-result-object v3

    #@86
    invoke-virtual {p2}, Landroidx/activity/result/IntentSenderRequest;->getFlagsMask()I

    #@89
    move-result v4

    #@8a
    .line 230
    invoke-virtual {p2}, Landroidx/activity/result/IntentSenderRequest;->getFlagsValues()I

    #@8d
    move-result v5

    #@8e
    const/4 v6, 0x0

    #@8f
    move v2, p1

    #@90
    .line 228
    invoke-static/range {v0 .. v7}, Landroidx/core/app/ActivityCompat;->startIntentSenderForResult(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    :try_end_93
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_7e .. :try_end_93} :catch_94

    #@93
    goto :goto_aa

    #@94
    :catch_94
    move-exception p2

    #@95
    .line 232
    new-instance p3, Landroid/os/Handler;

    #@97
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@9a
    move-result-object p4

    #@9b
    invoke-direct {p3, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@9e
    new-instance p4, Landroidx/activity/ComponentActivity$2$2;

    #@a0
    invoke-direct {p4, p0, p1, p2}, Landroidx/activity/ComponentActivity$2$2;-><init>(Landroidx/activity/ComponentActivity$2;ILandroid/content/IntentSender$SendIntentException;)V

    #@a3
    invoke-virtual {p3, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@a6
    goto :goto_aa

    #@a7
    .line 243
    :cond_a7
    invoke-static {v0, p2, p1, v7}, Landroidx/core/app/ActivityCompat;->startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V

    #@aa
    :goto_aa
    return-void
.end method
