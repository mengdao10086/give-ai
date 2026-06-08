.class final Lcom/blankj/utilcode/util/UtilsBridge$FileHead;
.super Ljava/lang/Object;
.source "UtilsBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blankj/utilcode/util/UtilsBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FileHead"
.end annotation


# instance fields
.field private mFirst:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLast:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 3

    #@0
    .line 625
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 622
    new-instance v0, Ljava/util/LinkedHashMap;

    #@5
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    #@8
    iput-object v0, p0, Lcom/blankj/utilcode/util/UtilsBridge$FileHead;->mFirst:Ljava/util/LinkedHashMap;

    #@a
    .line 623
    new-instance v0, Ljava/util/LinkedHashMap;

    #@c
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    #@f
    iput-object v0, p0, Lcom/blankj/utilcode/util/UtilsBridge$FileHead;->mLast:Ljava/util/LinkedHashMap;

    #@11
    .line 626
    iput-object p1, p0, Lcom/blankj/utilcode/util/UtilsBridge$FileHead;->mName:Ljava/lang/String;

    #@13
    return-void
.end method

.method private append2Host(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    #@0
    .line 651
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_30

    #@6
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_d

    #@c
    goto :goto_30

    #@d
    .line 654
    :cond_d
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@10
    move-result v0

    #@11
    rsub-int/lit8 v0, v0, 0x13

    #@13
    if-lez v0, :cond_2d

    #@15
    .line 656
    new-instance v1, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object p2

    #@1e
    const-string v1, "                   "

    #@20
    const/4 v2, 0x0

    #@21
    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@24
    move-result-object v0

    #@25
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object p2

    #@29
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object p2

    #@2d
    .line 658
    :cond_2d
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@30
    :cond_30
    :goto_30
    return-void
.end method

.method private append2Host(Ljava/util/Map;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    if-eqz p2, :cond_2d

    #@2
    .line 642
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_9

    #@8
    goto :goto_2d

    #@9
    .line 645
    :cond_9
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@c
    move-result-object p2

    #@d
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@10
    move-result-object p2

    #@11
    :goto_11
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    #@14
    move-result v0

    #@15
    if-eqz v0, :cond_2d

    #@17
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, Ljava/util/Map$Entry;

    #@1d
    .line 646
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@20
    move-result-object v1

    #@21
    check-cast v1, Ljava/lang/String;

    #@23
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@26
    move-result-object v0

    #@27
    check-cast v0, Ljava/lang/String;

    #@29
    invoke-direct {p0, p1, v1, v0}, Lcom/blankj/utilcode/util/UtilsBridge$FileHead;->append2Host(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    #@2c
    goto :goto_11

    #@2d
    :cond_2d
    :goto_2d
    return-void
.end method


# virtual methods
.method addFirst(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    #@0
    .line 630
    iget-object v0, p0, Lcom/blankj/utilcode/util/UtilsBridge$FileHead;->mFirst:Ljava/util/LinkedHashMap;

    #@2
    invoke-direct {p0, v0, p1, p2}, Lcom/blankj/utilcode/util/UtilsBridge$FileHead;->append2Host(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    #@5
    return-void
.end method

.method append(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    #@0
    .line 638
    iget-object v0, p0, Lcom/blankj/utilcode/util/UtilsBridge$FileHead;->mLast:Ljava/util/LinkedHashMap;

    #@2
    invoke-direct {p0, v0, p1, p2}, Lcom/blankj/utilcode/util/UtilsBridge$FileHead;->append2Host(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    #@5
    return-void
.end method

.method append(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 634
    iget-object v0, p0, Lcom/blankj/utilcode/util/UtilsBridge$FileHead;->mLast:Ljava/util/LinkedHashMap;

    #@2
    invoke-direct {p0, v0, p1}, Lcom/blankj/utilcode/util/UtilsBridge$FileHead;->append2Host(Ljava/util/Map;Ljava/util/Map;)V

    #@5
    return-void
.end method

.method public getAppended()Ljava/lang/String;
    .registers 6

    #@0
    .line 662
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 663
    iget-object v1, p0, Lcom/blankj/utilcode/util/UtilsBridge$FileHead;->mLast:Ljava/util/LinkedHashMap;

    #@7
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    #@a
    move-result-object v1

    #@b
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v1

    #@f
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v2

    #@13
    if-eqz v2, :cond_3b

    #@15
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v2

    #@19
    check-cast v2, Ljava/util/Map$Entry;

    #@1b
    .line 664
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@1e
    move-result-object v3

    #@1f
    check-cast v3, Ljava/lang/String;

    #@21
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v3

    #@25
    const-string v4, ": "

    #@27
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v3

    #@2b
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@2e
    move-result-object v2

    #@2f
    check-cast v2, Ljava/lang/String;

    #@31
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v2

    #@35
    const-string v3, "\n"

    #@37
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    goto :goto_f

    #@3b
    .line 666
    :cond_3b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v0

    #@3f
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    #@0
    .line 671
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 672
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    const-string v2, "************* "

    #@9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@c
    iget-object v2, p0, Lcom/blankj/utilcode/util/UtilsBridge$FileHead;->mName:Ljava/lang/String;

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    const-string v2, " Head ****************\n"

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    .line 673
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    .line 674
    iget-object v2, p0, Lcom/blankj/utilcode/util/UtilsBridge$FileHead;->mFirst:Ljava/util/LinkedHashMap;

    #@21
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    #@24
    move-result-object v2

    #@25
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@28
    move-result-object v2

    #@29
    :goto_29
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@2c
    move-result v3

    #@2d
    const-string v4, "\n"

    #@2f
    if-eqz v3, :cond_55

    #@31
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@34
    move-result-object v3

    #@35
    check-cast v3, Ljava/util/Map$Entry;

    #@37
    .line 675
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@3a
    move-result-object v5

    #@3b
    check-cast v5, Ljava/lang/String;

    #@3d
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v5

    #@41
    const-string v6, ": "

    #@43
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v5

    #@47
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@4a
    move-result-object v3

    #@4b
    check-cast v3, Ljava/lang/String;

    #@4d
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v3

    #@51
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    goto :goto_29

    #@55
    :cond_55
    const-string v2, "Rom Info           : "

    #@57
    .line 678
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v2

    #@5b
    invoke-static {}, Lcom/blankj/utilcode/util/RomUtils;->getRomInfo()Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    #@5e
    move-result-object v3

    #@5f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v2

    #@63
    const-string v3, "\nDevice Manufacturer: "

    #@65
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    .line 679
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    #@6a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v2

    #@6e
    const-string v3, "\nDevice Model       : "

    #@70
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    .line 680
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    #@75
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v2

    #@79
    const-string v3, "\nAndroid Version    : "

    #@7b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    .line 681
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    #@80
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v2

    #@84
    const-string v3, "\nAndroid SDK        : "

    #@86
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    .line 682
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    #@8b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v2

    #@8f
    const-string v3, "\nApp VersionName    : "

    #@91
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    .line 683
    invoke-static {}, Lcom/blankj/utilcode/util/AppUtils;->getAppVersionName()Ljava/lang/String;

    #@97
    move-result-object v2

    #@98
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v2

    #@9c
    const-string v3, "\nApp VersionCode    : "

    #@9e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    .line 684
    invoke-static {}, Lcom/blankj/utilcode/util/AppUtils;->getAppVersionCode()I

    #@a4
    move-result v2

    #@a5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v2

    #@a9
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ac
    .line 686
    invoke-virtual {p0}, Lcom/blankj/utilcode/util/UtilsBridge$FileHead;->getAppended()Ljava/lang/String;

    #@af
    move-result-object v2

    #@b0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b3
    .line 687
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b6
    move-result-object v0

    #@b7
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ba
    move-result-object v0

    #@bb
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@be
    move-result-object v0

    #@bf
    return-object v0
.end method
