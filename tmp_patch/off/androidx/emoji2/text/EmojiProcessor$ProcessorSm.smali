.class final Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;
.super Ljava/lang/Object;
.source "EmojiProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/EmojiProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ProcessorSm"
.end annotation


# static fields
.field private static final STATE_DEFAULT:I = 0x1

.field private static final STATE_WALKING:I = 0x2


# instance fields
.field private mCurrentDepth:I

.field private mCurrentNode:Landroidx/emoji2/text/MetadataRepo$Node;

.field private final mEmojiAsDefaultStyleExceptions:[I

.field private mFlushNode:Landroidx/emoji2/text/MetadataRepo$Node;

.field private mLastCodepoint:I

.field private final mRootNode:Landroidx/emoji2/text/MetadataRepo$Node;

.field private mState:I

.field private final mUseEmojiAsDefaultStyle:Z


# direct methods
.method constructor <init>(Landroidx/emoji2/text/MetadataRepo$Node;Z[I)V
    .registers 5

    #@0
    .line 565
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x1

    #@4
    .line 526
    iput v0, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mState:I

    #@6
    .line 566
    iput-object p1, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mRootNode:Landroidx/emoji2/text/MetadataRepo$Node;

    #@8
    .line 567
    iput-object p1, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mCurrentNode:Landroidx/emoji2/text/MetadataRepo$Node;

    #@a
    .line 568
    iput-boolean p2, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mUseEmojiAsDefaultStyle:Z

    #@c
    .line 569
    iput-object p3, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mEmojiAsDefaultStyleExceptions:[I

    #@e
    return-void
.end method

.method private static isEmojiStyle(I)Z
    .registers 2

    #@0
    const v0, 0xfe0f

    #@3
    if-ne p0, v0, :cond_7

    #@5
    const/4 p0, 0x1

    #@6
    goto :goto_8

    #@7
    :cond_7
    const/4 p0, 0x0

    #@8
    :goto_8
    return p0
.end method

.method private static isTextStyle(I)Z
    .registers 2

    #@0
    const v0, 0xfe0e

    #@3
    if-ne p0, v0, :cond_7

    #@5
    const/4 p0, 0x1

    #@6
    goto :goto_8

    #@7
    :cond_7
    const/4 p0, 0x0

    #@8
    :goto_8
    return p0
.end method

.method private reset()I
    .registers 3

    #@0
    const/4 v0, 0x1

    #@1
    .line 625
    iput v0, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mState:I

    #@3
    .line 626
    iget-object v1, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mRootNode:Landroidx/emoji2/text/MetadataRepo$Node;

    #@5
    iput-object v1, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mCurrentNode:Landroidx/emoji2/text/MetadataRepo$Node;

    #@7
    const/4 v1, 0x0

    #@8
    .line 627
    iput v1, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mCurrentDepth:I

    #@a
    return v0
.end method

.method private shouldUseEmojiPresentationStyleForSingleCodepoint()Z
    .registers 5

    #@0
    .line 658
    iget-object v0, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mCurrentNode:Landroidx/emoji2/text/MetadataRepo$Node;

    #@2
    invoke-virtual {v0}, Landroidx/emoji2/text/MetadataRepo$Node;->getData()Landroidx/emoji2/text/EmojiMetadata;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Landroidx/emoji2/text/EmojiMetadata;->isDefaultEmoji()Z

    #@9
    move-result v0

    #@a
    const/4 v1, 0x1

    #@b
    if-eqz v0, :cond_e

    #@d
    return v1

    #@e
    .line 662
    :cond_e
    iget v0, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mLastCodepoint:I

    #@10
    invoke-static {v0}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->isEmojiStyle(I)Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_17

    #@16
    return v1

    #@17
    .line 666
    :cond_17
    iget-boolean v0, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mUseEmojiAsDefaultStyle:Z

    #@19
    const/4 v2, 0x0

    #@1a
    if-eqz v0, :cond_34

    #@1c
    .line 669
    iget-object v0, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mEmojiAsDefaultStyleExceptions:[I

    #@1e
    if-nez v0, :cond_21

    #@20
    return v1

    #@21
    .line 672
    :cond_21
    iget-object v0, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mCurrentNode:Landroidx/emoji2/text/MetadataRepo$Node;

    #@23
    invoke-virtual {v0}, Landroidx/emoji2/text/MetadataRepo$Node;->getData()Landroidx/emoji2/text/EmojiMetadata;

    #@26
    move-result-object v0

    #@27
    invoke-virtual {v0, v2}, Landroidx/emoji2/text/EmojiMetadata;->getCodepointAt(I)I

    #@2a
    move-result v0

    #@2b
    .line 673
    iget-object v3, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mEmojiAsDefaultStyleExceptions:[I

    #@2d
    invoke-static {v3, v0}, Ljava/util/Arrays;->binarySearch([II)I

    #@30
    move-result v0

    #@31
    if-gez v0, :cond_34

    #@33
    return v1

    #@34
    :cond_34
    return v2
.end method


# virtual methods
.method check(I)I
    .registers 6

    #@0
    .line 575
    iget-object v0, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mCurrentNode:Landroidx/emoji2/text/MetadataRepo$Node;

    #@2
    invoke-virtual {v0, p1}, Landroidx/emoji2/text/MetadataRepo$Node;->get(I)Landroidx/emoji2/text/MetadataRepo$Node;

    #@5
    move-result-object v0

    #@6
    .line 576
    iget v1, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mState:I

    #@8
    const/4 v2, 0x1

    #@9
    const/4 v3, 0x2

    #@a
    if-eq v1, v3, :cond_1a

    #@c
    if-nez v0, :cond_13

    #@e
    .line 609
    invoke-direct {p0}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->reset()I

    #@11
    move-result v3

    #@12
    goto :goto_62

    #@13
    .line 611
    :cond_13
    iput v3, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mState:I

    #@15
    .line 612
    iput-object v0, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mCurrentNode:Landroidx/emoji2/text/MetadataRepo$Node;

    #@17
    .line 613
    iput v2, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mCurrentDepth:I

    #@19
    goto :goto_62

    #@1a
    :cond_1a
    if-eqz v0, :cond_24

    #@1c
    .line 579
    iput-object v0, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mCurrentNode:Landroidx/emoji2/text/MetadataRepo$Node;

    #@1e
    .line 580
    iget v0, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mCurrentDepth:I

    #@20
    add-int/2addr v0, v2

    #@21
    iput v0, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mCurrentDepth:I

    #@23
    goto :goto_62

    #@24
    .line 583
    :cond_24
    invoke-static {p1}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->isTextStyle(I)Z

    #@27
    move-result v0

    #@28
    if-eqz v0, :cond_2f

    #@2a
    .line 584
    invoke-direct {p0}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->reset()I

    #@2d
    move-result v3

    #@2e
    goto :goto_62

    #@2f
    .line 585
    :cond_2f
    invoke-static {p1}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->isEmojiStyle(I)Z

    #@32
    move-result v0

    #@33
    if-eqz v0, :cond_36

    #@35
    goto :goto_62

    #@36
    .line 587
    :cond_36
    iget-object v0, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mCurrentNode:Landroidx/emoji2/text/MetadataRepo$Node;

    #@38
    invoke-virtual {v0}, Landroidx/emoji2/text/MetadataRepo$Node;->getData()Landroidx/emoji2/text/EmojiMetadata;

    #@3b
    move-result-object v0

    #@3c
    if-eqz v0, :cond_5e

    #@3e
    .line 588
    iget v0, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mCurrentDepth:I

    #@40
    const/4 v3, 0x3

    #@41
    if-ne v0, v2, :cond_56

    #@43
    .line 589
    invoke-direct {p0}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->shouldUseEmojiPresentationStyleForSingleCodepoint()Z

    #@46
    move-result v0

    #@47
    if-eqz v0, :cond_51

    #@49
    .line 590
    iget-object v0, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mCurrentNode:Landroidx/emoji2/text/MetadataRepo$Node;

    #@4b
    iput-object v0, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mFlushNode:Landroidx/emoji2/text/MetadataRepo$Node;

    #@4d
    .line 592
    invoke-direct {p0}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->reset()I

    #@50
    goto :goto_62

    #@51
    .line 594
    :cond_51
    invoke-direct {p0}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->reset()I

    #@54
    move-result v3

    #@55
    goto :goto_62

    #@56
    .line 597
    :cond_56
    iget-object v0, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mCurrentNode:Landroidx/emoji2/text/MetadataRepo$Node;

    #@58
    iput-object v0, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mFlushNode:Landroidx/emoji2/text/MetadataRepo$Node;

    #@5a
    .line 599
    invoke-direct {p0}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->reset()I

    #@5d
    goto :goto_62

    #@5e
    .line 602
    :cond_5e
    invoke-direct {p0}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->reset()I

    #@61
    move-result v3

    #@62
    .line 619
    :goto_62
    iput p1, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mLastCodepoint:I

    #@64
    return v3
.end method

.method getCurrentMetadata()Landroidx/emoji2/text/EmojiMetadata;
    .registers 2

    #@0
    .line 642
    iget-object v0, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mCurrentNode:Landroidx/emoji2/text/MetadataRepo$Node;

    #@2
    invoke-virtual {v0}, Landroidx/emoji2/text/MetadataRepo$Node;->getData()Landroidx/emoji2/text/EmojiMetadata;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method getFlushMetadata()Landroidx/emoji2/text/EmojiMetadata;
    .registers 2

    #@0
    .line 635
    iget-object v0, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mFlushNode:Landroidx/emoji2/text/MetadataRepo$Node;

    #@2
    invoke-virtual {v0}, Landroidx/emoji2/text/MetadataRepo$Node;->getData()Landroidx/emoji2/text/EmojiMetadata;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method isInFlushableState()Z
    .registers 3

    #@0
    .line 653
    iget v0, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mState:I

    #@2
    const/4 v1, 0x2

    #@3
    if-ne v0, v1, :cond_19

    #@5
    iget-object v0, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mCurrentNode:Landroidx/emoji2/text/MetadataRepo$Node;

    #@7
    invoke-virtual {v0}, Landroidx/emoji2/text/MetadataRepo$Node;->getData()Landroidx/emoji2/text/EmojiMetadata;

    #@a
    move-result-object v0

    #@b
    if-eqz v0, :cond_19

    #@d
    iget v0, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mCurrentDepth:I

    #@f
    const/4 v1, 0x1

    #@10
    if-gt v0, v1, :cond_1a

    #@12
    .line 654
    invoke-direct {p0}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->shouldUseEmojiPresentationStyleForSingleCodepoint()Z

    #@15
    move-result v0

    #@16
    if-eqz v0, :cond_19

    #@18
    goto :goto_1a

    #@19
    :cond_19
    const/4 v1, 0x0

    #@1a
    :cond_1a
    :goto_1a
    return v1
.end method
