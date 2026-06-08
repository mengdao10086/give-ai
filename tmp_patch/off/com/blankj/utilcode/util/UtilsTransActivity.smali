.class public Lcom/blankj/utilcode/util/UtilsTransActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "UtilsTransActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blankj/utilcode/util/UtilsTransActivity$TransActivityDelegate;
    }
.end annotation


# static fields
.field private static final CALLBACK_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/blankj/utilcode/util/UtilsTransActivity;",
            "Lcom/blankj/utilcode/util/UtilsTransActivity$TransActivityDelegate;",
            ">;"
        }
    .end annotation
.end field

.field protected static final EXTRA_DELEGATE:Ljava/lang/String; = "extra_delegate"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 26
    new-instance v0, Ljava/util/HashMap;

    #@2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@5
    sput-object v0, Lcom/blankj/utilcode/util/UtilsTransActivity;->CALLBACK_MAP:Ljava/util/Map;

    #@7
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    #@0
    .line 24
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    #@3
    return-void
.end method

.method public static start(Landroid/app/Activity;Lcom/blankj/utilcode/util/Utils$Consumer;Lcom/blankj/utilcode/util/UtilsTransActivity$TransActivityDelegate;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/blankj/utilcode/util/Utils$Consumer<",
            "Landroid/content/Intent;",
            ">;",
            "Lcom/blankj/utilcode/util/UtilsTransActivity$TransActivityDelegate;",
            ")V"
        }
    .end annotation

    #@0
    .line 47
    const-class v0, Lcom/blankj/utilcode/util/UtilsTransActivity;

    #@2
    invoke-static {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/UtilsTransActivity;->start(Landroid/app/Activity;Lcom/blankj/utilcode/util/Utils$Consumer;Lcom/blankj/utilcode/util/UtilsTransActivity$TransActivityDelegate;Ljava/lang/Class;)V

    #@5
    return-void
.end method

.method protected static start(Landroid/app/Activity;Lcom/blankj/utilcode/util/Utils$Consumer;Lcom/blankj/utilcode/util/UtilsTransActivity$TransActivityDelegate;Ljava/lang/Class;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/blankj/utilcode/util/Utils$Consumer<",
            "Landroid/content/Intent;",
            ">;",
            "Lcom/blankj/utilcode/util/UtilsTransActivity$TransActivityDelegate;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    #@0
    if-nez p2, :cond_3

    #@2
    return-void

    #@3
    .line 55
    :cond_3
    new-instance v0, Landroid/content/Intent;

    #@5
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@8
    move-result-object v1

    #@9
    invoke-direct {v0, v1, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    #@c
    const-string p3, "extra_delegate"

    #@e
    .line 56
    invoke-virtual {v0, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    #@11
    if-eqz p1, :cond_16

    #@13
    .line 58
    invoke-interface {p1, v0}, Lcom/blankj/utilcode/util/Utils$Consumer;->accept(Ljava/lang/Object;)V

    #@16
    :cond_16
    if-nez p0, :cond_25

    #@18
    const/high16 p0, 0x10000000

    #@1a
    .line 61
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@1d
    .line 62
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@20
    move-result-object p0

    #@21
    invoke-virtual {p0, v0}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V

    #@24
    goto :goto_28

    #@25
    .line 64
    :cond_25
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    #@28
    :goto_28
    return-void
.end method

.method public static start(Landroid/app/Activity;Lcom/blankj/utilcode/util/UtilsTransActivity$TransActivityDelegate;)V
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 41
    const-class v1, Lcom/blankj/utilcode/util/UtilsTransActivity;

    #@3
    invoke-static {p0, v0, p1, v1}, Lcom/blankj/utilcode/util/UtilsTransActivity;->start(Landroid/app/Activity;Lcom/blankj/utilcode/util/Utils$Consumer;Lcom/blankj/utilcode/util/UtilsTransActivity$TransActivityDelegate;Ljava/lang/Class;)V

    #@6
    return-void
.end method

.method public static start(Lcom/blankj/utilcode/util/Utils$Consumer;Lcom/blankj/utilcode/util/UtilsTransActivity$TransActivityDelegate;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/blankj/utilcode/util/Utils$Consumer<",
            "Landroid/content/Intent;",
            ">;",
            "Lcom/blankj/utilcode/util/UtilsTransActivity$TransActivityDelegate;",
            ")V"
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    .line 36
    const-class v1, Lcom/blankj/utilcode/util/UtilsTransActivity;

    #@3
    invoke-static {v0, p0, p1, v1}, Lcom/blankj/utilcode/util/UtilsTransActivity;->start(Landroid/app/Activity;Lcom/blankj/utilcode/util/Utils$Consumer;Lcom/blankj/utilcode/util/UtilsTransActivity$TransActivityDelegate;Ljava/lang/Class;)V

    #@6
    return-void
.end method

.method public static start(Lcom/blankj/utilcode/util/UtilsTransActivity$TransActivityDelegate;)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 31
    const-class v1, Lcom/blankj/utilcode/util/UtilsTransActivity;

    #@3
    invoke-static {v0, v0, p0, v1}, Lcom/blankj/utilcode/util/UtilsTransActivity;->start(Landroid/app/Activity;Lcom/blankj/utilcode/util/Utils$Consumer;Lcom/blankj/utilcode/util/UtilsTransActivity$TransActivityDelegate;Ljava/lang/Class;)V

    #@6
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    #@0
    .line 152
    sget-object v0, Lcom/blankj/utilcode/util/UtilsTransActivity;->CALLBACK_MAP:Ljava/util/Map;

    #@2
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/blankj/utilcode/util/UtilsTransActivity$TransActivityDelegate;

    #@8
    if-nez v0, :cond_f

    #@a
    .line 153
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    #@d
    move-result p1

    #@e
    return p1

    #@f
    .line 154
    :cond_f
    invoke-virtual {v0, p0, p1}, Lcom/blankj/utilcode/util/UtilsTransActivity$TransActivityDelegate;->dispatchTouchEvent(Lcom/blankj/utilcode/util/UtilsTransActivity;Landroid/view/MotionEvent;)Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_17

    #@15
    const/4 p1, 0x1

    #@16
    return p1

    #@17
    .line 157
    :cond_17
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    #@1a
    move-result p1

    #@1b
    return p1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    #@0
    .line 144
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    #@3
    .line 145
    sget-object v0, Lcom/blankj/utilcode/util/UtilsTransActivity;->CALLBACK_MAP:Ljava/util/Map;

    #@5
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/blankj/utilcode/util/UtilsTransActivity$TransActivityDelegate;

    #@b
    if-nez v0, :cond_e

    #@d
    return-void

    #@e
    .line 147
    :cond_e
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/blankj/utilcode/util/UtilsTransActivity$TransActivityDelegate;->onActivityResult(Lcom/blankj/utilcode/util/UtilsTransActivity;IILandroid/content/Intent;)V

    #@11
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 70
    invoke-virtual {p0, v0, v0}, Lcom/blankj/utilcode/util/UtilsTransActivity;->overridePendingTransition(II)V

    #@4
    .line 71
    invoke-virtual {p0}, Lcom/blankj/utilcode/util/UtilsTransActivity;->getIntent()Landroid/content/Intent;

    #@7
    move-result-object v0

    #@8
    const-string v1, "extra_delegate"

    #@a
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    #@d
    move-result-object v0

    #@e
    .line 72
    instance-of v1, v0, Lcom/blankj/utilcode/util/UtilsTransActivity$TransActivityDelegate;

    #@10
    if-nez v1, :cond_19

    #@12
    .line 73
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    #@15
    .line 74
    invoke-virtual {p0}, Lcom/blankj/utilcode/util/UtilsTransActivity;->finish()V

    #@18
    return-void

    #@19
    .line 77
    :cond_19
    check-cast v0, Lcom/blankj/utilcode/util/UtilsTransActivity$TransActivityDelegate;

    #@1b
    .line 78
    sget-object v1, Lcom/blankj/utilcode/util/UtilsTransActivity;->CALLBACK_MAP:Ljava/util/Map;

    #@1d
    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@20
    .line 79
    invoke-virtual {v0, p0, p1}, Lcom/blankj/utilcode/util/UtilsTransActivity$TransActivityDelegate;->onCreateBefore(Lcom/blankj/utilcode/util/UtilsTransActivity;Landroid/os/Bundle;)V

    #@23
    .line 80
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    #@26
    .line 81
    invoke-virtual {v0, p0, p1}, Lcom/blankj/utilcode/util/UtilsTransActivity$TransActivityDelegate;->onCreated(Lcom/blankj/utilcode/util/UtilsTransActivity;Landroid/os/Bundle;)V

    #@29
    return-void
.end method

.method protected onDestroy()V
    .registers 3

    #@0
    .line 127
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    #@3
    .line 128
    sget-object v0, Lcom/blankj/utilcode/util/UtilsTransActivity;->CALLBACK_MAP:Ljava/util/Map;

    #@5
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v1

    #@9
    check-cast v1, Lcom/blankj/utilcode/util/UtilsTransActivity$TransActivityDelegate;

    #@b
    if-nez v1, :cond_e

    #@d
    return-void

    #@e
    .line 130
    :cond_e
    invoke-virtual {v1, p0}, Lcom/blankj/utilcode/util/UtilsTransActivity$TransActivityDelegate;->onDestroy(Lcom/blankj/utilcode/util/UtilsTransActivity;)V

    #@11
    .line 131
    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    return-void
.end method

.method protected onPause()V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    .line 102
    invoke-virtual {p0, v0, v0}, Lcom/blankj/utilcode/util/UtilsTransActivity;->overridePendingTransition(II)V

    #@4
    .line 103
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    #@7
    .line 104
    sget-object v0, Lcom/blankj/utilcode/util/UtilsTransActivity;->CALLBACK_MAP:Ljava/util/Map;

    #@9
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Lcom/blankj/utilcode/util/UtilsTransActivity$TransActivityDelegate;

    #@f
    if-nez v0, :cond_12

    #@11
    return-void

    #@12
    .line 106
    :cond_12
    invoke-virtual {v0, p0}, Lcom/blankj/utilcode/util/UtilsTransActivity$TransActivityDelegate;->onPaused(Lcom/blankj/utilcode/util/UtilsTransActivity;)V

    #@15
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 5

    #@0
    .line 136
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    #@3
    .line 137
    sget-object v0, Lcom/blankj/utilcode/util/UtilsTransActivity;->CALLBACK_MAP:Ljava/util/Map;

    #@5
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/blankj/utilcode/util/UtilsTransActivity$TransActivityDelegate;

    #@b
    if-nez v0, :cond_e

    #@d
    return-void

    #@e
    .line 139
    :cond_e
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/blankj/utilcode/util/UtilsTransActivity$TransActivityDelegate;->onRequestPermissionsResult(Lcom/blankj/utilcode/util/UtilsTransActivity;I[Ljava/lang/String;[I)V

    #@11
    return-void
.end method

.method protected onResume()V
    .registers 2

    #@0
    .line 94
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    #@3
    .line 95
    sget-object v0, Lcom/blankj/utilcode/util/UtilsTransActivity;->CALLBACK_MAP:Ljava/util/Map;

    #@5
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/blankj/utilcode/util/UtilsTransActivity$TransActivityDelegate;

    #@b
    if-nez v0, :cond_e

    #@d
    return-void

    #@e
    .line 97
    :cond_e
    invoke-virtual {v0, p0}, Lcom/blankj/utilcode/util/UtilsTransActivity$TransActivityDelegate;->onResumed(Lcom/blankj/utilcode/util/UtilsTransActivity;)V

    #@11
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 3

    #@0
    .line 119
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    #@3
    .line 120
    sget-object v0, Lcom/blankj/utilcode/util/UtilsTransActivity;->CALLBACK_MAP:Ljava/util/Map;

    #@5
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/blankj/utilcode/util/UtilsTransActivity$TransActivityDelegate;

    #@b
    if-nez v0, :cond_e

    #@d
    return-void

    #@e
    .line 122
    :cond_e
    invoke-virtual {v0, p0, p1}, Lcom/blankj/utilcode/util/UtilsTransActivity$TransActivityDelegate;->onSaveInstanceState(Lcom/blankj/utilcode/util/UtilsTransActivity;Landroid/os/Bundle;)V

    #@11
    return-void
.end method

.method protected onStart()V
    .registers 2

    #@0
    .line 86
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    #@3
    .line 87
    sget-object v0, Lcom/blankj/utilcode/util/UtilsTransActivity;->CALLBACK_MAP:Ljava/util/Map;

    #@5
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/blankj/utilcode/util/UtilsTransActivity$TransActivityDelegate;

    #@b
    if-nez v0, :cond_e

    #@d
    return-void

    #@e
    .line 89
    :cond_e
    invoke-virtual {v0, p0}, Lcom/blankj/utilcode/util/UtilsTransActivity$TransActivityDelegate;->onStarted(Lcom/blankj/utilcode/util/UtilsTransActivity;)V

    #@11
    return-void
.end method

.method protected onStop()V
    .registers 2

    #@0
    .line 111
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    #@3
    .line 112
    sget-object v0, Lcom/blankj/utilcode/util/UtilsTransActivity;->CALLBACK_MAP:Ljava/util/Map;

    #@5
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/blankj/utilcode/util/UtilsTransActivity$TransActivityDelegate;

    #@b
    if-nez v0, :cond_e

    #@d
    return-void

    #@e
    .line 114
    :cond_e
    invoke-virtual {v0, p0}, Lcom/blankj/utilcode/util/UtilsTransActivity$TransActivityDelegate;->onStopped(Lcom/blankj/utilcode/util/UtilsTransActivity;)V

    #@11
    return-void
.end method
