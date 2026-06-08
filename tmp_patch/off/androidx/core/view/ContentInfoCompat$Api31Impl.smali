.class final Landroidx/core/view/ContentInfoCompat$Api31Impl;
.super Ljava/lang/Object;
.source "ContentInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/ContentInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Api31Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static partition(Landroid/view/ContentInfo;Ljava/util/function/Predicate;)Landroid/util/Pair;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ContentInfo;",
            "Ljava/util/function/Predicate<",
            "Landroid/content/ClipData$Item;",
            ">;)",
            "Landroid/util/Pair<",
            "Landroid/view/ContentInfo;",
            "Landroid/view/ContentInfo;",
            ">;"
        }
    .end annotation

    #@0
    .line 339
    invoke-virtual {p0}, Landroid/view/ContentInfo;->getClip()Landroid/content/ClipData;

    #@3
    move-result-object v0

    #@4
    .line 340
    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    #@7
    move-result v1

    #@8
    const/4 v2, 0x1

    #@9
    const/4 v3, 0x0

    #@a
    if-ne v1, v2, :cond_22

    #@c
    const/4 v1, 0x0

    #@d
    .line 341
    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    #@10
    move-result-object v0

    #@11
    invoke-interface {p1, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    #@14
    move-result p1

    #@15
    if-eqz p1, :cond_19

    #@17
    move-object v0, p0

    #@18
    goto :goto_1a

    #@19
    :cond_19
    move-object v0, v3

    #@1a
    :goto_1a
    if-eqz p1, :cond_1d

    #@1c
    move-object p0, v3

    #@1d
    .line 342
    :cond_1d
    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    #@20
    move-result-object p0

    #@21
    return-object p0

    #@22
    .line 344
    :cond_22
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@25
    new-instance v1, Landroidx/core/view/ContentInfoCompat$Api31Impl$$ExternalSyntheticLambda0;

    #@27
    invoke-direct {v1, p1}, Landroidx/core/view/ContentInfoCompat$Api31Impl$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Predicate;)V

    #@2a
    invoke-static {v0, v1}, Landroidx/core/view/ContentInfoCompat;->partition(Landroid/content/ClipData;Landroidx/core/util/Predicate;)Landroid/util/Pair;

    #@2d
    move-result-object p1

    #@2e
    .line 345
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@30
    if-nez v0, :cond_37

    #@32
    .line 346
    invoke-static {v3, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    #@35
    move-result-object p0

    #@36
    return-object p0

    #@37
    .line 347
    :cond_37
    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@39
    if-nez v0, :cond_40

    #@3b
    .line 348
    invoke-static {p0, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    #@3e
    move-result-object p0

    #@3f
    return-object p0

    #@40
    .line 350
    :cond_40
    new-instance v0, Landroid/view/ContentInfo$Builder;

    #@42
    invoke-direct {v0, p0}, Landroid/view/ContentInfo$Builder;-><init>(Landroid/view/ContentInfo;)V

    #@45
    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@47
    check-cast v1, Landroid/content/ClipData;

    #@49
    .line 351
    invoke-virtual {v0, v1}, Landroid/view/ContentInfo$Builder;->setClip(Landroid/content/ClipData;)Landroid/view/ContentInfo$Builder;

    #@4c
    move-result-object v0

    #@4d
    invoke-virtual {v0}, Landroid/view/ContentInfo$Builder;->build()Landroid/view/ContentInfo;

    #@50
    move-result-object v0

    #@51
    new-instance v1, Landroid/view/ContentInfo$Builder;

    #@53
    invoke-direct {v1, p0}, Landroid/view/ContentInfo$Builder;-><init>(Landroid/view/ContentInfo;)V

    #@56
    iget-object p0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@58
    check-cast p0, Landroid/content/ClipData;

    #@5a
    .line 352
    invoke-virtual {v1, p0}, Landroid/view/ContentInfo$Builder;->setClip(Landroid/content/ClipData;)Landroid/view/ContentInfo$Builder;

    #@5d
    move-result-object p0

    #@5e
    invoke-virtual {p0}, Landroid/view/ContentInfo$Builder;->build()Landroid/view/ContentInfo;

    #@61
    move-result-object p0

    #@62
    .line 350
    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    #@65
    move-result-object p0

    #@66
    return-object p0
.end method
