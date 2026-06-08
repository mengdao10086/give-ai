.class Landroidx/core/text/TextDirectionHeuristicsCompat$FirstStrong;
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
    name = "FirstStrong"
.end annotation


# static fields
.field static final INSTANCE:Landroidx/core/text/TextDirectionHeuristicsCompat$FirstStrong;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 193
    new-instance v0, Landroidx/core/text/TextDirectionHeuristicsCompat$FirstStrong;

    #@2
    invoke-direct {v0}, Landroidx/core/text/TextDirectionHeuristicsCompat$FirstStrong;-><init>()V

    #@5
    sput-object v0, Landroidx/core/text/TextDirectionHeuristicsCompat$FirstStrong;->INSTANCE:Landroidx/core/text/TextDirectionHeuristicsCompat$FirstStrong;

    #@7
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    #@0
    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public checkRtl(Ljava/lang/CharSequence;II)I
    .registers 6

    #@0
    add-int/2addr p3, p2

    #@1
    const/4 v0, 0x2

    #@2
    move v1, v0

    #@3
    :goto_3
    if-ge p2, p3, :cond_16

    #@5
    if-ne v1, v0, :cond_16

    #@7
    .line 185
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    #@a
    move-result v1

    #@b
    invoke-static {v1}, Ljava/lang/Character;->getDirectionality(C)B

    #@e
    move-result v1

    #@f
    invoke-static {v1}, Landroidx/core/text/TextDirectionHeuristicsCompat;->isRtlTextOrFormat(I)I

    #@12
    move-result v1

    #@13
    add-int/lit8 p2, p2, 0x1

    #@15
    goto :goto_3

    #@16
    :cond_16
    return v1
.end method
