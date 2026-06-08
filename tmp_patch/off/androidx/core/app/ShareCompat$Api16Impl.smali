.class Landroidx/core/app/ShareCompat$Api16Impl;
.super Ljava/lang/Object;
.source "ShareCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/ShareCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api16Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 1089
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 1

    #@0
    .line 1120
    invoke-static {p0}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method static migrateExtraStreamToClipData(Landroid/content/Intent;Ljava/util/ArrayList;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    #@0
    const-string v0, "android.intent.extra.TEXT"

    #@2
    .line 1096
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    #@5
    move-result-object v0

    #@6
    const-string v1, "android.intent.extra.HTML_TEXT"

    #@8
    .line 1097
    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    .line 1099
    new-instance v2, Landroid/content/ClipData;

    #@e
    const/4 v3, 0x1

    #@f
    new-array v4, v3, [Ljava/lang/String;

    #@11
    .line 1100
    invoke-virtual {p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    #@14
    move-result-object v5

    #@15
    const/4 v6, 0x0

    #@16
    aput-object v5, v4, v6

    #@18
    new-instance v5, Landroid/content/ClipData$Item;

    #@1a
    .line 1101
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1d
    move-result-object v6

    #@1e
    check-cast v6, Landroid/net/Uri;

    #@20
    const/4 v7, 0x0

    #@21
    invoke-direct {v5, v0, v1, v7, v6}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/Intent;Landroid/net/Uri;)V

    #@24
    invoke-direct {v2, v7, v4, v5}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    #@27
    .line 1103
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@2a
    move-result v0

    #@2b
    move v1, v3

    #@2c
    :goto_2c
    if-ge v1, v0, :cond_3f

    #@2e
    .line 1104
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@31
    move-result-object v4

    #@32
    check-cast v4, Landroid/net/Uri;

    #@34
    .line 1105
    new-instance v5, Landroid/content/ClipData$Item;

    #@36
    invoke-direct {v5, v4}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    #@39
    invoke-virtual {v2, v5}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    #@3c
    add-int/lit8 v1, v1, 0x1

    #@3e
    goto :goto_2c

    #@3f
    .line 1108
    :cond_3f
    invoke-virtual {p0, v2}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    #@42
    .line 1109
    invoke-virtual {p0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@45
    return-void
.end method

.method static removeClipData(Landroid/content/Intent;)V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    .line 1114
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    #@4
    .line 1115
    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    #@7
    move-result v0

    #@8
    and-int/lit8 v0, v0, -0x2

    #@a
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    #@d
    return-void
.end method
