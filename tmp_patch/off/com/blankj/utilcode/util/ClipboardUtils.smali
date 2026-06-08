.class public final Lcom/blankj/utilcode/util/ClipboardUtils;
.super Ljava/lang/Object;
.source "ClipboardUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 3

    #@0
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 19
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@5
    const-string v1, "u can\'t instantiate me..."

    #@7
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0
.end method

.method public static addChangedListener(Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;)V
    .registers 3

    #@0
    .line 96
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    const-string v1, "clipboard"

    #@6
    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroid/content/ClipboardManager;

    #@c
    .line 98
    invoke-virtual {v0, p0}, Landroid/content/ClipboardManager;->addPrimaryClipChangedListener(Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;)V

    #@f
    return-void
.end method

.method public static clear()V
    .registers 3

    #@0
    .line 50
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    const-string v1, "clipboard"

    #@6
    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroid/content/ClipboardManager;

    #@c
    const/4 v1, 0x0

    #@d
    const-string v2, ""

    #@f
    .line 52
    invoke-static {v1, v2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    #@16
    return-void
.end method

.method public static copyText(Ljava/lang/CharSequence;)V
    .registers 3

    #@0
    .line 29
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    const-string v1, "clipboard"

    #@6
    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroid/content/ClipboardManager;

    #@c
    .line 31
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    invoke-static {v1, p0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    #@17
    move-result-object p0

    #@18
    invoke-virtual {v0, p0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    #@1b
    return-void
.end method

.method public static copyText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 4

    #@0
    .line 41
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    const-string v1, "clipboard"

    #@6
    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroid/content/ClipboardManager;

    #@c
    .line 43
    invoke-static {p0, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    #@f
    move-result-object p0

    #@10
    invoke-virtual {v0, p0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    #@13
    return-void
.end method

.method public static getLabel()Ljava/lang/CharSequence;
    .registers 2

    #@0
    .line 61
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    const-string v1, "clipboard"

    #@6
    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroid/content/ClipboardManager;

    #@c
    .line 63
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClipDescription()Landroid/content/ClipDescription;

    #@f
    move-result-object v0

    #@10
    const-string v1, ""

    #@12
    if-nez v0, :cond_15

    #@14
    return-object v1

    #@15
    .line 67
    :cond_15
    invoke-virtual {v0}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    #@18
    move-result-object v0

    #@19
    if-nez v0, :cond_1c

    #@1b
    return-object v1

    #@1c
    :cond_1c
    return-object v0
.end method

.method public static getText()Ljava/lang/CharSequence;
    .registers 2

    #@0
    .line 80
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    const-string v1, "clipboard"

    #@6
    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroid/content/ClipboardManager;

    #@c
    .line 82
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    #@f
    move-result-object v0

    #@10
    if-eqz v0, :cond_28

    #@12
    .line 83
    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    #@15
    move-result v1

    #@16
    if-lez v1, :cond_28

    #@18
    const/4 v1, 0x0

    #@19
    .line 84
    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    #@1c
    move-result-object v0

    #@1d
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v0, v1}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    #@24
    move-result-object v0

    #@25
    if-eqz v0, :cond_28

    #@27
    return-object v0

    #@28
    :cond_28
    const-string v0, ""

    #@2a
    return-object v0
.end method

.method public static removeChangedListener(Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;)V
    .registers 3

    #@0
    .line 105
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    const-string v1, "clipboard"

    #@6
    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroid/content/ClipboardManager;

    #@c
    .line 107
    invoke-virtual {v0, p0}, Landroid/content/ClipboardManager;->removePrimaryClipChangedListener(Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;)V

    #@f
    return-void
.end method
