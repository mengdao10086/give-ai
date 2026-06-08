.class Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal19;
.super Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal;
.source "EmojiTextViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/viewsintegration/EmojiTextViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HelperInternal19"
.end annotation


# instance fields
.field private final mEmojiInputFilter:Landroidx/emoji2/viewsintegration/EmojiInputFilter;

.field private mEnabled:Z

.field private final mTextView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .registers 3

    #@0
    .line 322
    invoke-direct {p0}, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal;-><init>()V

    #@3
    .line 323
    iput-object p1, p0, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal19;->mTextView:Landroid/widget/TextView;

    #@5
    const/4 v0, 0x1

    #@6
    .line 324
    iput-boolean v0, p0, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal19;->mEnabled:Z

    #@8
    .line 325
    new-instance v0, Landroidx/emoji2/viewsintegration/EmojiInputFilter;

    #@a
    invoke-direct {v0, p1}, Landroidx/emoji2/viewsintegration/EmojiInputFilter;-><init>(Landroid/widget/TextView;)V

    #@d
    iput-object v0, p0, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal19;->mEmojiInputFilter:Landroidx/emoji2/viewsintegration/EmojiInputFilter;

    #@f
    return-void
.end method

.method private addEmojiInputFilterIfMissing([Landroid/text/InputFilter;)[Landroid/text/InputFilter;
    .registers 7

    #@0
    .line 365
    array-length v0, p1

    #@1
    const/4 v1, 0x0

    #@2
    move v2, v1

    #@3
    :goto_3
    if-ge v2, v0, :cond_f

    #@5
    .line 367
    aget-object v3, p1, v2

    #@7
    iget-object v4, p0, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal19;->mEmojiInputFilter:Landroidx/emoji2/viewsintegration/EmojiInputFilter;

    #@9
    if-ne v3, v4, :cond_c

    #@b
    return-object p1

    #@c
    :cond_c
    add-int/lit8 v2, v2, 0x1

    #@e
    goto :goto_3

    #@f
    .line 371
    :cond_f
    array-length v2, p1

    #@10
    add-int/lit8 v2, v2, 0x1

    #@12
    new-array v2, v2, [Landroid/text/InputFilter;

    #@14
    .line 372
    invoke-static {p1, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@17
    .line 373
    iget-object p1, p0, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal19;->mEmojiInputFilter:Landroidx/emoji2/viewsintegration/EmojiInputFilter;

    #@19
    aput-object p1, v2, v0

    #@1b
    return-object v2
.end method

.method private getEmojiInputFilterPositionArray([Landroid/text/InputFilter;)Landroid/util/SparseArray;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/text/InputFilter;",
            ")",
            "Landroid/util/SparseArray<",
            "Landroid/text/InputFilter;",
            ">;"
        }
    .end annotation

    #@0
    .line 409
    new-instance v0, Landroid/util/SparseArray;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    #@6
    const/4 v1, 0x0

    #@7
    .line 410
    :goto_7
    array-length v2, p1

    #@8
    if-ge v1, v2, :cond_16

    #@a
    .line 411
    aget-object v2, p1, v1

    #@c
    instance-of v3, v2, Landroidx/emoji2/viewsintegration/EmojiInputFilter;

    #@e
    if-eqz v3, :cond_13

    #@10
    .line 412
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@13
    :cond_13
    add-int/lit8 v1, v1, 0x1

    #@15
    goto :goto_7

    #@16
    :cond_16
    return-object v0
.end method

.method private removeEmojiInputFilterIfPresent([Landroid/text/InputFilter;)[Landroid/text/InputFilter;
    .registers 8

    #@0
    .line 385
    invoke-direct {p0, p1}, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal19;->getEmojiInputFilterPositionArray([Landroid/text/InputFilter;)Landroid/util/SparseArray;

    #@3
    move-result-object v0

    #@4
    .line 386
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    #@7
    move-result v1

    #@8
    if-nez v1, :cond_b

    #@a
    return-object p1

    #@b
    .line 391
    :cond_b
    array-length v1, p1

    #@c
    .line 392
    array-length v2, p1

    #@d
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    #@10
    move-result v3

    #@11
    sub-int/2addr v2, v3

    #@12
    .line 393
    new-array v2, v2, [Landroid/text/InputFilter;

    #@14
    const/4 v3, 0x0

    #@15
    move v4, v3

    #@16
    :goto_16
    if-ge v3, v1, :cond_27

    #@18
    .line 396
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->indexOfKey(I)I

    #@1b
    move-result v5

    #@1c
    if-gez v5, :cond_24

    #@1e
    .line 397
    aget-object v5, p1, v3

    #@20
    aput-object v5, v2, v4

    #@22
    add-int/lit8 v4, v4, 0x1

    #@24
    :cond_24
    add-int/lit8 v3, v3, 0x1

    #@26
    goto :goto_16

    #@27
    :cond_27
    return-object v2
.end method

.method private unwrapForDisabled(Landroid/text/method/TransformationMethod;)Landroid/text/method/TransformationMethod;
    .registers 3

    #@0
    .line 435
    instance-of v0, p1, Landroidx/emoji2/viewsintegration/EmojiTransformationMethod;

    #@2
    if-eqz v0, :cond_a

    #@4
    .line 436
    check-cast p1, Landroidx/emoji2/viewsintegration/EmojiTransformationMethod;

    #@6
    .line 438
    invoke-virtual {p1}, Landroidx/emoji2/viewsintegration/EmojiTransformationMethod;->getOriginalTransformationMethod()Landroid/text/method/TransformationMethod;

    #@9
    move-result-object p1

    #@a
    :cond_a
    return-object p1
.end method

.method private updateFilters()V
    .registers 3

    #@0
    .line 342
    iget-object v0, p0, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal19;->mTextView:Landroid/widget/TextView;

    #@2
    invoke-virtual {v0}, Landroid/widget/TextView;->getFilters()[Landroid/text/InputFilter;

    #@5
    move-result-object v0

    #@6
    .line 343
    iget-object v1, p0, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal19;->mTextView:Landroid/widget/TextView;

    #@8
    invoke-virtual {p0, v0}, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal19;->getFilters([Landroid/text/InputFilter;)[Landroid/text/InputFilter;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    #@f
    return-void
.end method

.method private wrapForEnabled(Landroid/text/method/TransformationMethod;)Landroid/text/method/TransformationMethod;
    .registers 3

    #@0
    .line 452
    instance-of v0, p1, Landroidx/emoji2/viewsintegration/EmojiTransformationMethod;

    #@2
    if-eqz v0, :cond_5

    #@4
    return-object p1

    #@5
    .line 454
    :cond_5
    instance-of v0, p1, Landroid/text/method/PasswordTransformationMethod;

    #@7
    if-eqz v0, :cond_a

    #@9
    return-object p1

    #@a
    .line 457
    :cond_a
    new-instance v0, Landroidx/emoji2/viewsintegration/EmojiTransformationMethod;

    #@c
    invoke-direct {v0, p1}, Landroidx/emoji2/viewsintegration/EmojiTransformationMethod;-><init>(Landroid/text/method/TransformationMethod;)V

    #@f
    return-object v0
.end method


# virtual methods
.method getFilters([Landroid/text/InputFilter;)[Landroid/text/InputFilter;
    .registers 3

    #@0
    .line 349
    iget-boolean v0, p0, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal19;->mEnabled:Z

    #@2
    if-nez v0, :cond_9

    #@4
    .line 351
    invoke-direct {p0, p1}, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal19;->removeEmojiInputFilterIfPresent([Landroid/text/InputFilter;)[Landroid/text/InputFilter;

    #@7
    move-result-object p1

    #@8
    return-object p1

    #@9
    .line 353
    :cond_9
    invoke-direct {p0, p1}, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal19;->addEmojiInputFilterIfMissing([Landroid/text/InputFilter;)[Landroid/text/InputFilter;

    #@c
    move-result-object p1

    #@d
    return-object p1
.end method

.method public isEnabled()Z
    .registers 2

    #@0
    .line 479
    iget-boolean v0, p0, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal19;->mEnabled:Z

    #@2
    return v0
.end method

.method setAllCaps(Z)V
    .registers 2

    #@0
    if-eqz p1, :cond_5

    #@2
    .line 466
    invoke-virtual {p0}, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal19;->updateTransformationMethod()V

    #@5
    :cond_5
    return-void
.end method

.method setEnabled(Z)V
    .registers 2

    #@0
    .line 472
    iput-boolean p1, p0, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal19;->mEnabled:Z

    #@2
    .line 473
    invoke-virtual {p0}, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal19;->updateTransformationMethod()V

    #@5
    .line 474
    invoke-direct {p0}, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal19;->updateFilters()V

    #@8
    return-void
.end method

.method setEnabledUnsafe(Z)V
    .registers 2

    #@0
    .line 491
    iput-boolean p1, p0, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal19;->mEnabled:Z

    #@2
    return-void
.end method

.method updateTransformationMethod()V
    .registers 3

    #@0
    .line 333
    iget-object v0, p0, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal19;->mTextView:Landroid/widget/TextView;

    #@2
    .line 334
    invoke-virtual {v0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p0, v0}, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal19;->wrapTransformationMethod(Landroid/text/method/TransformationMethod;)Landroid/text/method/TransformationMethod;

    #@9
    move-result-object v0

    #@a
    .line 335
    iget-object v1, p0, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal19;->mTextView:Landroid/widget/TextView;

    #@c
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    #@f
    return-void
.end method

.method wrapTransformationMethod(Landroid/text/method/TransformationMethod;)Landroid/text/method/TransformationMethod;
    .registers 3

    #@0
    .line 422
    iget-boolean v0, p0, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal19;->mEnabled:Z

    #@2
    if-eqz v0, :cond_9

    #@4
    .line 423
    invoke-direct {p0, p1}, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal19;->wrapForEnabled(Landroid/text/method/TransformationMethod;)Landroid/text/method/TransformationMethod;

    #@7
    move-result-object p1

    #@8
    return-object p1

    #@9
    .line 425
    :cond_9
    invoke-direct {p0, p1}, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal19;->unwrapForDisabled(Landroid/text/method/TransformationMethod;)Landroid/text/method/TransformationMethod;

    #@c
    move-result-object p1

    #@d
    return-object p1
.end method
