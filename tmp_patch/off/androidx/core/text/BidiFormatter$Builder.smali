.class public final Landroidx/core/text/BidiFormatter$Builder;
.super Ljava/lang/Object;
.source "BidiFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/text/BidiFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mFlags:I

.field private mIsRtlContext:Z

.field private mTextDirectionHeuristicCompat:Landroidx/core/text/TextDirectionHeuristicCompat;


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 140
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@6
    move-result-object v0

    #@7
    invoke-static {v0}, Landroidx/core/text/BidiFormatter;->isRtlLocale(Ljava/util/Locale;)Z

    #@a
    move-result v0

    #@b
    invoke-direct {p0, v0}, Landroidx/core/text/BidiFormatter$Builder;->initialize(Z)V

    #@e
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .registers 2

    #@0
    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 158
    invoke-static {p1}, Landroidx/core/text/BidiFormatter;->isRtlLocale(Ljava/util/Locale;)Z

    #@6
    move-result p1

    #@7
    invoke-direct {p0, p1}, Landroidx/core/text/BidiFormatter$Builder;->initialize(Z)V

    #@a
    return-void
.end method

.method public constructor <init>(Z)V
    .registers 2

    #@0
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 149
    invoke-direct {p0, p1}, Landroidx/core/text/BidiFormatter$Builder;->initialize(Z)V

    #@6
    return-void
.end method

.method private static getDefaultInstanceFromContext(Z)Landroidx/core/text/BidiFormatter;
    .registers 1

    #@0
    if-eqz p0, :cond_5

    #@2
    .line 198
    sget-object p0, Landroidx/core/text/BidiFormatter;->DEFAULT_RTL_INSTANCE:Landroidx/core/text/BidiFormatter;

    #@4
    goto :goto_7

    #@5
    :cond_5
    sget-object p0, Landroidx/core/text/BidiFormatter;->DEFAULT_LTR_INSTANCE:Landroidx/core/text/BidiFormatter;

    #@7
    :goto_7
    return-object p0
.end method

.method private initialize(Z)V
    .registers 2

    #@0
    .line 167
    iput-boolean p1, p0, Landroidx/core/text/BidiFormatter$Builder;->mIsRtlContext:Z

    #@2
    .line 168
    sget-object p1, Landroidx/core/text/BidiFormatter;->DEFAULT_TEXT_DIRECTION_HEURISTIC:Landroidx/core/text/TextDirectionHeuristicCompat;

    #@4
    iput-object p1, p0, Landroidx/core/text/BidiFormatter$Builder;->mTextDirectionHeuristicCompat:Landroidx/core/text/TextDirectionHeuristicCompat;

    #@6
    const/4 p1, 0x2

    #@7
    .line 169
    iput p1, p0, Landroidx/core/text/BidiFormatter$Builder;->mFlags:I

    #@9
    return-void
.end method


# virtual methods
.method public build()Landroidx/core/text/BidiFormatter;
    .registers 5

    #@0
    .line 205
    iget v0, p0, Landroidx/core/text/BidiFormatter$Builder;->mFlags:I

    #@2
    const/4 v1, 0x2

    #@3
    if-ne v0, v1, :cond_12

    #@5
    iget-object v0, p0, Landroidx/core/text/BidiFormatter$Builder;->mTextDirectionHeuristicCompat:Landroidx/core/text/TextDirectionHeuristicCompat;

    #@7
    sget-object v1, Landroidx/core/text/BidiFormatter;->DEFAULT_TEXT_DIRECTION_HEURISTIC:Landroidx/core/text/TextDirectionHeuristicCompat;

    #@9
    if-ne v0, v1, :cond_12

    #@b
    .line 207
    iget-boolean v0, p0, Landroidx/core/text/BidiFormatter$Builder;->mIsRtlContext:Z

    #@d
    invoke-static {v0}, Landroidx/core/text/BidiFormatter$Builder;->getDefaultInstanceFromContext(Z)Landroidx/core/text/BidiFormatter;

    #@10
    move-result-object v0

    #@11
    return-object v0

    #@12
    .line 209
    :cond_12
    new-instance v0, Landroidx/core/text/BidiFormatter;

    #@14
    iget-boolean v1, p0, Landroidx/core/text/BidiFormatter$Builder;->mIsRtlContext:Z

    #@16
    iget v2, p0, Landroidx/core/text/BidiFormatter$Builder;->mFlags:I

    #@18
    iget-object v3, p0, Landroidx/core/text/BidiFormatter$Builder;->mTextDirectionHeuristicCompat:Landroidx/core/text/TextDirectionHeuristicCompat;

    #@1a
    invoke-direct {v0, v1, v2, v3}, Landroidx/core/text/BidiFormatter;-><init>(ZILandroidx/core/text/TextDirectionHeuristicCompat;)V

    #@1d
    return-object v0
.end method

.method public setTextDirectionHeuristic(Landroidx/core/text/TextDirectionHeuristicCompat;)Landroidx/core/text/BidiFormatter$Builder;
    .registers 2

    #@0
    .line 193
    iput-object p1, p0, Landroidx/core/text/BidiFormatter$Builder;->mTextDirectionHeuristicCompat:Landroidx/core/text/TextDirectionHeuristicCompat;

    #@2
    return-object p0
.end method

.method public stereoReset(Z)Landroidx/core/text/BidiFormatter$Builder;
    .registers 2

    #@0
    if-eqz p1, :cond_9

    #@2
    .line 178
    iget p1, p0, Landroidx/core/text/BidiFormatter$Builder;->mFlags:I

    #@4
    or-int/lit8 p1, p1, 0x2

    #@6
    iput p1, p0, Landroidx/core/text/BidiFormatter$Builder;->mFlags:I

    #@8
    goto :goto_f

    #@9
    .line 180
    :cond_9
    iget p1, p0, Landroidx/core/text/BidiFormatter$Builder;->mFlags:I

    #@b
    and-int/lit8 p1, p1, -0x3

    #@d
    iput p1, p0, Landroidx/core/text/BidiFormatter$Builder;->mFlags:I

    #@f
    :goto_f
    return-object p0
.end method
