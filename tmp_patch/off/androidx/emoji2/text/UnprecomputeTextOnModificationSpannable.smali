.class Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;
.super Ljava/lang/Object;
.source "UnprecomputeTextOnModificationSpannable.java"

# interfaces
.implements Landroid/text/Spannable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable$PrecomputedTextDetector_28;,
        Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable$PrecomputedTextDetector;,
        Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable$CharSequenceHelper_API24;
    }
.end annotation


# instance fields
.field private mDelegate:Landroid/text/Spannable;

.field private mSafeToWrite:Z


# direct methods
.method constructor <init>(Landroid/text/Spannable;)V
    .registers 3

    #@0
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x0

    #@4
    .line 43
    iput-boolean v0, p0, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;->mSafeToWrite:Z

    #@6
    .line 49
    iput-object p1, p0, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;->mDelegate:Landroid/text/Spannable;

    #@8
    return-void
.end method

.method constructor <init>(Landroid/text/Spanned;)V
    .registers 3

    #@0
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x0

    #@4
    .line 43
    iput-boolean v0, p0, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;->mSafeToWrite:Z

    #@6
    .line 53
    new-instance v0, Landroid/text/SpannableString;

    #@8
    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    #@b
    iput-object v0, p0, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;->mDelegate:Landroid/text/Spannable;

    #@d
    return-void
.end method

.method constructor <init>(Ljava/lang/CharSequence;)V
    .registers 3

    #@0
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x0

    #@4
    .line 43
    iput-boolean v0, p0, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;->mSafeToWrite:Z

    #@6
    .line 57
    new-instance v0, Landroid/text/SpannableString;

    #@8
    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    #@b
    iput-object v0, p0, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;->mDelegate:Landroid/text/Spannable;

    #@d
    return-void
.end method

.method private ensureSafeWrites()V
    .registers 3

    #@0
    .line 61
    iget-object v0, p0, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;->mDelegate:Landroid/text/Spannable;

    #@2
    .line 62
    iget-boolean v1, p0, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;->mSafeToWrite:Z

    #@4
    if-nez v1, :cond_17

    #@6
    invoke-static {}, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;->precomputedTextDetector()Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable$PrecomputedTextDetector;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v1, v0}, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable$PrecomputedTextDetector;->isPrecomputedText(Ljava/lang/CharSequence;)Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_17

    #@10
    .line 63
    new-instance v1, Landroid/text/SpannableString;

    #@12
    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    #@15
    iput-object v1, p0, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;->mDelegate:Landroid/text/Spannable;

    #@17
    :cond_17
    const/4 v0, 0x1

    #@18
    .line 65
    iput-boolean v0, p0, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;->mSafeToWrite:Z

    #@1a
    return-void
.end method

.method static precomputedTextDetector()Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable$PrecomputedTextDetector;
    .registers 2

    #@0
    .line 161
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1c

    #@4
    if-ge v0, v1, :cond_c

    #@6
    .line 162
    new-instance v0, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable$PrecomputedTextDetector;

    #@8
    invoke-direct {v0}, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable$PrecomputedTextDetector;-><init>()V

    #@b
    goto :goto_11

    #@c
    :cond_c
    new-instance v0, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable$PrecomputedTextDetector_28;

    #@e
    invoke-direct {v0}, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable$PrecomputedTextDetector_28;-><init>()V

    #@11
    :goto_11
    return-object v0
.end method


# virtual methods
.method public charAt(I)C
    .registers 3

    #@0
    .line 116
    iget-object v0, p0, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;->mDelegate:Landroid/text/Spannable;

    #@2
    invoke-interface {v0, p1}, Landroid/text/Spannable;->charAt(I)C

    #@5
    move-result p1

    #@6
    return p1
.end method

.method public chars()Ljava/util/stream/IntStream;
    .registers 2

    #@0
    .line 135
    iget-object v0, p0, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;->mDelegate:Landroid/text/Spannable;

    #@2
    invoke-static {v0}, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable$CharSequenceHelper_API24;->chars(Ljava/lang/CharSequence;)Ljava/util/stream/IntStream;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public codePoints()Ljava/util/stream/IntStream;
    .registers 2

    #@0
    .line 142
    iget-object v0, p0, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;->mDelegate:Landroid/text/Spannable;

    #@2
    invoke-static {v0}, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable$CharSequenceHelper_API24;->codePoints(Ljava/lang/CharSequence;)Ljava/util/stream/IntStream;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getSpanEnd(Ljava/lang/Object;)I
    .registers 3

    #@0
    .line 96
    iget-object v0, p0, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;->mDelegate:Landroid/text/Spannable;

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
    .line 101
    iget-object v0, p0, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;->mDelegate:Landroid/text/Spannable;

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
    .line 91
    iget-object v0, p0, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;->mDelegate:Landroid/text/Spannable;

    #@2
    invoke-interface {v0, p1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    #@5
    move-result p1

    #@6
    return p1
.end method

.method public getSpans(IILjava/lang/Class;)[Ljava/lang/Object;
    .registers 5
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
    .line 86
    iget-object v0, p0, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;->mDelegate:Landroid/text/Spannable;

    #@2
    invoke-interface {v0, p1, p2, p3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    #@5
    move-result-object p1

    #@6
    return-object p1
.end method

.method getUnwrappedSpannable()Landroid/text/Spannable;
    .registers 2

    #@0
    .line 69
    iget-object v0, p0, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;->mDelegate:Landroid/text/Spannable;

    #@2
    return-object v0
.end method

.method public length()I
    .registers 2

    #@0
    .line 111
    iget-object v0, p0, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;->mDelegate:Landroid/text/Spannable;

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
    .line 106
    iget-object v0, p0, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;->mDelegate:Landroid/text/Spannable;

    #@2
    invoke-interface {v0, p1, p2, p3}, Landroid/text/Spannable;->nextSpanTransition(IILjava/lang/Class;)I

    #@5
    move-result p1

    #@6
    return p1
.end method

.method public removeSpan(Ljava/lang/Object;)V
    .registers 3

    #@0
    .line 80
    invoke-direct {p0}, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;->ensureSafeWrites()V

    #@3
    .line 81
    iget-object v0, p0, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;->mDelegate:Landroid/text/Spannable;

    #@5
    invoke-interface {v0, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    #@8
    return-void
.end method

.method public setSpan(Ljava/lang/Object;III)V
    .registers 6

    #@0
    .line 74
    invoke-direct {p0}, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;->ensureSafeWrites()V

    #@3
    .line 75
    iget-object v0, p0, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;->mDelegate:Landroid/text/Spannable;

    #@5
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    #@8
    return-void
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .registers 4

    #@0
    .line 122
    iget-object v0, p0, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;->mDelegate:Landroid/text/Spannable;

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
    .line 128
    iget-object v0, p0, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;->mDelegate:Landroid/text/Spannable;

    #@2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
