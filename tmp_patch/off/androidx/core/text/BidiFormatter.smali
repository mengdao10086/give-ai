.class public final Landroidx/core/text/BidiFormatter;
.super Ljava/lang/Object;
.source "BidiFormatter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/text/BidiFormatter$DirectionalityEstimator;,
        Landroidx/core/text/BidiFormatter$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_FLAGS:I = 0x2

.field static final DEFAULT_LTR_INSTANCE:Landroidx/core/text/BidiFormatter;

.field static final DEFAULT_RTL_INSTANCE:Landroidx/core/text/BidiFormatter;

.field static final DEFAULT_TEXT_DIRECTION_HEURISTIC:Landroidx/core/text/TextDirectionHeuristicCompat;

.field private static final DIR_LTR:I = -0x1

.field private static final DIR_RTL:I = 0x1

.field private static final DIR_UNKNOWN:I = 0x0

.field private static final EMPTY_STRING:Ljava/lang/String; = ""

.field private static final FLAG_STEREO_RESET:I = 0x2

.field private static final LRE:C = '\u202a'

.field private static final LRM:C = '\u200e'

.field private static final LRM_STRING:Ljava/lang/String;

.field private static final PDF:C = '\u202c'

.field private static final RLE:C = '\u202b'

.field private static final RLM:C = '\u200f'

.field private static final RLM_STRING:Ljava/lang/String;


# instance fields
.field private final mDefaultTextDirectionHeuristicCompat:Landroidx/core/text/TextDirectionHeuristicCompat;

.field private final mFlags:I

.field private final mIsRtlContext:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    #@0
    .line 85
    sget-object v0, Landroidx/core/text/TextDirectionHeuristicsCompat;->FIRSTSTRONG_LTR:Landroidx/core/text/TextDirectionHeuristicCompat;

    #@2
    sput-object v0, Landroidx/core/text/BidiFormatter;->DEFAULT_TEXT_DIRECTION_HEURISTIC:Landroidx/core/text/TextDirectionHeuristicCompat;

    #@4
    const/16 v1, 0x200e

    #@6
    .line 115
    invoke-static {v1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    sput-object v1, Landroidx/core/text/BidiFormatter;->LRM_STRING:Ljava/lang/String;

    #@c
    const/16 v1, 0x200f

    #@e
    .line 120
    invoke-static {v1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    sput-object v1, Landroidx/core/text/BidiFormatter;->RLM_STRING:Ljava/lang/String;

    #@14
    .line 217
    new-instance v1, Landroidx/core/text/BidiFormatter;

    #@16
    const/4 v2, 0x0

    #@17
    const/4 v3, 0x2

    #@18
    invoke-direct {v1, v2, v3, v0}, Landroidx/core/text/BidiFormatter;-><init>(ZILandroidx/core/text/TextDirectionHeuristicCompat;)V

    #@1b
    sput-object v1, Landroidx/core/text/BidiFormatter;->DEFAULT_LTR_INSTANCE:Landroidx/core/text/BidiFormatter;

    #@1d
    .line 222
    new-instance v1, Landroidx/core/text/BidiFormatter;

    #@1f
    const/4 v2, 0x1

    #@20
    invoke-direct {v1, v2, v3, v0}, Landroidx/core/text/BidiFormatter;-><init>(ZILandroidx/core/text/TextDirectionHeuristicCompat;)V

    #@23
    sput-object v1, Landroidx/core/text/BidiFormatter;->DEFAULT_RTL_INSTANCE:Landroidx/core/text/BidiFormatter;

    #@25
    return-void
.end method

.method constructor <init>(ZILandroidx/core/text/TextDirectionHeuristicCompat;)V
    .registers 4

    #@0
    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 263
    iput-boolean p1, p0, Landroidx/core/text/BidiFormatter;->mIsRtlContext:Z

    #@5
    .line 264
    iput p2, p0, Landroidx/core/text/BidiFormatter;->mFlags:I

    #@7
    .line 265
    iput-object p3, p0, Landroidx/core/text/BidiFormatter;->mDefaultTextDirectionHeuristicCompat:Landroidx/core/text/TextDirectionHeuristicCompat;

    #@9
    return-void
.end method

.method private static getEntryDir(Ljava/lang/CharSequence;)I
    .registers 3

    #@0
    .line 558
    new-instance v0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, v1}, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;-><init>(Ljava/lang/CharSequence;Z)V

    #@6
    invoke-virtual {v0}, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->getEntryDir()I

    #@9
    move-result p0

    #@a
    return p0
.end method

.method private static getExitDir(Ljava/lang/CharSequence;)I
    .registers 3

    #@0
    .line 541
    new-instance v0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, v1}, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;-><init>(Ljava/lang/CharSequence;Z)V

    #@6
    invoke-virtual {v0}, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->getExitDir()I

    #@9
    move-result p0

    #@a
    return p0
