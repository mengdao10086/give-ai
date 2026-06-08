.class Landroidx/activity/ComponentActivity$2$2;
.super Ljava/lang/Object;
.source "ComponentActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/activity/ComponentActivity$2;->onLaunch(ILandroidx/activity/result/contract/ActivityResultContract;Ljava/lang/Object;Landroidx/core/app/ActivityOptionsCompat;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroidx/activity/ComponentActivity$2;

.field final synthetic val$e:Landroid/content/IntentSender$SendIntentException;

.field final synthetic val$requestCode:I


# direct methods
.method constructor <init>(Landroidx/activity/ComponentActivity$2;ILandroid/content/IntentSender$SendIntentException;)V
    .registers 4

    #@0
    .line 232
    iput-object p1, p0, Landroidx/activity/ComponentActivity$2$2;->this$1:Landroidx/activity/ComponentActivity$2;

    #@2
    iput p2, p0, Landroidx/activity/ComponentActivity$2$2;->val$requestCode:I

    #@4
    iput-object p3, p0, Landroidx/activity/ComponentActivity$2$2;->val$e:Landroid/content/IntentSender$SendIntentException;

    #@6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    #@0
    .line 235
    iget-object v0, p0, Landroidx/activity/ComponentActivity$2$2;->this$1:Landroidx/activity/ComponentActivity$2;

    #@2
    iget v1, p0, Landroidx/activity/ComponentActivity$2$2;->val$requestCode:I

    #@4
    new-instance v2, Landroid/content/Intent;

    #@6
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    #@9
    const-string v3, "androidx.activity.result.contract.action.INTENT_SENDER_REQUEST"

    #@b
    .line 236
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    #@e
    move-result-object v2

    #@f
    const-string v3, "androidx.activity.result.contract.extra.SEND_INTENT_EXCEPTION"

    #@11
    iget-object v4, p0, Landroidx/activity/ComponentActivity$2$2;->val$e:Landroid/content/IntentSender$SendIntentException;

    #@13
    .line 237
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    #@16
    move-result-object v2

    #@17
    const/4 v3, 0x0

    #@18
    .line 235
    invoke-virtual {v0, v1, v3, v2}, Landroidx/activity/ComponentActivity$2;->dispatchResult(IILandroid/content/Intent;)Z

    #@1b
    return-void
.end method
