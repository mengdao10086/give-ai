.class final Lcom/example/extool/B6ExperimentalActivity$onCreate$3;
.super Lkotlin/jvm/internal/Lambda;
.source "B6ExperimentalActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/extool/B6ExperimentalActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
        "kotlin.jvm.PlatformType",
        "invoke",
        "(Ljava/lang/Integer;)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/extool/B6ExperimentalActivity;


# direct methods
.method public static synthetic $r8$lambda$D_9TdkYYzBBg5K5TJauGM0r9WcE(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 2

    #@0
    invoke-static {p0, p1}, Lcom/example/extool/B6ExperimentalActivity$onCreate$3;->invoke$lambda$3$lambda$2(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    #@3
    return-void
.end method

.method public static synthetic $r8$lambda$MeQmKdxNjr7nk9-dg4PZ6rO-ORg(Lcom/example/extool/B6ExperimentalActivity;Landroid/content/DialogInterface;I)V
    .registers 3

    #@0
    invoke-static {p0, p1, p2}, Lcom/example/extool/B6ExperimentalActivity$onCreate$3;->invoke$lambda$3(Lcom/example/extool/B6ExperimentalActivity;Landroid/content/DialogInterface;I)V

    #@3
    return-void
.end method

.method public static synthetic $r8$lambda$XZo3_5UWnlRzEpNJoKM0DsnXdFI(Lcom/example/extool/B6ExperimentalActivity;Landroid/content/DialogInterface;I)V
    .registers 3

    #@0
    invoke-static {p0, p1, p2}, Lcom/example/extool/B6ExperimentalActivity$onCreate$3;->invoke$lambda$1(Lcom/example/extool/B6ExperimentalActivity;Landroid/content/DialogInterface;I)V

    #@3
    return-void
.end method

.method public static synthetic $r8$lambda$qyiR_5_6ZHu2q7upB1ZBcVBeOyQ(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 2

    #@0
    invoke-static {p0, p1}, Lcom/example/extool/B6ExperimentalActivity$onCreate$3;->invoke$lambda$1$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    #@3
    return-void
.end method

.method constructor <init>(Lcom/example/extool/B6ExperimentalActivity;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/example/extool/B6ExperimentalActivity$onCreate$3;->this$0:Lcom/example/extool/B6ExperimentalActivity;

    #@2
    const/4 p1, 0x1

    #@3
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    #@6
    return-void
.end method

.method private static final invoke$lambda$1(Lcom/example/extool/B6ExperimentalActivity;Landroid/content/DialogInterface;I)V
    .registers 3

    #@0
    const-string p2, "this$0"

    #@2
    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    if-eqz p1, :cond_a

    #@7
    .line 37
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    #@a
    .line 38
    :cond_a
    new-instance p1, Landroid/content/Intent;

    #@c
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    #@f
    const-string p2, "android.settings.LOCATION_SOURCE_SETTINGS"

    #@11
    .line 39
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    #@14
    .line 40
    move-object p2, p0

    #@15
    check-cast p2, Landroid/app/Activity;

    #@17
    invoke-static {p2}, Lrx_activity_result2/RxActivityResult;->on(Landroid/app/Activity;)Lrx_activity_result2/RxActivityResult$Builder;

    #@1a
    move-result-object p2

    #@1b
    invoke-virtual {p2, p1}, Lrx_activity_result2/RxActivityResult$Builder;->startIntent(Landroid/content/Intent;)Lio/reactivex/Observable;

    #@1e
    move-result-object p1

    #@1f
    new-instance p2, Lcom/example/extool/B6ExperimentalActivity$onCreate$3$1$1;

    #@21
    invoke-direct {p2, p0}, Lcom/example/extool/B6ExperimentalActivity$onCreate$3$1$1;-><init>(Lcom/example/extool/B6ExperimentalActivity;)V

    #@24
    check-cast p2, Lkotlin/jvm/functions/Function1;

    #@26
    new-instance p0, Lcom/example/extool/B6ExperimentalActivity$onCreate$3$$ExternalSyntheticLambda1;

    #@28
    invoke-direct {p0, p2}, Lcom/example/extool/B6ExperimentalActivity$onCreate$3$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function1;)V

    #@2b
    invoke-virtual {p1, p0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    #@2e
    return-void
.end method

.method private static final invoke$lambda$1$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 3

    #@0
    const-string v0, "$tmp0"

    #@2
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 40
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    return-void
.end method

.method private static final invoke$lambda$3(Lcom/example/extool/B6ExperimentalActivity;Landroid/content/DialogInterface;I)V
    .registers 5

    #@0
    const-string p2, "this$0"

    #@2
    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    if-eqz p1, :cond_a

    #@7
    .line 48
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    #@a
    .line 49
    :cond_a
    new-instance p1, Landroid/content/Intent;

    #@c
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    #@f
    const-string p2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    #@11
    .line 50
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    #@14
    .line 51
    invoke-virtual {p0}, Lcom/example/extool/B6ExperimentalActivity;->getPackageName()Ljava/lang/String;

    #@17
    move-result-object p2

    #@18
    const/4 v0, 0x0

    #@19
    const-string v1, "package"

    #@1b
    invoke-static {v1, p2, v0}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    #@1e
    move-result-object p2

    #@1f
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    #@22
    .line 52
    move-object p2, p0

    #@23
    check-cast p2, Landroid/app/Activity;

    #@25
    invoke-static {p2}, Lrx_activity_result2/RxActivityResult;->on(Landroid/app/Activity;)Lrx_activity_result2/RxActivityResult$Builder;

    #@28
    move-result-object p2

    #@29
    invoke-virtual {p2, p1}, Lrx_activity_result2/RxActivityResult$Builder;->startIntent(Landroid/content/Intent;)Lio/reactivex/Observable;

    #@2c
    move-result-object p1

    #@2d
    new-instance p2, Lcom/example/extool/B6ExperimentalActivity$onCreate$3$2$1;

    #@2f
    invoke-direct {p2, p0}, Lcom/example/extool/B6ExperimentalActivity$onCreate$3$2$1;-><init>(Lcom/example/extool/B6ExperimentalActivity;)V

    #@32
    check-cast p2, Lkotlin/jvm/functions/Function1;

    #@34
    new-instance p0, Lcom/example/extool/B6ExperimentalActivity$onCreate$3$$ExternalSyntheticLambda0;

    #@36
    invoke-direct {p0, p2}, Lcom/example/extool/B6ExperimentalActivity$onCreate$3$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;)V

    #@39
    invoke-virtual {p1, p0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    #@3c
    return-void
.end method

.method private static final invoke$lambda$3$lambda$2(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 3

    #@0
    const-string v0, "$tmp0"

    #@2
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 52
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    #@0
    .line 32
    check-cast p1, Ljava/lang/Integer;

    #@2
    invoke-virtual {p0, p1}, Lcom/example/extool/B6ExperimentalActivity$onCreate$3;->invoke(Ljava/lang/Integer;)V

    #@5
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    #@7
    return-object p1
.end method

.method public final invoke(Ljava/lang/Integer;)V
    .registers 6

    #@0
    const-string v0, "\u53bb\u5f00\u542f"

    #@2
    const/4 v1, 0x0

    #@3
    if-nez p1, :cond_6

    #@5
    goto :goto_3f

    #@6
    .line 33
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    #@9
    move-result v2

    #@a
    const/16 v3, 0x8

    #@c
    if-ne v2, v3, :cond_3f

    #@e
    .line 34
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    #@10
    iget-object v2, p0, Lcom/example/extool/B6ExperimentalActivity$onCreate$3;->this$0:Lcom/example/extool/B6ExperimentalActivity;

    #@12
    check-cast v2, Landroid/content/Context;

    #@14
    invoke-direct {p1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    #@17
    const-string v2, "\u8bf7\u5f00\u542f\u4f4d\u7f6e\u670d\u52a1"

    #@19
    move-object v3, v2

    #@1a
    check-cast v3, Ljava/lang/CharSequence;

    #@1c
    invoke-virtual {p1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    #@1f
    move-result-object p1

    #@20
    check-cast v2, Ljava/lang/CharSequence;

    #@22
    invoke-virtual {p1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    #@25
    move-result-object p1

    #@26
    .line 35
    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    #@29
    move-result-object p1

    #@2a
    check-cast v0, Ljava/lang/CharSequence;

    #@2c
    iget-object v1, p0, Lcom/example/extool/B6ExperimentalActivity$onCreate$3;->this$0:Lcom/example/extool/B6ExperimentalActivity;

    #@2e
    new-instance v2, Lcom/example/extool/B6ExperimentalActivity$onCreate$3$$ExternalSyntheticLambda2;

    #@30
    invoke-direct {v2, v1}, Lcom/example/extool/B6ExperimentalActivity$onCreate$3$$ExternalSyntheticLambda2;-><init>(Lcom/example/extool/B6ExperimentalActivity;)V

    #@33
    invoke-virtual {p1, v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    #@36
    move-result-object p1

    #@37
    .line 43
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    #@3a
    move-result-object p1

    #@3b
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    #@3e
    goto :goto_93

    #@3f
    :cond_3f
    :goto_3f
    if-nez p1, :cond_42

    #@41
    goto :goto_7c

    #@42
    .line 45
    :cond_42
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    #@45
    move-result p1

    #@46
    const/16 v2, 0x9

    #@48
    if-ne p1, v2, :cond_7c

    #@4a
    .line 46
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    #@4c
    iget-object v2, p0, Lcom/example/extool/B6ExperimentalActivity$onCreate$3;->this$0:Lcom/example/extool/B6ExperimentalActivity;

    #@4e
    check-cast v2, Landroid/content/Context;

    #@50
    invoke-direct {p1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    #@53
    const-string v2, "\u7f3a\u5c11\u5b9a\u4f4d\u6743\u9650"

    #@55
    check-cast v2, Ljava/lang/CharSequence;

    #@57
    invoke-virtual {p1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    #@5a
    move-result-object p1

    #@5b
    const-string v2, "\u8bf7\u6388\u6743\u5b9a\u4f4d\u6743\u9650"

    #@5d
    check-cast v2, Ljava/lang/CharSequence;

    #@5f
    invoke-virtual {p1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    #@62
    move-result-object p1

    #@63
    .line 47
    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    #@66
    move-result-object p1

    #@67
    check-cast v0, Ljava/lang/CharSequence;

    #@69
    iget-object v1, p0, Lcom/example/extool/B6ExperimentalActivity$onCreate$3;->this$0:Lcom/example/extool/B6ExperimentalActivity;

    #@6b
    new-instance v2, Lcom/example/extool/B6ExperimentalActivity$onCreate$3$$ExternalSyntheticLambda3;

    #@6d
    invoke-direct {v2, v1}, Lcom/example/extool/B6ExperimentalActivity$onCreate$3$$ExternalSyntheticLambda3;-><init>(Lcom/example/extool/B6ExperimentalActivity;)V

    #@70
    invoke-virtual {p1, v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    #@73
    move-result-object p1

    #@74
    .line 55
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    #@77
    move-result-object p1

    #@78
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    #@7b
    goto :goto_93

    #@7c
    .line 57
    :cond_7c
    :goto_7c
    iget-object p1, p0, Lcom/example/extool/B6ExperimentalActivity$onCreate$3;->this$0:Lcom/example/extool/B6ExperimentalActivity;

    #@7e
    # getter for: Lcom/example/extool/B6ExperimentalActivity;->binding:Lcom/example/extool/databinding/ActivityExperimentalB6Binding;
    invoke-static {p1}, Lcom/example/extool/B6ExperimentalActivity;->access$getBinding$p(Lcom/example/extool/B6ExperimentalActivity;)Lcom/example/extool/databinding/ActivityExperimentalB6Binding;

    #@81
    move-result-object p1

    #@82
    if-nez p1, :cond_8a

    #@84
    const-string p1, "binding"

    #@86
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    #@89
    const/4 p1, 0x0

    #@8a
    :cond_8a
    iget-object p1, p1, Lcom/example/extool/databinding/ActivityExperimentalB6Binding;->tvConnectState:Landroid/widget/TextView;

    #@8c
    const-string v0, "\u626b\u63cf\u5931\u8d25"

    #@8e
    check-cast v0, Ljava/lang/CharSequence;

    #@90
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@93
    :goto_93
    return-void
.end method
