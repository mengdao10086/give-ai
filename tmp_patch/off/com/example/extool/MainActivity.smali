.class public final Lcom/example/extool/MainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MainActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0014J\u0008\u0010\t\u001a\u00020\u0006H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/example/extool/MainActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "()V",
        "btnSetup",
        "Landroid/widget/Button;",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "showDetail",
        "exTool_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private btnSetup:Landroid/widget/Button;


# direct methods
.method public static synthetic $r8$lambda$GkOOLDEfaKCiFCP-qdNmM-usY5w(Lcom/example/extool/MainActivity;Landroid/view/View;)V
    .registers 2

    #@0
    invoke-static {p0, p1}, Lcom/example/extool/MainActivity;->onCreate$lambda$0(Lcom/example/extool/MainActivity;Landroid/view/View;)V

    #@3
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    #@0
    .line 12
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    #@3
    return-void
.end method

.method public static final synthetic access$showDetail(Lcom/example/extool/MainActivity;)V
    .registers 1

    #@0
    .line 12
    invoke-direct {p0}, Lcom/example/extool/MainActivity;->showDetail()V

    #@3
    return-void
.end method

.method private static final onCreate$lambda$0(Lcom/example/extool/MainActivity;Landroid/view/View;)V
    .registers 3

    #@0
    const-string p1, "this$0"

    #@2
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 19
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    #@7
    const/16 v0, 0x1e

    #@9
    if-le p1, v0, :cond_26

    #@b
    const-string p1, "android.permission.BLUETOOTH_CONNECT"

    #@d
    const-string v0, "android.permission.BLUETOOTH_SCAN"

    #@f
    .line 22
    filled-new-array {p1, v0}, [Ljava/lang/String;

    #@12
    move-result-object p1

    #@13
    .line 20
    invoke-static {p1}, Lcom/blankj/utilcode/util/PermissionUtils;->permission([Ljava/lang/String;)Lcom/blankj/utilcode/util/PermissionUtils;

    #@16
    move-result-object p1

    #@17
    .line 24
    new-instance v0, Lcom/example/extool/MainActivity$onCreate$1$1;

    #@19
    invoke-direct {v0, p0}, Lcom/example/extool/MainActivity$onCreate$1$1;-><init>(Lcom/example/extool/MainActivity;)V

    #@1c
    check-cast v0, Lcom/blankj/utilcode/util/PermissionUtils$SimpleCallback;

    #@1e
    invoke-virtual {p1, v0}, Lcom/blankj/utilcode/util/PermissionUtils;->callback(Lcom/blankj/utilcode/util/PermissionUtils$SimpleCallback;)Lcom/blankj/utilcode/util/PermissionUtils;

    #@21
    move-result-object p0

    #@22
    .line 33
    invoke-virtual {p0}, Lcom/blankj/utilcode/util/PermissionUtils;->request()V

    #@25
    goto :goto_29

    #@26
    .line 35
    :cond_26
    invoke-direct {p0}, Lcom/example/extool/MainActivity;->showDetail()V

    #@29
    :goto_29
    return-void
.end method

.method private final showDetail()V
    .registers 4

    #@0
    .line 44
    new-instance v0, Landroid/content/Intent;

    #@2
    move-object v1, p0

    #@3
    check-cast v1, Landroid/content/Context;

    #@5
    const-class v2, Lcom/example/extool/B6ExperimentalActivity;

    #@7
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    #@a
    .line 43
    invoke-virtual {p0, v0}, Lcom/example/extool/MainActivity;->startActivity(Landroid/content/Intent;)V

    #@d
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    #@0
    .line 15
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    #@3
    const p1, 0x7f0b001d

    #@6
    .line 16
    invoke-virtual {p0, p1}, Lcom/example/extool/MainActivity;->setContentView(I)V

    #@9
    const p1, 0x7f080062

    #@c
    .line 17
    invoke-virtual {p0, p1}, Lcom/example/extool/MainActivity;->findViewById(I)Landroid/view/View;

    #@f
    move-result-object p1

    #@10
    const-string v0, "findViewById(R.id.btn_setup)"

    #@12
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    #@15
    check-cast p1, Landroid/widget/Button;

    #@17
    iput-object p1, p0, Lcom/example/extool/MainActivity;->btnSetup:Landroid/widget/Button;

    #@19
    if-nez p1, :cond_21

    #@1b
    const-string p1, "btnSetup"

    #@1d
    .line 18
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    #@20
    const/4 p1, 0x0

    #@21
    :cond_21
    new-instance v0, Lcom/example/extool/MainActivity$$ExternalSyntheticLambda0;

    #@23
    invoke-direct {v0, p0}, Lcom/example/extool/MainActivity$$ExternalSyntheticLambda0;-><init>(Lcom/example/extool/MainActivity;)V

    #@26
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@29
    return-void
.end method
