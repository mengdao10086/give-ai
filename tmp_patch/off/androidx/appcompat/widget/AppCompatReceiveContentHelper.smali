.class final Landroidx/appcompat/widget/AppCompatReceiveContentHelper;
.super Ljava/lang/Object;
.source "AppCompatReceiveContentHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/AppCompatReceiveContentHelper$OnDropApi24Impl;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ReceiveContent"


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static maybeHandleDragEventViaPerformReceiveContent(Landroid/view/View;Landroid/view/DragEvent;)Z
    .registers 6

    #@0
    .line 85
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1f

    #@4
    const/4 v2, 0x0

    #@5
    if-ge v0, v1, :cond_51

    #@7
    .line 87
    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    if-nez v0, :cond_51

    #@d
    .line 88
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getOnReceiveContentMimeTypes(Landroid/view/View;)[Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    if-nez v0, :cond_14

    #@13
    goto :goto_51

    #@14
    .line 95
    :cond_14
    invoke-static {p0}, Landroidx/appcompat/widget/AppCompatReceiveContentHelper;->tryGetActivity(Landroid/view/View;)Landroid/app/Activity;

    #@17
    move-result-object v0

    #@18
    if-nez v0, :cond_2f

    #@1a
    .line 97
    new-instance p1, Ljava/lang/StringBuilder;

    #@1c
    const-string v0, "Can\'t handle drop: no activity: view="

    #@1e
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@21
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@24
    move-result-object p0

    #@25
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object p0

    #@29
    const-string p1, "ReceiveContent"

    #@2b
    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@2e
    return v2

    #@2f
    .line 100
    :cond_2f
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    #@32
    move-result v1

    #@33
    const/4 v3, 0x1

    #@34
    if-ne v1, v3, :cond_3a

    #@36
    .line 106
    instance-of p0, p0, Landroid/widget/TextView;

    #@38
    xor-int/2addr p0, v3

    #@39
    return p0

    #@3a
    .line 108
    :cond_3a
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    #@3d
    move-result v1

    #@3e
    const/4 v3, 0x3

    #@3f
    if-ne v1, v3, :cond_51

    #@41
    .line 109
    instance-of v1, p0, Landroid/widget/TextView;

    #@43
    if-eqz v1, :cond_4c

    #@45
    .line 110
    check-cast p0, Landroid/widget/TextView;

    #@47
    invoke-static {p1, p0, v0}, Landroidx/appcompat/widget/AppCompatReceiveContentHelper$OnDropApi24Impl;->onDropForTextView(Landroid/view/DragEvent;Landroid/widget/TextView;Landroid/app/Activity;)Z

    #@4a
    move-result p0

    #@4b
    goto :goto_50

    #@4c
    .line 111
    :cond_4c
    invoke-static {p1, p0, v0}, Landroidx/appcompat/widget/AppCompatReceiveContentHelper$OnDropApi24Impl;->onDropForView(Landroid/view/DragEvent;Landroid/view/View;Landroid/app/Activity;)Z

    #@4f
    move-result p0

    #@50
    :goto_50
    return p0

    #@51
    :cond_51
    :goto_51
    return v2
.end method

.method static maybeHandleMenuActionViaPerformReceiveContent(Landroid/widget/TextView;I)Z
    .registers 7

    #@0
    .line 59
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1f

    #@4
    const/4 v2, 0x0

    #@5
    if-ge v0, v1, :cond_4a

    #@7
    .line 60
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getOnReceiveContentMimeTypes(Landroid/view/View;)[Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    if-eqz v0, :cond_4a

    #@d
    const v0, 0x1020022

    #@10
    if-eq p1, v0, :cond_18

    #@12
    const v1, 0x1020031

    #@15
    if-eq p1, v1, :cond_18

    #@17
    goto :goto_4a

    #@18
    .line 64
    :cond_18
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    #@1b
    move-result-object v1

    #@1c
    const-string v3, "clipboard"

    #@1e
    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@21
    move-result-object v1

    #@22
    check-cast v1, Landroid/content/ClipboardManager;

    #@24
    if-nez v1, :cond_28

    #@26
    const/4 v1, 0x0

    #@27
    goto :goto_2c

    #@28
    .line 66
    :cond_28
    invoke-virtual {v1}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    #@2b
    move-result-object v1

    #@2c
    :goto_2c
    const/4 v3, 0x1

    #@2d
    if-eqz v1, :cond_49

    #@2f
    .line 67
    invoke-virtual {v1}, Landroid/content/ClipData;->getItemCount()I

    #@32
    move-result v4

    #@33
    if-lez v4, :cond_49

    #@35
    .line 68
    new-instance v4, Landroidx/core/view/ContentInfoCompat$Builder;

    #@37
    invoke-direct {v4, v1, v3}, Landroidx/core/view/ContentInfoCompat$Builder;-><init>(Landroid/content/ClipData;I)V

    #@3a
    if-ne p1, v0, :cond_3d

    #@3c
    goto :goto_3e

    #@3d
    :cond_3d
    move v2, v3

    #@3e
    .line 69
    :goto_3e
    invoke-virtual {v4, v2}, Landroidx/core/view/ContentInfoCompat$Builder;->setFlags(I)Landroidx/core/view/ContentInfoCompat$Builder;

    #@41
    move-result-object p1

    #@42
    .line 70
    invoke-virtual {p1}, Landroidx/core/view/ContentInfoCompat$Builder;->build()Landroidx/core/view/ContentInfoCompat;

    #@45
    move-result-object p1

    #@46
    .line 71
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->performReceiveContent(Landroid/view/View;Landroidx/core/view/ContentInfoCompat;)Landroidx/core/view/ContentInfoCompat;

    #@49
    :cond_49
    return v3

    #@4a
    :cond_4a
    :goto_4a
    return v2
.end method

.method static tryGetActivity(Landroid/view/View;)Landroid/app/Activity;
    .registers 2

    #@0
    .line 158
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@3
    move-result-object p0

    #@4
    .line 159
    :goto_4
    instance-of v0, p0, Landroid/content/ContextWrapper;

    #@6
    if-eqz v0, :cond_16

    #@8
    .line 160
    instance-of v0, p0, Landroid/app/Activity;

    #@a
    if-eqz v0, :cond_f

    #@c
    .line 161
    check-cast p0, Landroid/app/Activity;

    #@e
    return-object p0

    #@f
    .line 163
    :cond_f
    check-cast p0, Landroid/content/ContextWrapper;

    #@11
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    #@14
    move-result-object p0

    #@15
    goto :goto_4

    #@16
    :cond_16
    const/4 p0, 0x0

    #@17
    return-object p0
.end method