.end method

.method public static getInstance()Landroidx/core/text/BidiFormatter;
    .registers 1

    #@0
    .line 236
    new-instance v0, Landroidx/core/text/BidiFormatter$Builder;

    #@2
    invoke-direct {v0}, Landroidx/core/text/BidiFormatter$Builder;-><init>()V

    #@5
    invoke-virtual {v0}, Landroidx/core/text/BidiFormatter$Builder;->build()Landroidx/core/text/BidiFormatter;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public static getInstance(Ljava/util/Locale;)Landroidx/core/text/BidiFormatter;
    .registers 2

    #@0
    .line 254
    new-instance v0, Landroidx/core/text/BidiFormatter$Builder;

    #@2
    invoke-direct {v0, p0}, Landroidx/core/text/BidiFormatter$Builder;-><init>(Ljava/util/Locale;)V

    #@5
    invoke-virtual {v0}, Landroidx/core/text/BidiFormatter$Builder;->build()Landroidx/core/text/BidiFormatter;

    #@8
    move-result-object p0

    #@9
    return-object p0
.end method

.method public static getInstance(Z)Landroidx/core/text/BidiFormatter;
    .registers 2

    #@0
    .line 245
    new-instance v0, Landroidx/core/text/BidiFormatter$Builder;

    #@2
    invoke-direct {v0, p0}, Landroidx/core/text/BidiFormatter$Builder;-><init>(Z)V

    #@5
    invoke-virtual {v0}, Landroidx/core/text/BidiFormatter$Builder;->build()Landroidx/core/text/BidiFormatter;

    #@8
    move-result-object p0

    #@9
    return-object p0
.end method

.method static isRtlLocale(Ljava/util/Locale;)Z
    .registers 2

    #@0
    .line 516
    invoke-static {p0}, Landroidx/core/text/TextUtilsCompat;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    #@3
    move-result p0

    #@4
    const/4 v0, 0x1

    #@5
    if-ne p0, v0, :cond_8

    #@7
    goto :goto_9

    #@8
    :cond_8
    const/4 v0, 0x0

    #@9
    :goto_9
    return v0
.end method

