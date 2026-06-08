.class public Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;
.super Landroidx/core/app/NotificationCompat$Style;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DecoratedCustomViewStyle"
.end annotation


# static fields
.field private static final MAX_ACTION_BUTTONS:I = 0x3

.field private static final TEMPLATE_CLASS_NAME:Ljava/lang/String; = "androidx.core.app.NotificationCompat$DecoratedCustomViewStyle"


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    .line 4406
    invoke-direct {p0}, Landroidx/core/app/NotificationCompat$Style;-><init>()V

    #@3
    return-void
.end method

.method private createRemoteViews(Landroid/widget/RemoteViews;Z)Landroid/widget/RemoteViews;
    .registers 10

    #@0
    .line 4497
    sget v0, Landroidx/core/R$layout;->notification_template_custom_big:I

    #@2
    const/4 v1, 0x1

    #@3
    const/4 v2, 0x0

    #@4
    invoke-virtual {p0, v1, v0, v2}, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;->applyStandardTemplate(ZIZ)Landroid/widget/RemoteViews;

    #@7
    move-result-object v0

    #@8
    .line 4499
    sget v3, Landroidx/core/R$id;->actions:I

    #@a
    invoke-virtual {v0, v3}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    #@d
    .line 4504
    iget-object v3, p0, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    #@f
    iget-object v3, v3, Landroidx/core/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    #@11
    .line 4505
    invoke-static {v3}, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;->getNonContextualActions(Ljava/util/List;)Ljava/util/List;

    #@14
    move-result-object v3

    #@15
    if-eqz p2, :cond_39

    #@17
    if-eqz v3, :cond_39

    #@19
    .line 4508
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@1c
    move-result p2

    #@1d
    const/4 v4, 0x3

    #@1e
    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    #@21
    move-result p2

    #@22
    if-lez p2, :cond_39

    #@24
    move v4, v2

    #@25
    :goto_25
    if-ge v4, p2, :cond_3a

    #@27
    .line 4513
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@2a
    move-result-object v5

    #@2b
    check-cast v5, Landroidx/core/app/NotificationCompat$Action;

    #@2d
    invoke-direct {p0, v5}, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;->generateActionButton(Landroidx/core/app/NotificationCompat$Action;)Landroid/widget/RemoteViews;

    #@30
    move-result-object v5

    #@31
    .line 4514
    sget v6, Landroidx/core/R$id;->actions:I

    #@33
    invoke-virtual {v0, v6, v5}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    #@36
    add-int/lit8 v4, v4, 0x1

    #@38
    goto :goto_25

    #@39
    :cond_39
    move v1, v2

    #@3a
    :cond_3a
    if-eqz v1, :cond_3d

    #@3c
    goto :goto_3f

    #@3d
    :cond_3d
    const/16 v2, 0x8

    #@3f
    .line 4519
    :goto_3f
    sget p2, Landroidx/core/R$id;->actions:I

    #@41
    invoke-virtual {v0, p2, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    #@44
    .line 4520
    sget p2, Landroidx/core/R$id;->action_divider:I

    #@46
    invoke-virtual {v0, p2, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    #@49
    .line 4521
    invoke-virtual {p0, v0, p1}, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;->buildIntoRemoteViews(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    #@4c
    return-object v0
.end method

.method private generateActionButton(Landroidx/core/app/NotificationCompat$Action;)Landroid/widget/RemoteViews;
    .registers 8

    #@0
    .line 4538
    iget-object v0, p1, Landroidx/core/app/NotificationCompat$Action;->actionIntent:Landroid/app/PendingIntent;

    #@2
    if-nez v0, :cond_6

    #@4
    const/4 v0, 0x1

    #@5
    goto :goto_7

    #@6
    :cond_6
    const/4 v0, 0x0

    #@7
    .line 4539
    :goto_7
    new-instance v1, Landroid/widget/RemoteViews;

    #@9
    iget-object v2, p0, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    #@b
    iget-object v2, v2, Landroidx/core/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    #@d
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@10
    move-result-object v2

    #@11
    if-eqz v0, :cond_16

    #@13
    .line 4540
    sget v3, Landroidx/core/R$layout;->notification_action_tombstone:I

    #@15
    goto :goto_18

    #@16
    .line 4541
    :cond_16
    sget v3, Landroidx/core/R$layout;->notification_action:I

    #@18
    :goto_18
    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    #@1b
    .line 4542
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Action;->getIconCompat()Landroidx/core/graphics/drawable/IconCompat;

    #@1e
    move-result-object v2

    #@1f
    if-eqz v2, :cond_38

    #@21
    .line 4544
    sget v3, Landroidx/core/R$id;->action_image:I

    #@23
    iget-object v4, p0, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    #@25
    iget-object v4, v4, Landroidx/core/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    #@27
    .line 4545
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@2a
    move-result-object v4

    #@2b
    sget v5, Landroidx/core/R$color;->notification_action_color_filter:I

    #@2d
    .line 4546
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    #@30
    move-result v4

    #@31
    .line 4545
    invoke-virtual {p0, v2, v4}, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;->createColoredBitmap(Landroidx/core/graphics/drawable/IconCompat;I)Landroid/graphics/Bitmap;

    #@34
    move-result-object v2

    #@35
    .line 4544
    invoke-virtual {v1, v3, v2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    #@38
    .line 4548
    :cond_38
    sget v2, Landroidx/core/R$id;->action_text:I

    #@3a
    iget-object v3, p1, Landroidx/core/app/NotificationCompat$Action;->title:Ljava/lang/CharSequence;

    #@3c
    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    #@3f
    if-nez v0, :cond_48

    #@41
    .line 4550
    sget v0, Landroidx/core/R$id;->action_container:I

    #@43
    iget-object v2, p1, Landroidx/core/app/NotificationCompat$Action;->actionIntent:Landroid/app/PendingIntent;

    #@45
    invoke-virtual {v1, v0, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    #@48
    .line 4553
    :cond_48
    sget v0, Landroidx/core/R$id;->action_container:I

    #@4a
    iget-object p1, p1, Landroidx/core/app/NotificationCompat$Action;->title:Ljava/lang/CharSequence;

    #@4c
    invoke-virtual {v1, v0, p1}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    #@4f
    return-object v1
.end method

.method private static getNonContextualActions(Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/core/app/NotificationCompat$Action;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/core/app/NotificationCompat$Action;",
            ">;"
        }
    .end annotation

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 p0, 0x0

    #@3
    return-object p0

    #@4
    .line 4528
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    #@6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@9
    .line 4529
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object p0

    #@d
    :cond_d
    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_23

    #@13
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    check-cast v1, Landroidx/core/app/NotificationCompat$Action;

    #@19
    .line 4530
    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$Action;->isContextual()Z

    #@1c
    move-result v2

    #@1d
    if-nez v2, :cond_d

    #@1f
    .line 4531
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@22
    goto :goto_d

    #@23
    :cond_23
    return-object v0
.end method


# virtual methods
.method public apply(Landroidx/core/app/NotificationBuilderWithBuilderAccessor;)V
    .registers 3

    #@0
    .line 4435
    invoke-interface {p1}, Landroidx/core/app/NotificationBuilderWithBuilderAccessor;->getBuilder()Landroid/app/Notification$Builder;

    #@3
    move-result-object p1

    #@4
    new-instance v0, Landroid/app/Notification$DecoratedCustomViewStyle;

    #@6
    invoke-direct {v0}, Landroid/app/Notification$DecoratedCustomViewStyle;-><init>()V

    #@9
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    #@c
    return-void
.end method

.method public displayCustomViewInline()Z
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method protected getClassName()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "androidx.core.app.NotificationCompat$DecoratedCustomViewStyle"

    #@2
    return-object v0
.end method

.method public makeBigContentView(Landroidx/core/app/NotificationBuilderWithBuilderAccessor;)Landroid/widget/RemoteViews;
    .registers 2

    #@0
    const/4 p1, 0x0

    #@1
    return-object p1
.end method

.method public makeContentView(Landroidx/core/app/NotificationBuilderWithBuilderAccessor;)Landroid/widget/RemoteViews;
    .registers 2

    #@0
    const/4 p1, 0x0

    #@1
    return-object p1
.end method

.method public makeHeadsUpContentView(Landroidx/core/app/NotificationBuilderWithBuilderAccessor;)Landroid/widget/RemoteViews;
    .registers 2

    #@0
    const/4 p1, 0x0

    #@1
    return-object p1
.end method
