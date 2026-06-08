.class Landroidx/core/content/pm/ShortcutManagerCompat$Api25Impl;
.super Ljava/lang/Object;
.source "ShortcutManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/content/pm/ShortcutManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api25Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 922
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static getShortcutInfoWithLowestRank(Ljava/util/List;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    #@0
    .line 926
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@3
    move-result-object p0

    #@4
    const/4 v0, -0x1

    #@5
    const/4 v1, 0x0

    #@6
    :cond_6
    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_24

    #@c
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v2

    #@10
    check-cast v2, Landroid/content/pm/ShortcutInfo;

    #@12
    .line 927
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getRank()I

    #@15
    move-result v3

    #@16
    if-le v3, v0, :cond_6

    #@18
    .line 928
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    .line 929
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getRank()I

    #@1f
    move-result v1

    #@20
    move v4, v1

    #@21
    move-object v1, v0

    #@22
    move v0, v4

    #@23
    goto :goto_6

    #@24
    :cond_24
    return-object v1
.end method