.method private markAfter(Ljava/lang/CharSequence;Landroidx/core/text/TextDirectionHeuristicCompat;)Ljava/lang/String;
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    .line 300
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@4
    move-result v1

    #@5
    invoke-interface {p2, p1, v0, v1}, Landroidx/core/text/TextDirectionHeuristicCompat;->isRtl(Ljava/lang/CharSequence;II)Z

    #@8
    move-result p2

    #@9
    .line 302
    iget-boolean v0, p0, Landroidx/core/text/BidiFormatter;->mIsRtlContext:Z

    #@b
    if-nez v0, :cond_19

    #@d
    if-nez p2, :cond_16

    #@f
    invoke-static {p1}, Landroidx/core/text/BidiFormatter;->getExitDir(Ljava/lang/CharSequence;)I

    #@12
    move-result v0

    #@13
    const/4 v1, 0x1

    #@14
    if-ne v0, v1, :cond_19

    #@16
    .line 303
    :cond_16
    sget-object p1, Landroidx/core/text/BidiFormatter;->LRM_STRING:Ljava/lang/String;

    #@18
    return-object p1

    #@19
    .line 305
    :cond_19
    iget-boolean v0, p0, Landroidx/core/text/BidiFormatter;->mIsRtlContext:Z

    #@1b
    if-eqz v0, :cond_29

    #@1d
    if-eqz p2, :cond_26

    #@1f
    invoke-static {p1}, Landroidx/core/text/BidiFormatter;->getExitDir(Ljava/lang/CharSequence;)I

    #@22
    move-result p1

    #@23
    const/4 p2, -0x1

    #@24
    if-ne p1, p2, :cond_29

    #@26
    .line 306
    :cond_26
    sget-object p1, Landroidx/core/text/BidiFormatter;->RLM_STRING:Ljava/lang/String;

    #@28
    return-object p1

    #@29
    :cond_29
    const-string p1, ""

    #@2b
    return-object p1
.end method

.method private markBefore(Ljava/lang/CharSequence;Landroidx/core/text/TextDirectionHeuristicCompat;)Ljava/lang/String;
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    .line 328
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@4
    move-result v1

    #@5
    invoke-interface {p2, p1, v0, v1}, Landroidx/core/text/TextDirectionHeuristicCompat;->isRtl(Ljava/lang/CharSequence;II)Z

    #@8
    move-result p2

    #@9
    .line 330
    iget-boolean v0, p0, Landroidx/core/text/BidiFormatter;->mIsRtlContext:Z

    #@b
    if-nez v0, :cond_19

    #@d
    if-nez p2, :cond_16

    #@f
    invoke-static {p1}, Landroidx/core/text/BidiFormatter;->getEntryDir(Ljava/lang/CharSequence;)I

    #@12
    move-result v0

    #@13
    const/4 v1, 0x1

    #@14
    if-ne v0, v1, :cond_19

    #@16
    .line 331
    :cond_16
    sget-object p1, Landroidx/core/text/BidiFormatter;->LRM_STRING:Ljava/lang/String;

    #@18
    return-object p1

    #@19
    .line 333
    :cond_19
    iget-boolean v0, p0, Landroidx/core/text/BidiFormatter;->mIsRtlContext:Z

    #@1b
    if-eqz v0, :cond_29

    #@1d
    if-eqz p2, :cond_26

    #@1f
    invoke-static {p1}, Landroidx/core/text/BidiFormatter;->getEntryDir(Ljava/lang/CharSequence;)I

    #@22
    move-result p1

    #@23
    const/4 p2, -0x1

    #@24
    if-ne p1, p2, :cond_29

    #@26
    .line 334
    :cond_26
    sget-object p1, Landroidx/core/text/BidiFormatter;->RLM_STRING:Ljava/lang/String;

    #@28
    return-object p1

    #@29
    :cond_29
    const-string p1, ""

    #@2b
    return-object p1
.end method


# virtual methods
.method public getStereoReset()Z
    .registers 2

    #@0
    .line 280
    iget v0, p0, Landroidx/core/text/BidiFormatter;->mFlags:I

    #@2
    and-int/lit8 v0, v0, 0x2

    #@4
    if-eqz v0, :cond_8

    #@6
    const/4 v0, 0x1

    #@7
    goto :goto_9

    #@8
    :cond_8
    const/4 v0, 0x0

    #@9
    :goto_9
    return v0
.end method

.method public isRtl(Ljava/lang/CharSequence;)Z
    .registers 5

    #@0
    .line 358
    iget-object v0, p0, Landroidx/core/text/BidiFormatter;->mDefaultTextDirectionHeuristicCompat:Landroidx/core/text/TextDirectionHeuristicCompat;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@6
    move-result v2

    #@7
    invoke-interface {v0, p1, v1, v2}, Landroidx/core/text/TextDirectionHeuristicCompat;->isRtl(Ljava/lang/CharSequence;II)Z

    #@a
    move-result p1

    #@b
    return p1
