.class abstract Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicImpl;
.super Ljava/lang/Object;
.source "TextDirectionHeuristicsCompat.java"

# interfaces
.implements Landroidx/core/text/TextDirectionHeuristicCompat;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/text/TextDirectionHeuristicsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "TextDirectionHeuristicImpl"
.end annotation


# instance fields
.field private final mAlgorithm:Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionAlgorithm;


# direct methods
.method constructor <init>(Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionAlgorithm;)V
    .registers 2

    #@0
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 115
    iput-object p1, p0, Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicImpl;->mAlgorithm:Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionAlgorithm;

    #@5
    return-void
.end method

.method private doCheck(Ljava/lang/CharSequence;II)Z
    .registers 5

    #@0
    .line 140
    iget-object v0, p0, Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicImpl;->mAlgorithm:Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionAlgorithm;

    #@2
    invoke-interface {v0, p1, p2, p3}, Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionAlgorithm;->checkRtl(Ljava/lang/CharSequence;II)I

    #@5
    move-result p1

    #@6
    const/4 p2, 0x1

    #@7
    if-eqz p1, :cond_12

    #@9
    if-eq p1, p2, :cond_10

    #@b
    .line 146
    invoke-virtual {p0}, Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicImpl;->defaultIsRtl()Z

    #@e
    move-result p1

    #@f
    return p1

    #@10
    :cond_10
    const/4 p1, 0x0

    #@11
    return p1

    #@12
    :cond_12
    return p2
.end method


# virtual methods
.method protected abstract defaultIsRtl()Z
.end method

.method public isRtl(Ljava/lang/CharSequence;II)Z
    .registers 5

    #@0
    if-eqz p1, :cond_1b

    #@2
    if-ltz p2, :cond_1b

    #@4
    if-ltz p3, :cond_1b

    #@6
    .line 130
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@9
    move-result v0

    #@a
    sub-int/2addr v0, p3

    #@b
    if-lt v0, p2, :cond_1b

    #@d
    .line 133
    iget-object v0, p0, Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicImpl;->mAlgorithm:Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionAlgorithm;

    #@f
    if-nez v0, :cond_16

    #@11
    .line 134
    invoke-virtual {p0}, Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicImpl;->defaultIsRtl()Z

    #@14
    move-result p1

    #@15
    return p1

    #@16
    .line 136
    :cond_16
    invoke-direct {p0, p1, p2, p3}, Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicImpl;->doCheck(Ljava/lang/CharSequence;II)Z

    #@19
    move-result p1

    #@1a
    return p1

    #@1b
    .line 131
    :cond_1b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@1d
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@20
    throw p1
.end method

.method public isRtl([CII)Z
    .registers 4

    #@0
    .line 125
    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    #@3
    move-result-object p1

    #@4
    invoke-virtual {p0, p1, p2, p3}, Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicImpl;->isRtl(Ljava/lang/CharSequence;II)Z

    #@7
    move-result p1

    #@8
    return p1
.end method
