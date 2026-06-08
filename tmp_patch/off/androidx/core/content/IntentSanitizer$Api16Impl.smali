.class Landroidx/core/content/IntentSanitizer$Api16Impl;
.super Ljava/lang/Object;
.source "IntentSanitizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/content/IntentSanitizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api16Impl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/content/IntentSanitizer$Api16Impl$Api31Impl;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 897
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static checkOtherMembers(ILandroid/content/ClipData$Item;Landroidx/core/util/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/ClipData$Item;",
            "Landroidx/core/util/Consumer<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 965
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getHtmlText()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    if-nez v0, :cond_c

    #@6
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    #@9
    move-result-object v0

    #@a
    if-eqz v0, :cond_28

    #@c
    .line 966
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    #@e
    const-string v1, "ClipData item at position "

    #@10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@13
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    move-result-object p0

    #@17
    const-string v0, " contains htmlText, textLinks or intent: "

    #@19
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object p0

    #@1d
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@20
    move-result-object p0

    #@21
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object p0

    #@25
    invoke-interface {p2, p0}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    #@28
    :cond_28
    return-void
.end method

.method static sanitizeClipData(Landroid/content/Intent;Landroid/content/Intent;Landroidx/core/util/Predicate;ZLandroidx/core/util/Predicate;Landroidx/core/util/Consumer;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/content/Intent;",
            "Landroidx/core/util/Predicate<",
            "Landroid/content/ClipData;",
            ">;Z",
            "Landroidx/core/util/Predicate<",
            "Landroid/net/Uri;",
            ">;",
            "Landroidx/core/util/Consumer<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 905
    invoke-virtual {p0}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    #@3
    move-result-object p0

    #@4
    if-nez p0, :cond_7

    #@6
    return-void

    #@7
    :cond_7
    if-eqz p2, :cond_14

    #@9
    .line 910
    invoke-interface {p2, p0}, Landroidx/core/util/Predicate;->test(Ljava/lang/Object;)Z

    #@c
    move-result p2

    #@d
    if-eqz p2, :cond_14

    #@f
    .line 911
    invoke-virtual {p1, p0}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    #@12
    goto/16 :goto_de

    #@14
    :cond_14
    const/4 p2, 0x0

    #@15
    const/4 v0, 0x0

    #@16
    move-object v1, p2

    #@17
    .line 913
    :goto_17
    invoke-virtual {p0}, Landroid/content/ClipData;->getItemCount()I

    #@1a
    move-result v2

    #@1b
    if-ge v0, v2, :cond_d9

    #@1d
    .line 914
    invoke-virtual {p0, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    #@20
    move-result-object v2

    #@21
    .line 915
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    #@23
    const/16 v4, 0x1f

    #@25
    if-lt v3, v4, :cond_2b

    #@27
    .line 916
    invoke-static {v0, v2, p5}, Landroidx/core/content/IntentSanitizer$Api16Impl$Api31Impl;->checkOtherMembers(ILandroid/content/ClipData$Item;Landroidx/core/util/Consumer;)V

    #@2a
    goto :goto_2e

    #@2b
    .line 918
    :cond_2b
    invoke-static {v0, v2, p5}, Landroidx/core/content/IntentSanitizer$Api16Impl;->checkOtherMembers(ILandroid/content/ClipData$Item;Landroidx/core/util/Consumer;)V

    #@2e
    :goto_2e
    if-eqz p3, :cond_35

    #@30
    .line 923
    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    #@33
    move-result-object v3

    #@34
    goto :goto_5c

    #@35
    .line 925
    :cond_35
    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    #@38
    move-result-object v3

    #@39
    if-eqz v3, :cond_5b

    #@3b
    .line 926
    new-instance v3, Ljava/lang/StringBuilder;

    #@3d
    const-string v4, "Item text cannot contain value. Item position: "

    #@3f
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@42
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@45
    move-result-object v3

    #@46
    const-string v4, ". Text: "

    #@48
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v3

    #@4c
    .line 928
    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    #@4f
    move-result-object v4

    #@50
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v3

    #@54
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v3

    #@58
    .line 926
    invoke-interface {p5, v3}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    #@5b
    :cond_5b
    move-object v3, p2

    #@5c
    :goto_5c
    const-string v4, ". URI: "

    #@5e
    const-string v5, "Item URI is not allowed. Item position: "

    #@60
    if-nez p4, :cond_85

    #@62
    .line 934
    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    #@65
    move-result-object v6

    #@66
    if-eqz v6, :cond_b2

    #@68
    .line 935
    new-instance v6, Ljava/lang/StringBuilder;

    #@6a
    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@6d
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@70
    move-result-object v5

    #@71
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v4

    #@75
    .line 937
    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    #@78
    move-result-object v2

    #@79
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v2

    #@7d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@80
    move-result-object v2

    #@81
    .line 935
    invoke-interface {p5, v2}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    #@84
    goto :goto_b2

    #@85
    .line 940
    :cond_85
    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    #@88
    move-result-object v6

    #@89
    if-eqz v6, :cond_b4

    #@8b
    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    #@8e
    move-result-object v6

    #@8f
    invoke-interface {p4, v6}, Landroidx/core/util/Predicate;->test(Ljava/lang/Object;)Z

    #@92
    move-result v6

    #@93
    if-eqz v6, :cond_96

    #@95
    goto :goto_b4

    #@96
    .line 943
    :cond_96
    new-instance v6, Ljava/lang/StringBuilder;

    #@98
    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@9b
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@9e
    move-result-object v5

    #@9f
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a2
    move-result-object v4

    #@a3
    .line 945
    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    #@a6
    move-result-object v2

    #@a7
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@aa
    move-result-object v2

    #@ab
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ae
    move-result-object v2

    #@af
    .line 943
    invoke-interface {p5, v2}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    #@b2
    :cond_b2
    :goto_b2
    move-object v2, p2

    #@b3
    goto :goto_b8

    #@b4
    .line 941
    :cond_b4
    :goto_b4
    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    #@b7
    move-result-object v2

    #@b8
    :goto_b8
    if-nez v3, :cond_bc

    #@ba
    if-eqz v2, :cond_d5

    #@bc
    :cond_bc
    if-nez v1, :cond_cd

    #@be
    .line 951
    new-instance v1, Landroid/content/ClipData;

    #@c0
    invoke-virtual {p0}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    #@c3
    move-result-object v4

    #@c4
    new-instance v5, Landroid/content/ClipData$Item;

    #@c6
    invoke-direct {v5, v3, p2, v2}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;Landroid/content/Intent;Landroid/net/Uri;)V

    #@c9
    invoke-direct {v1, v4, v5}, Landroid/content/ClipData;-><init>(Landroid/content/ClipDescription;Landroid/content/ClipData$Item;)V

    #@cc
    goto :goto_d5

    #@cd
    .line 954
    :cond_cd
    new-instance v4, Landroid/content/ClipData$Item;

    #@cf
    invoke-direct {v4, v3, p2, v2}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;Landroid/content/Intent;Landroid/net/Uri;)V

    #@d2
    invoke-virtual {v1, v4}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    #@d5
    :cond_d5
    :goto_d5
    add-int/lit8 v0, v0, 0x1

    #@d7
    goto/16 :goto_17

    #@d9
    :cond_d9
    if-eqz v1, :cond_de

    #@db
    .line 959
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    #@de
    :cond_de
    :goto_de
    return-void
.end method