.end method

.method public isRtl(Ljava/lang/String;)Z
    .registers 2

    #@0
    .line 347
    invoke-virtual {p0, p1}, Landroidx/core/text/BidiFormatter;->isRtl(Ljava/lang/CharSequence;)Z

    #@3
    move-result p1

    #@4
    return p1
.end method

.method public isRtlContext()Z
    .registers 2

    #@0
    .line 272
    iget-boolean v0, p0, Landroidx/core/text/BidiFormatter;->mIsRtlContext:Z

    #@2
    return v0
.end method

.method public unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 4

    #@0
    .line 506
    iget-object v0, p0, Landroidx/core/text/BidiFormatter;->mDefaultTextDirectionHeuristicCompat:Landroidx/core/text/TextDirectionHeuristicCompat;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-virtual {p0, p1, v0, v1}, Landroidx/core/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;Landroidx/core/text/TextDirectionHeuristicCompat;Z)Ljava/lang/CharSequence;

    #@6
    move-result-object p1

    #@7
    return-object p1
.end method

.method public unicodeWrap(Ljava/lang/CharSequence;Landroidx/core/text/TextDirectionHeuristicCompat;)Ljava/lang/CharSequence;
    .registers 4

    #@0
    const/4 v0, 0x1

    #@1
    .line 456
    invoke-virtual {p0, p1, p2, v0}, Landroidx/core/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;Landroidx/core/text/TextDirectionHeuristicCompat;Z)Ljava/lang/CharSequence;

    #@4
    move-result-object p1

    #@5
    return-object p1
.end method

.method public unicodeWrap(Ljava/lang/CharSequence;Landroidx/core/text/TextDirectionHeuristicCompat;Z)Ljava/lang/CharSequence;
    .registers 6

    #@0
    if-nez p1, :cond_4

    #@2
    const/4 p1, 0x0

    #@3
    return-object p1

    #@4
    :cond_4
    const/4 v0, 0x0

    #@5
    .line 412
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@8
    move-result v1

    #@9
    invoke-interface {p2, p1, v0, v1}, Landroidx/core/text/TextDirectionHeuristicCompat;->isRtl(Ljava/lang/CharSequence;II)Z

    #@c
    move-result p2

    #@d
    .line 413
    new-instance v0, Landroid/text/SpannableStringBuilder;

    #@f
    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    #@12
    .line 414
    invoke-virtual {p0}, Landroidx/core/text/BidiFormatter;->getStereoReset()Z

    #@15
    move-result v1

    #@16
    if-eqz v1, :cond_28

    #@18
    if-eqz p3, :cond_28

    #@1a
    if-eqz p2, :cond_1f

    #@1c
    .line 416
    sget-object v1, Landroidx/core/text/TextDirectionHeuristicsCompat;->RTL:Landroidx/core/text/TextDirectionHeuristicCompat;

    #@1e
    goto :goto_21

    #@1f
    :cond_1f
    sget-object v1, Landroidx/core/text/TextDirectionHeuristicsCompat;->LTR:Landroidx/core/text/TextDirectionHeuristicCompat;

    #@21
    .line 415
    :goto_21
    invoke-direct {p0, p1, v1}, Landroidx/core/text/BidiFormatter;->markBefore(Ljava/lang/CharSequence;Landroidx/core/text/TextDirectionHeuristicCompat;)Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    #@28
    .line 418
    :cond_28
    iget-boolean v1, p0, Landroidx/core/text/BidiFormatter;->mIsRtlContext:Z

    #@2a
    if-eq p2, v1, :cond_3f

    #@2c
    if-eqz p2, :cond_31

    #@2e
    const/16 v1, 0x202b

    #@30
    goto :goto_33

    #@31
    :cond_31
    const/16 v1, 0x202a

    #@33
    .line 419
    :goto_33
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    #@36
    .line 420
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    #@39
    const/16 v1, 0x202c

    #@3b
    .line 421
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    #@3e
    goto :goto_42

    #@3f
    .line 423
    :cond_3f
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    #@42
    :goto_42
    if-eqz p3, :cond_52

    #@44
    if-eqz p2, :cond_49

    #@46
    .line 427
    sget-object p2, Landroidx/core/text/TextDirectionHeuristicsCompat;->RTL:Landroidx/core/text/TextDirectionHeuristicCompat;

    #@48
    goto :goto_4b

    #@49
    :cond_49
    sget-object p2, Landroidx/core/text/TextDirectionHeuristicsCompat;->LTR:Landroidx/core/text/TextDirectionHeuristicCompat;

    #@4b
    .line 426
    :goto_4b
    invoke-direct {p0, p1, p2}, Landroidx/core/text/BidiFormatter;->markAfter(Ljava/lang/CharSequence;Landroidx/core/text/TextDirectionHeuristicCompat;)Ljava/lang/String;

    #@4e
    move-result-object p1

    #@4f
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    #@52
    :cond_52
    return-object v0
