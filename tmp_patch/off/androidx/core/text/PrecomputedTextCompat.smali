.class public Landroidx/core/text/PrecomputedTextCompat;
.super Ljava/lang/Object;
.source "PrecomputedTextCompat.java"

# interfaces
.implements Landroid/text/Spannable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/text/PrecomputedTextCompat$PrecomputedTextFutureTask;,
        Landroidx/core/text/PrecomputedTextCompat$Params;
    }
.end annotation


# static fields
.field private static final LINE_FEED:C = '\n'

.field private static sExecutor:Ljava/util/concurrent/Executor;

.field private static final sLock:Ljava/lang/Object;


# instance fields
.field private final mParagraphEnds:[I

.field private final mParams:Landroidx/core/text/PrecomputedTextCompat$Params;

.field private final mText:Landroid/text/Spannable;

.field private final mWrapped:Landroid/text/PrecomputedText;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 73
    new-instance v0, Ljava/lang/Object;

    #@2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@5
    sput-object v0, Landroidx/core/text/PrecomputedTextCompat;->sLock:Ljava/lang/Object;

    #@7
    return-void
.end method

.method private constructor <init>(Landroid/text/PrecomputedText;Landroidx/core/text/PrecomputedTextCompat$Params;)V
    .registers 5

    #@0
    .line 497
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 498
    iput-object p1, p0, Landroidx/core/text/PrecomputedTextCompat;->mText:Landroid/text/Spannable;

    #@5
    .line 499
    iput-object p2, p0, Landroidx/core/text/PrecomputedTextCompat;->mParams:Landroidx/core/text/PrecomputedTextCompat$Params;

    #@7
    const/4 p2, 0x0

    #@8
    .line 500
    iput-object p2, p0, Landroidx/core/text/PrecomputedTextCompat;->mParagraphEnds:[I

    #@a
    .line 501
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@c
    const/16 v1, 0x1d

    #@e
    if-lt v0, v1, :cond_11

    #@10
    goto :goto_12

    #@11
    :cond_11
    move-object p1, p2

    #@12
    :goto_12
    iput-object p1, p0, Landroidx/core/text/PrecomputedTextCompat;->mWrapped:Landroid/text/PrecomputedText;

    #@14
    return-void
.end method

.method private constructor <init>(Ljava/lang/CharSequence;Landroidx/core/text/PrecomputedTextCompat$Params;[I)V
    .registers 5

    #@0
    .line 489
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 490
    new-instance v0, Landroid/text/SpannableString;

    #@5
    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    #@8
    iput-object v0, p0, Landroidx/core/text/PrecomputedTextCompat;->mText:Landroid/text/Spannable;

    #@a
    .line 491
    iput-object p2, p0, Landroidx/core/text/PrecomputedTextCompat;->mParams:Landroidx/core/text/PrecomputedTextCompat$Params;

    #@c
    .line 492
    iput-object p3, p0, Landroidx/core/text/PrecomputedTextCompat;->mParagraphEnds:[I

    #@e
    const/4 p1, 0x0

    #@f
    .line 493
    iput-object p1, p0, Landroidx/core/text/PrecomputedTextCompat;->mWrapped:Landroid/text/PrecomputedText;

    #@11
    return-void
.end method

.method public static create(Ljava/lang/CharSequence;Landroidx/core/text/PrecomputedTextCompat$Params;)Landroidx/core/text/PrecomputedTextCompat;
    .registers 7

    #@0
    .line 431
    invoke-static {p0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 432
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    :try_start_6
    const-string v0, "PrecomputedText"

    #@8
    .line 435
    invoke-static {v0}, Landroidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    #@b
    .line 437
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@d
    const/16 v1, 0x1d

    #@f
    if-lt v0, v1, :cond_24

    #@11
    iget-object v0, p1, Landroidx/core/text/PrecomputedTextCompat$Params;->mWrapped:Landroid/text/PrecomputedText$Params;

    #@13
    if-eqz v0, :cond_24

    #@15
    .line 438
    new-instance v0, Landroidx/core/text/PrecomputedTextCompat;

    #@17
    iget-object v1, p1, Landroidx/core/text/PrecomputedTextCompat$Params;->mWrapped:Landroid/text/PrecomputedText$Params;

    #@19
    .line 439
    invoke-static {p0, v1}, Landroid/text/PrecomputedText;->create(Ljava/lang/CharSequence;Landroid/text/PrecomputedText$Params;)Landroid/text/PrecomputedText;

    #@1c
    move-result-object p0

    #@1d
    invoke-direct {v0, p0, p1}, Landroidx/core/text/PrecomputedTextCompat;-><init>(Landroid/text/PrecomputedText;Landroidx/core/text/PrecomputedTextCompat$Params;)V
    :try_end_20
    .catchall {:try_start_6 .. :try_end_20} :catchall_94

    #@20
    .line 483
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    #@23
    return-object v0

    #@24
    .line 442
    :cond_24
    :try_start_24
    new-instance v0, Ljava/util/ArrayList;

    #@26
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@29
    .line 445
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    #@2c
    move-result v1

    #@2d
    const/4 v2, 0x0

    #@2e
    move v3, v2

    #@2f
    :goto_2f
    if-ge v3, v1, :cond_45

    #@31
    const/16 v4, 0xa

    #@33
    .line 447
    invoke-static {p0, v4, v3, v1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    #@36
    move-result v3

    #@37
    if-gez v3, :cond_3b

    #@39
    move v3, v1

    #@3a
    goto :goto_3d

    #@3b
    :cond_3b
    add-int/lit8 v3, v3, 0x1

    #@3d
    .line 456
    :goto_3d
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@40
    move-result-object v4

    #@41
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@44
    goto :goto_2f

    #@45
    .line 458
    :cond_45
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@48
    move-result v1

    #@49
    new-array v1, v1, [I

    #@4b
    move v3, v2

    #@4c
    .line 459
    :goto_4c
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@4f
    move-result v4

    #@50
    if-ge v3, v4, :cond_61

    #@52
    .line 460
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@55
    move-result-object v4

    #@56
    check-cast v4, Ljava/lang/Integer;

    #@58
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    #@5b
    move-result v4

    #@5c
    aput v4, v1, v3

    #@5e
    add-int/lit8 v3, v3, 0x1

    #@60
    goto :goto_4c

    #@61
    .line 467
    :cond_61
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    #@64
    move-result v0

    #@65
    invoke-virtual {p1}, Landroidx/core/text/PrecomputedTextCompat$Params;->getTextPaint()Landroid/text/TextPaint;

    #@68
    move-result-object v3

    #@69
    const v4, 0x7fffffff

    #@6c
    invoke-static {p0, v2, v0, v3, v4}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    #@6f
    move-result-object v0

    #@70
    .line 469
    invoke-virtual {p1}, Landroidx/core/text/PrecomputedTextCompat$Params;->getBreakStrategy()I

    #@73
    move-result v2

    #@74
    invoke-virtual {v0, v2}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    #@77
    move-result-object v0

    #@78
    .line 470
    invoke-virtual {p1}, Landroidx/core/text/PrecomputedTextCompat$Params;->getHyphenationFrequency()I

    #@7b
    move-result v2

    #@7c
    invoke-virtual {v0, v2}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    #@7f
    move-result-object v0

    #@80
    .line 471
    invoke-virtual {p1}, Landroidx/core/text/PrecomputedTextCompat$Params;->getTextDirection()Landroid/text/TextDirectionHeuristic;

    #@83
    move-result-object v2

    #@84
    invoke-virtual {v0, v2}, Landroid/text/StaticLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;

    #@87
    move-result-object v0

    #@88
    .line 472
    invoke-virtual {v0}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    #@8b
    .line 481
    new-instance v0, Landroidx/core/text/PrecomputedTextCompat;

    #@8d
    invoke-direct {v0, p0, p1, v1}, Landroidx/core/text/PrecomputedTextCompat;-><init>(Ljava/lang/CharSequence;Landroidx/core/text/PrecomputedTextCompat$Params;[I)V
    :try_end_90
    .catchall {:try_start_24 .. :try_end_90} :catchall_94

    #@90
    .line 483
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    #@93
    return-object v0

    #@94
    :catchall_94
    move-exception p0

    #@95
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    #@98
    .line 484
    throw p0
.end method

.method public static getTextFuture(Ljava/lang/CharSequence;Landroidx/core/text/PrecomputedTextCompat$Params;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Future;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Landroidx/core/text/PrecomputedTextCompat$Params;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Landroidx/core/text/PrecomputedTextCompat;",
            ">;"
        }
    .end annotation

    #@0
    .line 649
    new-instance v0, Landroidx/core/text/PrecomputedTextCompat$PrecomputedTextFutureTask;

    #@2
    invoke-direct {v0, p1, p0}, Landroidx/core/text/PrecomputedTextCompat$PrecomputedTextFutureTask;-><init>(Landroidx/core/text/PrecomputedTextCompat$Params;Ljava/lang/CharSequence;)V

    #@5
    if-nez p2, :cond_1c

    #@7
    .line 651
    sget-object p0, Landroidx/core/text/PrecomputedTextCompat;->sLock:Ljava/lang/Object;

    #@9
    monitor-enter p0

    #@a
    .line 652
    :try_start_a
    sget-object p1, Landroidx/core/text/PrecomputedTextCompat;->sExecutor:Ljava/util/concurrent/Executor;

    #@c
    if-nez p1, :cond_15

    #@e
    const/4 p1, 0x1

    #@f
    .line 653
    invoke-static {p1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    #@12
    move-result-object p1

    #@13
    sput-object p1, Landroidx/core/text/PrecomputedTextCompat;->sExecutor:Ljava/util/concurrent/Executor;

    #@15
    .line 655
    :cond_15
    sget-object p2, Landroidx/core/text/PrecomputedTextCompat;->sExecutor:Ljava/util/concurrent/Executor;

    #@17
    .line 656
    monitor-exit p0

    #@18
    goto :goto_1c

    #@19
    :catchall_19
    move-exception p1

    #@1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_a .. :try_end_1b} :catchall_19

    #@1b
    throw p1

    #@1c
    .line 658
    :cond_1c
    :goto_1c
    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    #@1f
    return-object v0
.end method


# virtual methods
.method public charAt(I)C
    .registers 3

    #@0
    .line 747
    iget-object v0, p0, Landroidx/core/text/PrecomputedTextCompat;->mText:Landroid/text/Spannable;

    #@2
    invoke-interface {v0, p1}, Landroid/text/Spannable;->charAt(I)C

    #@5
    move-result p1

    #@6
    return p1
.end method

.method public getParagraphCount()I
    .registers 3

    #@0
    .line 529
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1d

    #@4
    if-lt v0, v1, :cond_d

    #@6
    .line 530
    iget-object v0, p0, Landroidx/core/text/PrecomputedTextCompat;->mWrapped:Landroid/text/PrecomputedText;

    #@8
    invoke-virtual {v0}, Landroid/text/PrecomputedText;->getParagraphCount()I

    #@b
    move-result v0

    #@c
    return v0

    #@d
    .line 532
    :cond_d
    iget-object v0, p0, Landroidx/core/text/PrecomputedTextCompat;->mParagraphEnds:[I

    #@f
    array-length v0, v0

    #@10
    return v0
.end method

.method public getParagraphEnd(I)I
    .registers 5

    #@0
    .line 552
    invoke-virtual {p0}, Landroidx/core/text/PrecomputedTextCompat;->getParagraphCount()I

    #@3
    move-result v0

    #@4
    const-string v1, "paraIndex"

    #@6
    const/4 v2, 0x0

    #@7
    invoke-static {p1, v2, v0, v1}, Landroidx/core/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    #@a
    .line 553
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@c
    const/16 v1, 0x1d

    #@e
    if-lt v0, v1, :cond_17

    #@10
    .line 554
    iget-object v0, p0, Landroidx/core/text/PrecomputedTextCompat;->mWrapped:Landroid/text/PrecomputedText;

    #@12
    invoke-virtual {v0, p1}, Landroid/text/PrecomputedText;->getParagraphEnd(I)I

    #@15
    move-result p1

    #@16
    return p1

    #@17
    .line 556
    :cond_17
    iget-object v0, p0, Landroidx/core/text/PrecomputedTextCompat;->mParagraphEnds:[I

    #@19
    aget p1, v0, p1

    #@1b
    return p1
.end method

.method public getParagraphStart(I)I
    .registers 5

    #@0
    .line 540
    invoke-virtual {p0}, Landroidx/core/text/PrecomputedTextCompat;->getParagraphCount()I

    #@3
    move-result v0

    #@4
    const-string v1, "paraIndex"

    #@6
    const/4 v2, 0x0

    #@7
    invoke-static {p1, v2, v0, v1}, Landroidx/core/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    #@a
    .line 541
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@c
    const/16 v1, 0x1d

    #@e
    if-lt v0, v1, :cond_17

    #@10
    .line 542
    iget-object v0, p0, Landroidx/core/text/PrecomputedTextCompat;->mWrapped:Landroid/text/PrecomputedText;

    #@12
    invoke-virtual {v0, p1}, Landroid/text/PrecomputedText;->getParagraphStart(I)I

    #@15
    move-result p1

    #@16
    return p1

    #@17
    :cond_17
    if-nez p1, :cond_1a

    #@19
    goto :goto_20

    #@1a
    .line 544
    :cond_1a
    iget-object v0, p0, Landroidx/core/text/PrecomputedTextCompat;->mParagraphEnds:[I

    #@1c
    add-int/lit8 p1, p1, -0x1

    #@1e
    aget v2, v0, p1

    #@20
    :goto_20
    return v2
.end method

.method public getParams()Landroidx/core/text/PrecomputedTextCompat$Params;
    .registers 2

    #@0
    .line 522
    iget-object v0, p0, Landroidx/core/text/PrecomputedTextCompat;->mParams:Landroidx/core/text/PrecomputedTextCompat$Params;

    #@2
    return-object v0
.end method

.method public getPrecomputedText()Landroid/text/PrecomputedText;
    .registers 3

    #@0
    .line 511
    iget-object v0, p0, Landroidx/core/text/PrecomputedTextCompat;->mText:Landroid/text/Spannable;

    #@2
    instance-of v1, v0, Landroid/text/PrecomputedText;

    #@4
    if-eqz v1, :cond_9

    #@6
    .line 512
    check-cast v0, Landroid/text/PrecomputedText;

    #@8
    return-object v0

    #@9
    :cond_9
    const/4 v0, 0x0

    #@a
    return-object v0
.end method

.method public getSpanEnd(Ljava/lang/Object;)I
    .registers 3

    #@0
    .line 722
    iget-object v0, p0, Landroidx/core/text/PrecomputedTextCompat;->mText:Landroid/text/Spannable;

    #@2
    invoke-interface {v0, p1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    #@5
    move-result p1

    #@6
    return p1
.end method

.method public getSpanFlags(Ljava/lang/Object;)I
    .registers 3

    #@0
    .line 727
    iget-object v0, p0, Landroidx/core/text/PrecomputedTextCompat;->mText:Landroid/text/Spannable;

    #@2
    invoke-interface {v0, p1}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    #@5
    move-result p1

    #@6
    return p1
.end method

.method public getSpanStart(Ljava/lang/Object;)I
    .registers 3

    #@0
    .line 717
    iget-object v0, p0, Landroidx/core/text/PrecomputedTextCompat;->mText:Landroid/text/Spannable;

    #@2
    invoke-interface {v0, p1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    #@5
    move-result p1

    #@6
    return p1
.end method

.method public getSpans(IILjava/lang/Class;)[Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    #@0
    .line 707
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1d

    #@4
    if-lt v0, v1, :cond_d

    #@6
    .line 708
    iget-object v0, p0, Landroidx/core/text/PrecomputedTextCompat;->mWrapped:Landroid/text/PrecomputedText;

    #@8
    invoke-virtual {v0, p1, p2, p3}, Landroid/text/PrecomputedText;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    #@b
    move-result-object p1

    #@c
    return-object p1

    #@d
    .line 710
    :cond_d
    iget-object v0, p0, Landroidx/core/text/PrecomputedTextCompat;->mText:Landroid/text/Spannable;

    #@f
    invoke-interface {v0, p1, p2, p3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    #@12
    move-result-object p1

    #@13
    return-object p1
.end method

.method public length()I
    .registers 2

    #@0
    .line 742
    iget-object v0, p0, Landroidx/core/text/PrecomputedTextCompat;->mText:Landroid/text/Spannable;

    #@2
    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public nextSpanTransition(IILjava/lang/Class;)I
    .registers 5

    #@0
    .line 732
    iget-object v0, p0, Landroidx/core/text/PrecomputedTextCompat;->mText:Landroid/text/Spannable;

    #@2
    invoke-interface {v0, p1, p2, p3}, Landroid/text/Spannable;->nextSpanTransition(IILjava/lang/Class;)I

    #@5
    move-result p1

    #@6
    return p1
.end method

.method public removeSpan(Ljava/lang/Object;)V
    .registers 4

    #@0
    .line 689
    instance-of v0, p1, Landroid/text/style/MetricAffectingSpan;

    #@2
    if-nez v0, :cond_16

    #@4
    .line 693
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@6
    const/16 v1, 0x1d

    #@8
    if-lt v0, v1, :cond_10

    #@a
    .line 694
    iget-object v0, p0, Landroidx/core/text/PrecomputedTextCompat;->mWrapped:Landroid/text/PrecomputedText;

    #@c
    invoke-virtual {v0, p1}, Landroid/text/PrecomputedText;->removeSpan(Ljava/lang/Object;)V

    #@f
    goto :goto_15

    #@10
    .line 696
    :cond_10
    iget-object v0, p0, Landroidx/core/text/PrecomputedTextCompat;->mText:Landroid/text/Spannable;

    #@12
    invoke-interface {v0, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    #@15
    :goto_15
    return-void

    #@16
    .line 690
    :cond_16
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@18
    const-string v0, "MetricAffectingSpan can not be removed from PrecomputedText."

    #@1a
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1d
    throw p1
.end method

.method public setSpan(Ljava/lang/Object;III)V
    .registers 7

    #@0
    .line 673
    instance-of v0, p1, Landroid/text/style/MetricAffectingSpan;

    #@2
    if-nez v0, :cond_16

    #@4
    .line 677
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@6
    const/16 v1, 0x1d

    #@8
    if-lt v0, v1, :cond_10

    #@a
    .line 678
    iget-object v0, p0, Landroidx/core/text/PrecomputedTextCompat;->mWrapped:Landroid/text/PrecomputedText;

    #@c
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/text/PrecomputedText;->setSpan(Ljava/lang/Object;III)V

    #@f
    goto :goto_15

    #@10
    .line 680
    :cond_10
    iget-object v0, p0, Landroidx/core/text/PrecomputedTextCompat;->mText:Landroid/text/Spannable;

    #@12
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    #@15
    :goto_15
    return-void

    #@16
    .line 674
    :cond_16
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@18
    const-string p2, "MetricAffectingSpan can not be set to PrecomputedText."

    #@1a
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1d
    throw p1
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .registers 4

    #@0
    .line 752
    iget-object v0, p0, Landroidx/core/text/PrecomputedTextCompat;->mText:Landroid/text/Spannable;

    #@2
    invoke-interface {v0, p1, p2}, Landroid/text/Spannable;->subSequence(II)Ljava/lang/CharSequence;

    #@5
    move-result-object p1

    #@6
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    #@0
    .line 758
    iget-object v0, p0, Landroidx/core/text/PrecomputedTextCompat;->mText:Landroid/text/Spannable;

    #@2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
