.class Landroidx/core/text/TextDirectionHeuristicsCompat$AnyStrong;
.super Ljava/lang/Object;
.source "TextDirectionHeuristicsCompat.java"

# interfaces
.implements Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionAlgorithm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/text/TextDirectionHeuristicsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnyStrong"
.end annotation


# static fields
.field static final INSTANCE_RTL:Landroidx/core/text/TextDirectionHeuristicsCompat$AnyStrong;


# instance fields
.field private final mLookForRtl:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    #@0
    .line 235
    new-instance v0, Landroidx/core/text/TextDirectionHeuristicsCompat$AnyStrong;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-direct {v0, v1}, Landroidx/core/text/TextDirectionHeuristicsCompat$AnyStrong;-><init>(Z)V

    #@6
    sput-object v0, Landroidx/core/text/TextDirectionHeuristicsCompat$AnyStrong;->INSTANCE_RTL:Landroidx/core/text/TextDirectionHeuristicsCompat$AnyStrong;

    #@8
    return-void
.end method

.method private constructor <init>(Z)V
    .registers 2

    #@0
    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 232
    iput-boolean p1, p0, Landroidx/core/text/TextDirectionHeuristicsCompat$AnyStrong;->mLookForRtl:Z

    #@5
    return-void
.end method


# virtual methods
.method public checkRtl(Ljava/lang/CharSequence;II)I
    .registers 8

    #@0
    add-int/2addr p3, p2

    #@1
    const/4 v0, 0x0

    #@2
    move v1, v0

    #@3
    :goto_3
    if-ge p2, p3, :cond_25

    #@5
    .line 208
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    #@8
    move-result v2

    #@9
    invoke-static {v2}, Ljava/lang/Character;->getDirectionality(C)B

    #@c
    move-result v2

    #@d
    invoke-static {v2}, Landroidx/core/text/TextDirectionHeuristicsCompat;->isRtlText(I)I

    #@10
    move-result v2

    #@11
    const/4 v3, 0x1

    #@12
    if-eqz v2, :cond_1c

    #@14
    if-eq v2, v3, :cond_17

    #@16
    goto :goto_22

    #@17
    .line 216
    :cond_17
    iget-boolean v1, p0, Landroidx/core/text/TextDirectionHeuristicsCompat$AnyStrong;->mLookForRtl:Z

    #@19
    if-nez v1, :cond_21

    #@1b
    return v3

    #@1c
    .line 210
    :cond_1c
    iget-boolean v1, p0, Landroidx/core/text/TextDirectionHeuristicsCompat$AnyStrong;->mLookForRtl:Z

    #@1e
    if-eqz v1, :cond_21

    #@20
    return v0

    #@21
    :cond_21
    move v1, v3

    #@22
    :goto_22
    add-int/lit8 p2, p2, 0x1

    #@24
    goto :goto_3

    #@25
    :cond_25
    if-eqz v1, :cond_2a

    #@27
    .line 226
    iget-boolean p1, p0, Landroidx/core/text/TextDirectionHeuristicsCompat$AnyStrong;->mLookForRtl:Z

    #@29
    return p1

    #@2a
    :cond_2a
    const/4 p1, 0x2

    #@2b
    return p1
.end method
