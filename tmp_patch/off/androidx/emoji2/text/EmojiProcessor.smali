.class final Landroidx/emoji2/text/EmojiProcessor;
.super Ljava/lang/Object;
.source "EmojiProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/emoji2/text/EmojiProcessor$CodepointIndexFinder;,
        Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;
    }
.end annotation


# static fields
.field private static final ACTION_ADVANCE_BOTH:I = 0x1

.field private static final ACTION_ADVANCE_END:I = 0x2

.field private static final ACTION_FLUSH:I = 0x3


# instance fields
.field private final mEmojiAsDefaultStyleExceptions:[I

.field private mGlyphChecker:Landroidx/emoji2/text/EmojiCompat$GlyphChecker;

.field private final mMetadataRepo:Landroidx/emoji2/text/MetadataRepo;

.field private final mSpanFactory:Landroidx/emoji2/text/EmojiCompat$SpanFactory;

.field private final mUseEmojiAsDefaultStyle:Z


# direct methods
.method constructor <init>(Landroidx/emoji2/text/MetadataRepo;Landroidx/emoji2/text/EmojiCompat$SpanFactory;Landroidx/emoji2/text/EmojiCompat$GlyphChecker;Z[I)V
    .registers 6

    #@0
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 113
    iput-object p2, p0, Landroidx/emoji2/text/EmojiProcessor;->mSpanFactory:Landroidx/emoji2/text/EmojiCompat$SpanFactory;

    #@5
    .line 114
    iput-object p1, p0, Landroidx/emoji2/text/EmojiProcessor;->mMetadataRepo:Landroidx/emoji2/text/MetadataRepo;

    #@7
    .line 115
    iput-object p3, p0, Landroidx/emoji2/text/EmojiProcessor;->mGlyphChecker:Landroidx/emoji2/text/EmojiCompat$GlyphChecker;

    #@9
    .line 116
    iput-boolean p4, p0, Landroidx/emoji2/text/EmojiProcessor;->mUseEmojiAsDefaultStyle:Z

    #@b
    .line 117
    iput-object p5, p0, Landroidx/emoji2/text/EmojiProcessor;->mEmojiAsDefaultStyleExceptions:[I

    #@d
    return-void
.end method

.method private addEmoji(Landroid/text/Spannable;Landroidx/emoji2/text/EmojiMetadata;II)V
    .registers 6

    #@0
    .line 490
    iget-object v0, p0, Landroidx/emoji2/text/EmojiProcessor;->mSpanFactory:Landroidx/emoji2/text/EmojiCompat$SpanFactory;

    #@2
    invoke-virtual {v0, p2}, Landroidx/emoji2/text/EmojiCompat$SpanFactory;->createSpan(Landroidx/emoji2/text/EmojiMetadata;)Landroidx/emoji2/text/EmojiSpan;

    #@5
    move-result-object p2

    #@6
    const/16 v0, 0x21

    #@8
    .line 491
    invoke-interface {p1, p2, p3, p4, v0}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    #@b
    return-void
.end method

.method private static delete(Landroid/text/Editable;Landroid/view/KeyEvent;Z)Z
    .registers 9

    #@0
    .line 375
    invoke-static {p1}, Landroidx/emoji2/text/EmojiProcessor;->hasModifiers(Landroid/view/KeyEvent;)Z

    #@3
    move-result p1

    #@4
    const/4 v0, 0x0

    #@5
    if-eqz p1, :cond_8

    #@7
    return v0

    #@8
    .line 379
    :cond_8
    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    #@b
    move-result p1

    #@c
    .line 380
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    #@f
    move-result v1

    #@10
    .line 381
    invoke-static {p1, v1}, Landroidx/emoji2/text/EmojiProcessor;->hasInvalidSelection(II)Z

    #@13
    move-result v2

    #@14
    if-eqz v2, :cond_17

    #@16
    return v0

    #@17
    .line 385
    :cond_17
    const-class v2, Landroidx/emoji2/text/EmojiSpan;

    #@19
    invoke-interface {p0, p1, v1, v2}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    #@1c
    move-result-object v1

    #@1d
    check-cast v1, [Landroidx/emoji2/text/EmojiSpan;

    #@1f
    if-eqz v1, :cond_46

    #@21
    .line 386
    array-length v2, v1

    #@22
    if-lez v2, :cond_46

    #@24
    .line 387
    array-length v2, v1

    #@25
    move v3, v0

    #@26
    :goto_26
    if-ge v3, v2, :cond_46

    #@28
    .line 389
    aget-object v4, v1, v3

    #@2a
    .line 390
    invoke-interface {p0, v4}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    #@2d
    move-result v5

    #@2e
    .line 391
    invoke-interface {p0, v4}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    #@31
    move-result v4

    #@32
    if-eqz p2, :cond_36

    #@34
    if-eq v5, p1, :cond_3e

    #@36
    :cond_36
    if-nez p2, :cond_3a

    #@38
    if-eq v4, p1, :cond_3e

    #@3a
    :cond_3a
    if-le p1, v5, :cond_43

    #@3c
    if-ge p1, v4, :cond_43

    #@3e
    .line 395
    :cond_3e
    invoke-interface {p0, v5, v4}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    #@41
    const/4 p0, 0x1

    #@42
    return p0

    #@43
    :cond_43
    add-int/lit8 v3, v3, 0x1

    #@45
    goto :goto_26

    #@46
    :cond_46
    return v0
.end method

.method static handleDeleteSurroundingText(Landroid/view/inputmethod/InputConnection;Landroid/text/Editable;IIZ)Z
    .registers 10

    #@0
    const/4 v0, 0x0

    #@1
    if-eqz p1, :cond_7f

    #@3
    if-nez p0, :cond_7

    #@5
    goto/16 :goto_7f

    #@7
    :cond_7
    if-ltz p2, :cond_7f

    #@9
    if-gez p3, :cond_d

    #@b
    goto/16 :goto_7f

    #@d
    .line 432
    :cond_d
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    #@10
    move-result v1

    #@11
    .line 433
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    #@14
    move-result v2

    #@15
    .line 435
    invoke-static {v1, v2}, Landroidx/emoji2/text/EmojiProcessor;->hasInvalidSelection(II)Z

    #@18
    move-result v3

    #@19
    if-eqz v3, :cond_1c

    #@1b
    return v0

    #@1c
    :cond_1c
    if-eqz p4, :cond_34

    #@1e
    .line 444
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    #@21
    move-result p2

    #@22
    .line 443
    invoke-static {p1, v1, p2}, Landroidx/emoji2/text/EmojiProcessor$CodepointIndexFinder;->findIndexBackward(Ljava/lang/CharSequence;II)I

    #@25
    move-result p2

    #@26
    .line 446
    invoke-static {p3, v0}, Ljava/lang/Math;->max(II)I

    #@29
    move-result p3

    #@2a
    .line 445
    invoke-static {p1, v2, p3}, Landroidx/emoji2/text/EmojiProcessor$CodepointIndexFinder;->findIndexForward(Ljava/lang/CharSequence;II)I

    #@2d
    move-result p3

    #@2e
    const/4 p4, -0x1

    #@2f
    if-eq p2, p4, :cond_33

    #@31
    if-ne p3, p4, :cond_42

    #@33
    :cond_33
    return v0

    #@34
    :cond_34
    sub-int/2addr v1, p2

    #@35
    .line 453
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    #@38
    move-result p2

    #@39
    add-int/2addr v2, p3

    #@3a
    .line 454
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    #@3d
    move-result p3

    #@3e
    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    #@41
    move-result p3

    #@42
    .line 457
    :cond_42
    const-class p4, Landroidx/emoji2/text/EmojiSpan;

    #@44
    invoke-interface {p1, p2, p3, p4}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    #@47
    move-result-object p4

    #@48
    check-cast p4, [Landroidx/emoji2/text/EmojiSpan;

    #@4a
    if-eqz p4, :cond_7f

    #@4c
    .line 458
    array-length v1, p4

    #@4d
    if-lez v1, :cond_7f

    #@4f
    .line 459
    array-length v1, p4

    #@50
    move v2, v0

    #@51
    :goto_51
    if-ge v2, v1, :cond_68

    #@53
    .line 461
    aget-object v3, p4, v2

    #@55
    .line 462
    invoke-interface {p1, v3}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    #@58
    move-result v4

    #@59
    .line 463
    invoke-interface {p1, v3}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    #@5c
    move-result v3

    #@5d
    .line 464
    invoke-static {v4, p2}, Ljava/lang/Math;->min(II)I

    #@60
    move-result p2

    #@61
    .line 465
    invoke-static {v3, p3}, Ljava/lang/Math;->max(II)I

    #@64
    move-result p3

    #@65
    add-int/lit8 v2, v2, 0x1

    #@67
    goto :goto_51

    #@68
    .line 468
    :cond_68
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    #@6b
    move-result p2

    #@6c
    .line 469
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    #@6f
    move-result p4

    #@70
    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    #@73
    move-result p3

    #@74
    .line 471
    invoke-interface {p0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    #@77
    .line 472
    invoke-interface {p1, p2, p3}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    #@7a
    .line 473
    invoke-interface {p0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    #@7d
    const/4 p0, 0x1

    #@7e
    return p0

    #@7f
    :cond_7f
    :goto_7f
    return v0
.end method

.method static handleOnKeyDown(Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .registers 6

    #@0
    const/16 v0, 0x43

    #@2
    const/4 v1, 0x1

    #@3
    const/4 v2, 0x0

    #@4
    if-eq p1, v0, :cond_11

    #@6
    const/16 v0, 0x70

    #@8
    if-eq p1, v0, :cond_c

    #@a
    move p1, v2

    #@b
    goto :goto_15

    #@c
    .line 358
    :cond_c
    invoke-static {p0, p2, v1}, Landroidx/emoji2/text/EmojiProcessor;->delete(Landroid/text/Editable;Landroid/view/KeyEvent;Z)Z

    #@f
    move-result p1

    #@10
    goto :goto_15

    #@11
    .line 355
    :cond_11
    invoke-static {p0, p2, v2}, Landroidx/emoji2/text/EmojiProcessor;->delete(Landroid/text/Editable;Landroid/view/KeyEvent;Z)Z

    #@14
    move-result p1

    #@15
    :goto_15
    if-eqz p1, :cond_1b

    #@17
    .line 366
    invoke-static {p0}, Landroid/text/method/MetaKeyKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    #@1a
    return v1

    #@1b
    :cond_1b
    return v2
.end method

.method private hasGlyph(Ljava/lang/CharSequence;IILandroidx/emoji2/text/EmojiMetadata;)Z
    .registers 7

    #@0
    .line 509
    invoke-virtual {p4}, Landroidx/emoji2/text/EmojiMetadata;->getHasGlyph()I

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_13

    #@6
    .line 510
    iget-object v0, p0, Landroidx/emoji2/text/EmojiProcessor;->mGlyphChecker:Landroidx/emoji2/text/EmojiCompat$GlyphChecker;

    #@8
    .line 511
    invoke-virtual {p4}, Landroidx/emoji2/text/EmojiMetadata;->getSdkAdded()S

    #@b
    move-result v1

    #@c
    .line 510
    invoke-interface {v0, p1, p2, p3, v1}, Landroidx/emoji2/text/EmojiCompat$GlyphChecker;->hasGlyph(Ljava/lang/CharSequence;III)Z

    #@f
    move-result p1

    #@10
    .line 512
    invoke-virtual {p4, p1}, Landroidx/emoji2/text/EmojiMetadata;->setHasGlyph(Z)V

    #@13
    .line 515
    :cond_13
    invoke-virtual {p4}, Landroidx/emoji2/text/EmojiMetadata;->getHasGlyph()I

    #@16
    move-result p1

    #@17
    const/4 p2, 0x2

    #@18
    if-ne p1, p2, :cond_1c

    #@1a
    const/4 p1, 0x1

    #@1b
    goto :goto_1d

    #@1c
    :cond_1c
    const/4 p1, 0x0

    #@1d
    :goto_1d
    return p1
.end method

.method private static hasInvalidSelection(II)Z
    .registers 3

    #@0
    const/4 v0, -0x1

    #@1
    if-eq p0, v0, :cond_a

    #@3
    if-eq p1, v0, :cond_a

    #@5
    if-eq p0, p1, :cond_8

    #@7
    goto :goto_a

    #@8
    :cond_8
    const/4 p0, 0x0

    #@9
    goto :goto_b

    #@a
    :cond_a
    :goto_a
    const/4 p0, 0x1

    #@b
    :goto_b
    return p0
.end method

.method private static hasModifiers(Landroid/view/KeyEvent;)Z
    .registers 1

    #@0
    .line 485
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getMetaState()I

    #@3
    move-result p0

    #@4
    invoke-static {p0}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    #@7
    move-result p0

    #@8
    xor-int/lit8 p0, p0, 0x1

    #@a
    return p0
.end method


# virtual methods
.method getEmojiMatch(Ljava/lang/CharSequence;)I
    .registers 3

    #@0
    .line 122
    iget-object v0, p0, Landroidx/emoji2/text/EmojiProcessor;->mMetadataRepo:Landroidx/emoji2/text/MetadataRepo;

    #@2
    invoke-virtual {v0}, Landroidx/emoji2/text/MetadataRepo;->getMetadataVersion()I

    #@5
    move-result v0

    #@6
    invoke-virtual {p0, p1, v0}, Landroidx/emoji2/text/EmojiProcessor;->getEmojiMatch(Ljava/lang/CharSequence;I)I

    #@9
    move-result p1

    #@a
    return p1
.end method

.method getEmojiMatch(Ljava/lang/CharSequence;I)I
    .registers 14

    #@0
    .line 128
    new-instance v0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;

    #@2
    iget-object v1, p0, Landroidx/emoji2/text/EmojiProcessor;->mMetadataRepo:Landroidx/emoji2/text/MetadataRepo;

    #@4
    invoke-virtual {v1}, Landroidx/emoji2/text/MetadataRepo;->getRootNode()Landroidx/emoji2/text/MetadataRepo$Node;

    #@7
    move-result-object v1

    #@8
    iget-boolean v2, p0, Landroidx/emoji2/text/EmojiProcessor;->mUseEmojiAsDefaultStyle:Z

    #@a
    iget-object v3, p0, Landroidx/emoji2/text/EmojiProcessor;->mEmojiAsDefaultStyleExceptions:[I

    #@c
    invoke-direct {v0, v1, v2, v3}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;-><init>(Landroidx/emoji2/text/MetadataRepo$Node;Z[I)V

    #@f
    .line 130
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@12
    move-result v1

    #@13
    const/4 v2, 0x0

    #@14
    move v3, v2

    #@15
    move v4, v3

    #@16
    move v5, v4

    #@17
    :cond_17
    :goto_17
    const/4 v6, 0x2

    #@18
    const/4 v7, 0x1

    #@19
    if-ge v3, v1, :cond_53

    #@1b
    .line 136
    invoke-static {p1, v3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    #@1e
    move-result v8

    #@1f
    .line 137
    invoke-virtual {v0, v8}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->check(I)I

    #@22
    move-result v9

    #@23
    .line 138
    invoke-virtual {v0}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->getCurrentMetadata()Landroidx/emoji2/text/EmojiMetadata;

    #@26
    move-result-object v10

    #@27
    if-eq v9, v7, :cond_42

    #@29
    if-eq v9, v6, :cond_3c

    #@2b
    const/4 v6, 0x3

    #@2c
    if-eq v9, v6, :cond_2f

    #@2e
    goto :goto_48

    #@2f
    .line 143
    :cond_2f
    invoke-virtual {v0}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->getFlushMetadata()Landroidx/emoji2/text/EmojiMetadata;

    #@32
    move-result-object v10

    #@33
    .line 144
    invoke-virtual {v10}, Landroidx/emoji2/text/EmojiMetadata;->getCompatAdded()S

    #@36
    move-result v6

    #@37
    if-gt v6, p2, :cond_48

    #@39
    add-int/lit8 v4, v4, 0x1

    #@3b
    goto :goto_48

    #@3c
    .line 155
    :cond_3c
    invoke-static {v8}, Ljava/lang/Character;->charCount(I)I

    #@3f
    move-result v6

    #@40
    add-int/2addr v3, v6

    #@41
    goto :goto_48

    #@42
    .line 150
    :cond_42
    invoke-static {v8}, Ljava/lang/Character;->charCount(I)I

    #@45
    move-result v5

    #@46
    add-int/2addr v3, v5

    #@47
    move v5, v2

    #@48
    :cond_48
    :goto_48
    if-eqz v10, :cond_17

    #@4a
    .line 159
    invoke-virtual {v10}, Landroidx/emoji2/text/EmojiMetadata;->getCompatAdded()S

    #@4d
    move-result v6

    #@4e
    if-gt v6, p2, :cond_17

    #@50
    add-int/lit8 v5, v5, 0x1

    #@52
    goto :goto_17

    #@53
    :cond_53
    if-eqz v4, :cond_56

    #@55
    return v6

    #@56
    .line 170
    :cond_56
    invoke-virtual {v0}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->isInFlushableState()Z

    #@59
    move-result p1

    #@5a
    if-eqz p1, :cond_67

    #@5c
    .line 173
    invoke-virtual {v0}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->getCurrentMetadata()Landroidx/emoji2/text/EmojiMetadata;

    #@5f
    move-result-object p1

    #@60
    .line 174
    invoke-virtual {p1}, Landroidx/emoji2/text/EmojiMetadata;->getCompatAdded()S

    #@63
    move-result p1

    #@64
    if-gt p1, p2, :cond_67

    #@66
    return v7

    #@67
    :cond_67
    if-nez v5, :cond_6a

    #@69
    return v2

    #@6a
    :cond_6a
    return v6
.end method

.method process(Ljava/lang/CharSequence;IIIZ)Ljava/lang/CharSequence;
    .registers 15

    #@0
    .line 210
    instance-of v0, p1, Landroidx/emoji2/text/SpannableBuilder;

    #@2
    if-eqz v0, :cond_a

    #@4
    .line 212
    move-object v1, p1

    #@5
    check-cast v1, Landroidx/emoji2/text/SpannableBuilder;

    #@7
    invoke-virtual {v1}, Landroidx/emoji2/text/SpannableBuilder;->beginBatchEdit()V

    #@a
    :cond_a
    if-nez v0, :cond_2c

    #@c
    .line 220
    :try_start_c
    instance-of v1, p1, Landroid/text/Spannable;

    #@e
    if-eqz v1, :cond_11

    #@10
    goto :goto_2c

    #@11
    .line 222
    :cond_11
    instance-of v1, p1, Landroid/text/Spanned;

    #@13
    if-eqz v1, :cond_2a

    #@15
    .line 225
    move-object v1, p1

    #@16
    check-cast v1, Landroid/text/Spanned;

    #@18
    add-int/lit8 v2, p2, -0x1

    #@1a
    add-int/lit8 v3, p3, 0x1

    #@1c
    const-class v4, Landroidx/emoji2/text/EmojiSpan;

    #@1e
    invoke-interface {v1, v2, v3, v4}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    #@21
    move-result v1

    #@22
    if-gt v1, p3, :cond_2a

    #@24
    .line 229
    new-instance v1, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;

    #@26
    invoke-direct {v1, p1}, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;-><init>(Ljava/lang/CharSequence;)V

    #@29
    goto :goto_34

    #@2a
    :cond_2a
    const/4 v1, 0x0

    #@2b
    goto :goto_34

    #@2c
    .line 221
    :cond_2c
    :goto_2c
    new-instance v1, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;

    #@2e
    move-object v2, p1

    #@2f
    check-cast v2, Landroid/text/Spannable;

    #@31
    invoke-direct {v1, v2}, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;-><init>(Landroid/text/Spannable;)V

    #@34
    :goto_34
    const/4 v2, 0x0

    #@35
    if-eqz v1, :cond_62

    #@37
    .line 234
    const-class v3, Landroidx/emoji2/text/EmojiSpan;

    #@39
    invoke-virtual {v1, p2, p3, v3}, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    #@3c
    move-result-object v3

    #@3d
    check-cast v3, [Landroidx/emoji2/text/EmojiSpan;

    #@3f
    if-eqz v3, :cond_62

    #@41
    .line 235
    array-length v4, v3

    #@42
    if-lez v4, :cond_62

    #@44
    .line 238
    array-length v4, v3

    #@45
    move v5, v2

    #@46
    :goto_46
    if-ge v5, v4, :cond_62

    #@48
    .line 240
    aget-object v6, v3, v5

    #@4a
    .line 241
    invoke-virtual {v1, v6}, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;->getSpanStart(Ljava/lang/Object;)I

    #@4d
    move-result v7

    #@4e
    .line 242
    invoke-virtual {v1, v6}, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;->getSpanEnd(Ljava/lang/Object;)I

    #@51
    move-result v8

    #@52
    if-eq v7, p3, :cond_57

    #@54
    .line 248
    invoke-virtual {v1, v6}, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;->removeSpan(Ljava/lang/Object;)V

    #@57
    .line 250
    :cond_57
    invoke-static {v7, p2}, Ljava/lang/Math;->min(II)I

    #@5a
    move-result p2

    #@5b
    .line 251
    invoke-static {v8, p3}, Ljava/lang/Math;->max(II)I

    #@5e
    move-result p3

    #@5f
    add-int/lit8 v5, v5, 0x1

    #@61
    goto :goto_46

    #@62
    :cond_62
    if-eq p2, p3, :cond_124

    #@64
    .line 256
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@67
    move-result v3

    #@68
    if-lt p2, v3, :cond_6c

    #@6a
    goto/16 :goto_124

    #@6c
    :cond_6c
    const v3, 0x7fffffff

    #@6f
    if-eq p4, v3, :cond_81

    #@71
    if-eqz v1, :cond_81

    #@73
    .line 263
    invoke-virtual {v1}, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;->length()I

    #@76
    move-result v3

    #@77
    const-class v4, Landroidx/emoji2/text/EmojiSpan;

    #@79
    invoke-virtual {v1, v2, v3, v4}, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    #@7c
    move-result-object v3

    #@7d
    check-cast v3, [Landroidx/emoji2/text/EmojiSpan;

    #@7f
    array-length v3, v3

    #@80
    sub-int/2addr p4, v3

    #@81
    .line 267
    :cond_81
    new-instance v3, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;

    #@83
    iget-object v4, p0, Landroidx/emoji2/text/EmojiProcessor;->mMetadataRepo:Landroidx/emoji2/text/MetadataRepo;

    #@85
    invoke-virtual {v4}, Landroidx/emoji2/text/MetadataRepo;->getRootNode()Landroidx/emoji2/text/MetadataRepo$Node;

    #@88
    move-result-object v4

    #@89
    iget-boolean v5, p0, Landroidx/emoji2/text/EmojiProcessor;->mUseEmojiAsDefaultStyle:Z

    #@8b
    iget-object v6, p0, Landroidx/emoji2/text/EmojiProcessor;->mEmojiAsDefaultStyleExceptions:[I

    #@8d
    invoke-direct {v3, v4, v5, v6}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;-><init>(Landroidx/emoji2/text/MetadataRepo$Node;Z[I)V

    #@90
    .line 271
    invoke-static {p1, p2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    #@93
    move-result v4

    #@94
    move v5, v4

    #@95
    move v4, v2

    #@96
    move-object v2, v1

    #@97
    :cond_97
    :goto_97
    move v1, p2

    #@98
    :cond_98
    :goto_98
    if-ge p2, p3, :cond_ea

    #@9a
    if-ge v4, p4, :cond_ea

    #@9c
    .line 274
    invoke-virtual {v3, v5}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->check(I)I

    #@9f
    move-result v6

    #@a0
    const/4 v7, 0x1

    #@a1
    if-eq v6, v7, :cond_d8

    #@a3
    const/4 v7, 0x2

    #@a4
    if-eq v6, v7, :cond_cc

    #@a6
    const/4 v7, 0x3

    #@a7
    if-eq v6, v7, :cond_aa

    #@a9
    goto :goto_98

    #@aa
    :cond_aa
    if-nez p5, :cond_b6

    #@ac
    .line 292
    invoke-virtual {v3}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->getFlushMetadata()Landroidx/emoji2/text/EmojiMetadata;

    #@af
    move-result-object v6

    #@b0
    .line 291
    invoke-direct {p0, p1, v1, p2, v6}, Landroidx/emoji2/text/EmojiProcessor;->hasGlyph(Ljava/lang/CharSequence;IILandroidx/emoji2/text/EmojiMetadata;)Z

    #@b3
    move-result v6

    #@b4
    if-nez v6, :cond_97

    #@b6
    :cond_b6
    if-nez v2, :cond_c2

    #@b8
    .line 294
    new-instance v2, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;

    #@ba
    new-instance v6, Landroid/text/SpannableString;

    #@bc
    invoke-direct {v6, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    #@bf
    invoke-direct {v2, v6}, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;-><init>(Landroid/text/Spannable;)V

    #@c2
    .line 297
    :cond_c2
    invoke-virtual {v3}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->getFlushMetadata()Landroidx/emoji2/text/EmojiMetadata;

    #@c5
    move-result-object v6

    #@c6
    invoke-direct {p0, v2, v6, v1, p2}, Landroidx/emoji2/text/EmojiProcessor;->addEmoji(Landroid/text/Spannable;Landroidx/emoji2/text/EmojiMetadata;II)V

    #@c9
    add-int/lit8 v4, v4, 0x1

    #@cb
    goto :goto_97

    #@cc
    .line 285
    :cond_cc
    invoke-static {v5}, Ljava/lang/Character;->charCount(I)I

    #@cf
    move-result v6

    #@d0
    add-int/2addr p2, v6

    #@d1
    if-ge p2, p3, :cond_98

    #@d3
    .line 287
    invoke-static {p1, p2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    #@d6
    move-result v5

    #@d7
    goto :goto_98

    #@d8
    .line 278
    :cond_d8
    invoke-static {p1, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    #@db
    move-result p2

    #@dc
    invoke-static {p2}, Ljava/lang/Character;->charCount(I)I

    #@df
    move-result p2

    #@e0
    add-int/2addr v1, p2

    #@e1
    if-ge v1, p3, :cond_e8

    #@e3
    .line 281
    invoke-static {p1, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    #@e6
    move-result p2

    #@e7
    move v5, p2

    #@e8
    :cond_e8
    move p2, v1

    #@e9
    goto :goto_98

    #@ea
    .line 309
    :cond_ea
    invoke-virtual {v3}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->isInFlushableState()Z

    #@ed
    move-result p3

    #@ee
    if-eqz p3, :cond_10d

    #@f0
    if-ge v4, p4, :cond_10d

    #@f2
    if-nez p5, :cond_fe

    #@f4
    .line 311
    invoke-virtual {v3}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->getCurrentMetadata()Landroidx/emoji2/text/EmojiMetadata;

    #@f7
    move-result-object p3

    #@f8
    .line 310
    invoke-direct {p0, p1, v1, p2, p3}, Landroidx/emoji2/text/EmojiProcessor;->hasGlyph(Ljava/lang/CharSequence;IILandroidx/emoji2/text/EmojiMetadata;)Z

    #@fb
    move-result p3

    #@fc
    if-nez p3, :cond_10d

    #@fe
    :cond_fe
    if-nez v2, :cond_106

    #@100
    .line 313
    new-instance p3, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;

    #@102
    invoke-direct {p3, p1}, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;-><init>(Ljava/lang/CharSequence;)V

    #@105
    move-object v2, p3

    #@106
    .line 315
    :cond_106
    invoke-virtual {v3}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->getCurrentMetadata()Landroidx/emoji2/text/EmojiMetadata;

    #@109
    move-result-object p3

    #@10a
    invoke-direct {p0, v2, p3, v1, p2}, Landroidx/emoji2/text/EmojiProcessor;->addEmoji(Landroid/text/Spannable;Landroidx/emoji2/text/EmojiMetadata;II)V

    #@10d
    :cond_10d
    if-eqz v2, :cond_11b

    #@10f
    .line 321
    invoke-virtual {v2}, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;->getUnwrappedSpannable()Landroid/text/Spannable;

    #@112
    move-result-object p2
    :try_end_113
    .catchall {:try_start_c .. :try_end_113} :catchall_12d

    #@113
    if-eqz v0, :cond_11a

    #@115
    .line 327
    check-cast p1, Landroidx/emoji2/text/SpannableBuilder;

    #@117
    invoke-virtual {p1}, Landroidx/emoji2/text/SpannableBuilder;->endBatchEdit()V

    #@11a
    :cond_11a
    return-object p2

    #@11b
    :cond_11b
    if-eqz v0, :cond_123

    #@11d
    move-object p2, p1

    #@11e
    check-cast p2, Landroidx/emoji2/text/SpannableBuilder;

    #@120
    invoke-virtual {p2}, Landroidx/emoji2/text/SpannableBuilder;->endBatchEdit()V

    #@123
    :cond_123
    return-object p1

    #@124
    :cond_124
    :goto_124
    if-eqz v0, :cond_12c

    #@126
    move-object p2, p1

    #@127
    check-cast p2, Landroidx/emoji2/text/SpannableBuilder;

    #@129
    invoke-virtual {p2}, Landroidx/emoji2/text/SpannableBuilder;->endBatchEdit()V

    #@12c
    :cond_12c
    return-object p1

    #@12d
    :catchall_12d
    move-exception p2

    #@12e
    if-eqz v0, :cond_135

    #@130
    check-cast p1, Landroidx/emoji2/text/SpannableBuilder;

    #@132
    invoke-virtual {p1}, Landroidx/emoji2/text/SpannableBuilder;->endBatchEdit()V

    #@135
    .line 329
    :cond_135
    throw p2
.end method