.end method

.method public unicodeWrap(Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;
    .registers 4

    #@0
    .line 483
    iget-object v0, p0, Landroidx/core/text/BidiFormatter;->mDefaultTextDirectionHeuristicCompat:Landroidx/core/text/TextDirectionHeuristicCompat;

    #@2
    invoke-virtual {p0, p1, v0, p2}, Landroidx/core/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;Landroidx/core/text/TextDirectionHeuristicCompat;Z)Ljava/lang/CharSequence;

    #@5
    move-result-object p1

    #@6
    return-object p1
.end method

.method public unicodeWrap(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    #@0
    .line 494
    iget-object v0, p0, Landroidx/core/text/BidiFormatter;->mDefaultTextDirectionHeuristicCompat:Landroidx/core/text/TextDirectionHeuristicCompat;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-virtual {p0, p1, v0, v1}, Landroidx/core/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroidx/core/text/TextDirectionHeuristicCompat;Z)Ljava/lang/String;

    #@6
    move-result-object p1

    #@7
    return-object p1
.end method

.method public unicodeWrap(Ljava/lang/String;Landroidx/core/text/TextDirectionHeuristicCompat;)Ljava/lang/String;
    .registers 4

    #@0
    const/4 v0, 0x1

    #@1
    .line 441
    invoke-virtual {p0, p1, p2, v0}, Landroidx/core/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroidx/core/text/TextDirectionHeuristicCompat;Z)Ljava/lang/String;

    #@4
    move-result-object p1

    #@5
    return-object p1
.end method

.method public unicodeWrap(Ljava/lang/String;Landroidx/core/text/TextDirectionHeuristicCompat;Z)Ljava/lang/String;
    .registers 4

    #@0
    if-nez p1, :cond_4

    #@2
    const/4 p1, 0x0

    #@3
    return-object p1

    #@4
    .line 392
    :cond_4
    invoke-virtual {p0, p1, p2, p3}, Landroidx/core/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;Landroidx/core/text/TextDirectionHeuristicCompat;Z)Ljava/lang/CharSequence;

    #@7
    move-result-object p1

    #@8
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@b
    move-result-object p1

    #@c
    return-object p1
.end method

.method public unicodeWrap(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 4

    #@0
    .line 469
    iget-object v0, p0, Landroidx/core/text/BidiFormatter;->mDefaultTextDirectionHeuristicCompat:Landroidx/core/text/TextDirectionHeuristicCompat;

    #@2
    invoke-virtual {p0, p1, v0, p2}, Landroidx/core/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroidx/core/text/TextDirectionHeuristicCompat;Z)Ljava/lang/String;

    #@5
    move-result-object p1

    #@6
    return-object p1
.end method
