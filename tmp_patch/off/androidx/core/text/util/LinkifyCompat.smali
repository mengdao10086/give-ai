.class public final Landroidx/core/text/util/LinkifyCompat;
.super Ljava/lang/Object;
.source "LinkifyCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/text/util/LinkifyCompat$Api24Impl;,
        Landroidx/core/text/util/LinkifyCompat$LinkSpec;,
        Landroidx/core/text/util/LinkifyCompat$LinkifyMask;
    }
.end annotation


# static fields
.field private static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroidx/core/text/util/LinkifyCompat$LinkSpec;",
            ">;"
        }
    .end annotation
.end field

.field private static final EMPTY_STRING:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    const/4 v0, 0x0

    #@1
    new-array v0, v0, [Ljava/lang/String;

    #@3
    .line 58
    sput-object v0, Landroidx/core/text/util/LinkifyCompat;->EMPTY_STRING:[Ljava/lang/String;

    #@5
    .line 60
    new-instance v0, Landroidx/core/text/util/LinkifyCompat$$ExternalSyntheticLambda0;

    #@7
    invoke-direct {v0}, Landroidx/core/text/util/LinkifyCompat$$ExternalSyntheticLambda0;-><init>()V

    #@a
    sput-object v0, Landroidx/core/text/util/LinkifyCompat;->COMPARATOR:Ljava/util/Comparator;

    #@c
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    #@0
    .line 531
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static addLinkMovementMethod(Landroid/widget/TextView;)V
    .registers 2

    #@0
    .line 369
    invoke-virtual {p0}, Landroid/widget/TextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    #@3
    move-result-object v0

    #@4
    .line 371
    instance-of v0, v0, Landroid/text/method/LinkMovementMethod;

    #@6
    if-nez v0, :cond_15

    #@8
    .line 372
    invoke-virtual {p0}, Landroid/widget/TextView;->getLinksClickable()Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_15

    #@e
    .line 373
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    #@15
    :cond_15
    return-void
.end method

.method public static addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;)V
    .registers 10

    #@0
    .line 197
    invoke-static {}, Landroidx/core/text/util/LinkifyCompat;->shouldAddLinksFallbackToFramework()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_a

    #@6
    .line 198
    invoke-static {p0, p1, p2}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;)V

    #@9
    return-void

    #@a
    :cond_a
    const/4 v4, 0x0

    #@b
    const/4 v5, 0x0

    #@c
    const/4 v6, 0x0

    #@d
    move-object v1, p0

    #@e
    move-object v2, p1

    #@f
    move-object v3, p2

    #@10
    .line 201
    invoke-static/range {v1 .. v6}, Landroidx/core/text/util/LinkifyCompat;->addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    #@13
    return-void
.end method

.method public static addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V
    .registers 12

    #@0
    .line 221
    invoke-static {}, Landroidx/core/text/util/LinkifyCompat;->shouldAddLinksFallbackToFramework()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_a

    #@6
    .line 222
    invoke-static {p0, p1, p2, p3, p4}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    #@9
    return-void

    #@a
    :cond_a
    const/4 v4, 0x0

    #@b
    move-object v1, p0

    #@c
    move-object v2, p1

    #@d
    move-object v3, p2

    #@e
    move-object v5, p3

    #@f
    move-object v6, p4

    #@10
    .line 225
    invoke-static/range {v1 .. v6}, Landroidx/core/text/util/LinkifyCompat;->addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    #@13
    return-void
.end method

.method public static addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V
    .registers 13

    #@0
    .line 248
    invoke-static {}, Landroidx/core/text/util/LinkifyCompat;->shouldAddLinksFallbackToFramework()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_a

    #@6
    .line 249
    invoke-static/range {p0 .. p5}, Landroidx/core/text/util/LinkifyCompat$Api24Impl;->addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    #@9
    return-void

    #@a
    .line 252
    :cond_a
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@d
    move-result-object v0

    #@e
    invoke-static {v0}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    #@11
    move-result-object v0

    #@12
    move-object v1, v0

    #@13
    move-object v2, p1

    #@14
    move-object v3, p2

    #@15
    move-object v4, p3

    #@16
    move-object v5, p4

    #@17
    move-object v6, p5

    #@18
    .line 254
    invoke-static/range {v1 .. v6}, Landroidx/core/text/util/LinkifyCompat;->addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z

    #@1b
    move-result p1

    #@1c
    if-eqz p1, :cond_24

    #@1e
    .line 257
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@21
    .line 258
    invoke-static {p0}, Landroidx/core/text/util/LinkifyCompat;->addLinkMovementMethod(Landroid/widget/TextView;)V

    #@24
    :cond_24
    return-void
.end method

.method public static addLinks(Landroid/text/Spannable;I)Z
    .registers 12

    #@0
    .line 93
    invoke-static {}, Landroidx/core/text/util/LinkifyCompat;->shouldAddLinksFallbackToFramework()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_b

    #@6
    .line 94
    invoke-static {p0, p1}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    #@9
    move-result p0

    #@a
    return p0

    #@b
    :cond_b
    const/4 v0, 0x0

    #@c
    if-nez p1, :cond_f

    #@e
    return v0

    #@f
    .line 100
    :cond_f
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    #@12
    move-result v1

    #@13
    const-class v2, Landroid/text/style/URLSpan;

    #@15
    invoke-interface {p0, v0, v1, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    #@18
    move-result-object v1

    #@19
    check-cast v1, [Landroid/text/style/URLSpan;

    #@1b
    .line 102
    array-length v2, v1

    #@1c
    const/4 v3, 0x1

    #@1d
    sub-int/2addr v2, v3

    #@1e
    :goto_1e
    if-ltz v2, :cond_28

    #@20
    .line 103
    aget-object v4, v1, v2

    #@22
    invoke-interface {p0, v4}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    #@25
    add-int/lit8 v2, v2, -0x1

    #@27
    goto :goto_1e

    #@28
    :cond_28
    and-int/lit8 v1, p1, 0x4

    #@2a
    if-eqz v1, :cond_30

    #@2c
    const/4 v1, 0x4

    #@2d
    .line 107
    invoke-static {p0, v1}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    #@30
    .line 110
    :cond_30
    new-instance v1, Ljava/util/ArrayList;

    #@32
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@35
    and-int/lit8 v2, p1, 0x1

    #@37
    if-eqz v2, :cond_4d

    #@39
    .line 113
    sget-object v6, Landroidx/core/util/PatternsCompat;->AUTOLINK_WEB_URL:Ljava/util/regex/Pattern;

    #@3b
    const-string v2, "https://"

    #@3d
    const-string v4, "rtsp://"

    #@3f
    const-string v5, "http://"

    #@41
    filled-new-array {v5, v2, v4}, [Ljava/lang/String;

    #@44
    move-result-object v7

    #@45
    sget-object v8, Landroid/text/util/Linkify;->sUrlMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    #@47
    const/4 v9, 0x0

    #@48
    move-object v4, v1

    #@49
    move-object v5, p0

    #@4a
    invoke-static/range {v4 .. v9}, Landroidx/core/text/util/LinkifyCompat;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    #@4d
    :cond_4d
    and-int/lit8 v2, p1, 0x2

    #@4f
    if-eqz v2, :cond_60

    #@51
    .line 119
    sget-object v6, Landroidx/core/util/PatternsCompat;->AUTOLINK_EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    #@53
    const-string v2, "mailto:"

    #@55
    filled-new-array {v2}, [Ljava/lang/String;

    #@58
    move-result-object v7

    #@59
    const/4 v8, 0x0

    #@5a
    const/4 v9, 0x0

    #@5b
    move-object v4, v1

    #@5c
    move-object v5, p0

    #@5d
    invoke-static/range {v4 .. v9}, Landroidx/core/text/util/LinkifyCompat;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    #@60
    :cond_60
    and-int/lit8 p1, p1, 0x8

    #@62
    if-eqz p1, :cond_67

    #@64
    .line 125
    invoke-static {v1, p0}, Landroidx/core/text/util/LinkifyCompat;->gatherMapLinks(Ljava/util/ArrayList;Landroid/text/Spannable;)V

    #@67
    .line 128
    :cond_67
    invoke-static {v1, p0}, Landroidx/core/text/util/LinkifyCompat;->pruneOverlaps(Ljava/util/ArrayList;Landroid/text/Spannable;)V

    #@6a
    .line 130
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@6d
    move-result p1

    #@6e
    if-nez p1, :cond_71

    #@70
    return v0

    #@71
    .line 134
    :cond_71
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@74
    move-result-object p1

    #@75
    :cond_75
    :goto_75
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    #@78
    move-result v0

    #@79
    if-eqz v0, :cond_8f

    #@7b
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@7e
    move-result-object v0

    #@7f
    check-cast v0, Landroidx/core/text/util/LinkifyCompat$LinkSpec;

    #@81
    .line 135
    iget-object v1, v0, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->frameworkAddedSpan:Landroid/text/style/URLSpan;

    #@83
    if-nez v1, :cond_75

    #@85
    .line 136
    iget-object v1, v0, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->url:Ljava/lang/String;

    #@87
    iget v2, v0, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->start:I

    #@89
    iget v0, v0, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->end:I

    #@8b
    invoke-static {v1, v2, v0, p0}, Landroidx/core/text/util/LinkifyCompat;->applyLink(Ljava/lang/String;IILandroid/text/Spannable;)V

    #@8e
    goto :goto_75

    #@8f
    :cond_8f
    return v3
.end method

.method public static addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;)Z
    .registers 9

    #@0
    .line 273
    invoke-static {}, Landroidx/core/text/util/LinkifyCompat;->shouldAddLinksFallbackToFramework()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_b

    #@6
    .line 274
    invoke-static {p0, p1, p2}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    #@9
    move-result p0

    #@a
    return p0

    #@b
    :cond_b
    const/4 v3, 0x0

    #@c
    const/4 v4, 0x0

    #@d
    const/4 v5, 0x0

    #@e
    move-object v0, p0

    #@f
    move-object v1, p1

    #@10
    move-object v2, p2

    #@11
    .line 276
    invoke-static/range {v0 .. v5}, Landroidx/core/text/util/LinkifyCompat;->addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z

    #@14
    move-result p0

    #@15
    return p0
.end method

.method public static addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z
    .registers 11

    #@0
    .line 297
    invoke-static {}, Landroidx/core/text/util/LinkifyCompat;->shouldAddLinksFallbackToFramework()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_b

    #@6
    .line 298
    invoke-static {p0, p1, p2, p3, p4}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z

    #@9
    move-result p0

    #@a
    return p0

    #@b
    :cond_b
    const/4 v3, 0x0

    #@c
    move-object v0, p0

    #@d
    move-object v1, p1

    #@e
    move-object v2, p2

    #@f
    move-object v4, p3

    #@10
    move-object v5, p4

    #@11
    .line 300
    invoke-static/range {v0 .. v5}, Landroidx/core/text/util/LinkifyCompat;->addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z

    #@14
    move-result p0

    #@15
    return p0
.end method

.method public static addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z
    .registers 12

    #@0
    .line 323
    invoke-static {}, Landroidx/core/text/util/LinkifyCompat;->shouldAddLinksFallbackToFramework()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_b

    #@6
    .line 324
    invoke-static/range {p0 .. p5}, Landroidx/core/text/util/LinkifyCompat$Api24Impl;->addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z

    #@9
    move-result p0

    #@a
    return p0

    #@b
    :cond_b
    const-string v0, ""

    #@d
    if-nez p2, :cond_10

    #@f
    move-object p2, v0

    #@10
    :cond_10
    const/4 v1, 0x1

    #@11
    if-eqz p3, :cond_16

    #@13
    .line 329
    array-length v2, p3

    #@14
    if-ge v2, v1, :cond_18

    #@16
    .line 330
    :cond_16
    sget-object p3, Landroidx/core/text/util/LinkifyCompat;->EMPTY_STRING:[Ljava/lang/String;

    #@18
    .line 333
    :cond_18
    array-length v2, p3

    #@19
    add-int/2addr v2, v1

    #@1a
    new-array v2, v2, [Ljava/lang/String;

    #@1c
    .line 334
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    #@1e
    invoke-virtual {p2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@21
    move-result-object p2

    #@22
    const/4 v3, 0x0

    #@23
    aput-object p2, v2, v3

    #@25
    move p2, v3

    #@26
    .line 335
    :goto_26
    array-length v4, p3

    #@27
    if-ge p2, v4, :cond_3a

    #@29
    .line 336
    aget-object v4, p3, p2

    #@2b
    add-int/lit8 p2, p2, 0x1

    #@2d
    if-nez v4, :cond_31

    #@2f
    move-object v4, v0

    #@30
    goto :goto_37

    #@31
    .line 337
    :cond_31
    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    #@33
    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@36
    move-result-object v4

    #@37
    :goto_37
    aput-object v4, v2, p2

    #@39
    goto :goto_26

    #@3a
    .line 341
    :cond_3a
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@3d
    move-result-object p1

    #@3e
    move p2, v3

    #@3f
    .line 343
    :cond_3f
    :goto_3f
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    #@42
    move-result p3

    #@43
    if-eqz p3, :cond_66

    #@45
    .line 344
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->start()I

    #@48
    move-result p3

    #@49
    .line 345
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->end()I

    #@4c
    move-result v0

    #@4d
    .line 346
    invoke-virtual {p1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@50
    move-result-object v4

    #@51
    if-eqz p4, :cond_58

    #@53
    .line 350
    invoke-interface {p4, p0, p3, v0}, Landroid/text/util/Linkify$MatchFilter;->acceptMatch(Ljava/lang/CharSequence;II)Z

    #@56
    move-result v5

    #@57
    goto :goto_59

    #@58
    :cond_58
    move v5, v1

    #@59
    :goto_59
    if-eqz v5, :cond_3f

    #@5b
    if-eqz v4, :cond_3f

    #@5d
    .line 354
    invoke-static {v4, v2, p1, p5}, Landroidx/core/text/util/LinkifyCompat;->makeUrl(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Landroid/text/util/Linkify$TransformFilter;)Ljava/lang/String;

    #@60
    move-result-object p2

    #@61
    .line 356
    invoke-static {p2, p3, v0, p0}, Landroidx/core/text/util/LinkifyCompat;->applyLink(Ljava/lang/String;IILandroid/text/Spannable;)V

    #@64
    move p2, v1

    #@65
    goto :goto_3f

    #@66
    :cond_66
    return p2
.end method

.method public static addLinks(Landroid/widget/TextView;I)Z
    .registers 6

    #@0
    .line 155
    invoke-static {}, Landroidx/core/text/util/LinkifyCompat;->shouldAddLinksFallbackToFramework()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_b

    #@6
    .line 156
    invoke-static {p0, p1}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    #@9
    move-result p0

    #@a
    return p0

    #@b
    :cond_b
    const/4 v0, 0x0

    #@c
    if-nez p1, :cond_f

    #@e
    return v0

    #@f
    .line 162
    :cond_f
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@12
    move-result-object v1

    #@13
    .line 164
    instance-of v2, v1, Landroid/text/Spannable;

    #@15
    const/4 v3, 0x1

    #@16
    if-eqz v2, :cond_24

    #@18
    .line 165
    check-cast v1, Landroid/text/Spannable;

    #@1a
    invoke-static {v1, p1}, Landroidx/core/text/util/LinkifyCompat;->addLinks(Landroid/text/Spannable;I)Z

    #@1d
    move-result p1

    #@1e
    if-eqz p1, :cond_35

    #@20
    .line 166
    invoke-static {p0}, Landroidx/core/text/util/LinkifyCompat;->addLinkMovementMethod(Landroid/widget/TextView;)V

    #@23
    return v3

    #@24
    .line 171
    :cond_24
    invoke-static {v1}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    #@27
    move-result-object v1

    #@28
    .line 173
    invoke-static {v1, p1}, Landroidx/core/text/util/LinkifyCompat;->addLinks(Landroid/text/Spannable;I)Z

    #@2b
    move-result p1

    #@2c
    if-eqz p1, :cond_35

    #@2e
    .line 174
    invoke-static {p0}, Landroidx/core/text/util/LinkifyCompat;->addLinkMovementMethod(Landroid/widget/TextView;)V

    #@31
    .line 175
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@34
    return v3

    #@35
    :cond_35
    return v0
.end method

.method private static applyLink(Ljava/lang/String;IILandroid/text/Spannable;)V
    .registers 5

    #@0
    .line 429
    new-instance v0, Landroid/text/style/URLSpan;

    #@2
    invoke-direct {v0, p0}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    #@5
    const/16 p0, 0x21

    #@7
    .line 431
    invoke-interface {p3, v0, p1, p2, p0}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    #@a
    return-void
.end method

.method private static findAddress(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    #@0
    .line 476
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1c

    #@4
    if-lt v0, v1, :cond_b

    #@6
    .line 477
    invoke-static {p0}, Landroid/webkit/WebView;->findAddress(Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object p0

    #@a
    return-object p0

    #@b
    .line 479
    :cond_b
    invoke-static {p0}, Landroidx/core/text/util/FindAddress;->findAddress(Ljava/lang/String;)Ljava/lang/String;

    #@e
    move-result-object p0

    #@f
    return-object p0
.end method

.method private static gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/core/text/util/LinkifyCompat$LinkSpec;",
            ">;",
            "Landroid/text/Spannable;",
            "Ljava/util/regex/Pattern;",
            "[",
            "Ljava/lang/String;",
            "Landroid/text/util/Linkify$MatchFilter;",
            "Landroid/text/util/Linkify$TransformFilter;",
            ")V"
        }
    .end annotation

    #@0
    .line 410
    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@3
    move-result-object p2

    #@4
    .line 412
    :cond_4
    :goto_4
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->find()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_34

    #@a
    .line 413
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->start()I

    #@d
    move-result v0

    #@e
    .line 414
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->end()I

    #@11
    move-result v1

    #@12
    const/4 v2, 0x0

    #@13
    .line 415
    invoke-virtual {p2, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    if-eqz p4, :cond_1f

    #@19
    .line 417
    invoke-interface {p4, p1, v0, v1}, Landroid/text/util/Linkify$MatchFilter;->acceptMatch(Ljava/lang/CharSequence;II)Z

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_4

    #@1f
    :cond_1f
    if-eqz v2, :cond_4

    #@21
    .line 418
    new-instance v3, Landroidx/core/text/util/LinkifyCompat$LinkSpec;

    #@23
    invoke-direct {v3}, Landroidx/core/text/util/LinkifyCompat$LinkSpec;-><init>()V

    #@26
    .line 419
    invoke-static {v2, p3, p2, p5}, Landroidx/core/text/util/LinkifyCompat;->makeUrl(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Landroid/text/util/Linkify$TransformFilter;)Ljava/lang/String;

    #@29
    move-result-object v2

    #@2a
    iput-object v2, v3, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->url:Ljava/lang/String;

    #@2c
    .line 420
    iput v0, v3, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->start:I

    #@2e
    .line 421
    iput v1, v3, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->end:I

    #@30
    .line 423
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@33
    goto :goto_4

    #@34
    :cond_34
    return-void
.end method

.method private static gatherMapLinks(Ljava/util/ArrayList;Landroid/text/Spannable;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/core/text/util/LinkifyCompat$LinkSpec;",
            ">;",
            "Landroid/text/Spannable;",
            ")V"
        }
    .end annotation

    #@0
    .line 435
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@3
    move-result-object p1

    #@4
    const/4 v0, 0x0

    #@5
    .line 440
    :catch_5
    :goto_5
    :try_start_5
    invoke-static {p1}, Landroidx/core/text/util/LinkifyCompat;->findAddress(Ljava/lang/String;)Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    if-eqz v1, :cond_45

    #@b
    .line 441
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@e
    move-result v2

    #@f
    if-gez v2, :cond_12

    #@11
    goto :goto_45

    #@12
    .line 447
    :cond_12
    new-instance v3, Landroidx/core/text/util/LinkifyCompat$LinkSpec;

    #@14
    invoke-direct {v3}, Landroidx/core/text/util/LinkifyCompat$LinkSpec;-><init>()V

    #@17
    .line 448
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@1a
    move-result v4

    #@1b
    add-int/2addr v4, v2

    #@1c
    add-int/2addr v2, v0

    #@1d
    .line 451
    iput v2, v3, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->start:I

    #@1f
    add-int/2addr v0, v4

    #@20
    .line 452
    iput v0, v3, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->end:I

    #@22
    .line 453
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@25
    move-result-object p1
    :try_end_26
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_5 .. :try_end_26} :catch_45

    #@26
    :try_start_26
    const-string v2, "UTF-8"

    #@28
    .line 459
    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@2b
    move-result-object v1
    :try_end_2c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_26 .. :try_end_2c} :catch_5
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_26 .. :try_end_2c} :catch_45

    #@2c
    .line 464
    :try_start_2c
    new-instance v2, Ljava/lang/StringBuilder;

    #@2e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@31
    const-string v4, "geo:0,0?q="

    #@33
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v2

    #@37
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v1

    #@3b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v1

    #@3f
    iput-object v1, v3, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->url:Ljava/lang/String;

    #@41
    .line 465
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_44
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2c .. :try_end_44} :catch_45

    #@44
    goto :goto_5

    #@45
    :catch_45
    :cond_45
    :goto_45
    return-void
.end method

.method static synthetic lambda$static$0(Landroidx/core/text/util/LinkifyCompat$LinkSpec;Landroidx/core/text/util/LinkifyCompat$LinkSpec;)I
    .registers 4

    #@0
    .line 61
    iget v0, p0, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->start:I

    #@2
    iget v1, p1, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->start:I

    #@4
    if-ge v0, v1, :cond_8

    #@6
    const/4 p0, -0x1

    #@7
    return p0

    #@8
    .line 65
    :cond_8
    iget v0, p0, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->start:I

    #@a
    iget v1, p1, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->start:I

    #@c
    if-le v0, v1, :cond_10

    #@e
    const/4 p0, 0x1

    #@f
    return p0

    #@10
    .line 69
    :cond_10
    iget p1, p1, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->end:I

    #@12
    iget p0, p0, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->end:I

    #@14
    invoke-static {p1, p0}, Ljava/lang/Integer;->compare(II)I

    #@17
    move-result p0

    #@18
    return p0
.end method

.method private static makeUrl(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Landroid/text/util/Linkify$TransformFilter;)Ljava/lang/String;
    .registers 12

    #@0
    if-eqz p3, :cond_6

    #@2
    .line 381
    invoke-interface {p3, p2, p0}, Landroid/text/util/Linkify$TransformFilter;->transformUrl(Ljava/util/regex/Matcher;Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object p0

    #@6
    .line 386
    :cond_6
    array-length p2, p1

    #@7
    const/4 p3, 0x0

    #@8
    move v6, p3

    #@9
    :goto_9
    if-ge v6, p2, :cond_49

    #@b
    aget-object v7, p1, v6

    #@d
    const/4 v1, 0x1

    #@e
    const/4 v2, 0x0

    #@f
    const/4 v4, 0x0

    #@10
    .line 387
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    #@13
    move-result v5

    #@14
    move-object v0, p0

    #@15
    move-object v3, v7

    #@16
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    #@19
    move-result v0

    #@1a
    if-eqz v0, :cond_46

    #@1c
    const/4 v1, 0x0

    #@1d
    const/4 v2, 0x0

    #@1e
    const/4 v4, 0x0

    #@1f
    .line 391
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    #@22
    move-result v5

    #@23
    move-object v0, p0

    #@24
    move-object v3, v7

    #@25
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    #@28
    move-result p2

    #@29
    const/4 v0, 0x1

    #@2a
    if-nez p2, :cond_4a

    #@2c
    .line 392
    new-instance p2, Ljava/lang/StringBuilder;

    #@2e
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    #@31
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object p2

    #@35
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    #@38
    move-result v1

    #@39
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@3c
    move-result-object p0

    #@3d
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object p0

    #@41
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object p0

    #@45
    goto :goto_4a

    #@46
    :cond_46
    add-int/lit8 v6, v6, 0x1

    #@48
    goto :goto_9

    #@49
    :cond_49
    move v0, p3

    #@4a
    :cond_4a
    :goto_4a
    if-nez v0, :cond_62

    #@4c
    .line 399
    array-length p2, p1

    #@4d
    if-lez p2, :cond_62

    #@4f
    .line 400
    new-instance p2, Ljava/lang/StringBuilder;

    #@51
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    #@54
    aget-object p1, p1, p3

    #@56
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object p1

    #@5a
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object p0

    #@5e
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@61
    move-result-object p0

    #@62
    :cond_62
    return-object p0
.end method

.method private static pruneOverlaps(Ljava/util/ArrayList;Landroid/text/Spannable;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/core/text/util/LinkifyCompat$LinkSpec;",
            ">;",
            "Landroid/text/Spannable;",
            ")V"
        }
    .end annotation

    #@0
    .line 484
    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    #@3
    move-result v0

    #@4
    const-class v1, Landroid/text/style/URLSpan;

    #@6
    const/4 v2, 0x0

    #@7
    invoke-interface {p1, v2, v0, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, [Landroid/text/style/URLSpan;

    #@d
    .line 485
    array-length v1, v0

    #@e
    move v3, v2

    #@f
    :goto_f
    if-ge v3, v1, :cond_2c

    #@11
    aget-object v4, v0, v3

    #@13
    .line 486
    new-instance v5, Landroidx/core/text/util/LinkifyCompat$LinkSpec;

    #@15
    invoke-direct {v5}, Landroidx/core/text/util/LinkifyCompat$LinkSpec;-><init>()V

    #@18
    .line 487
    iput-object v4, v5, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->frameworkAddedSpan:Landroid/text/style/URLSpan;

    #@1a
    .line 488
    invoke-interface {p1, v4}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    #@1d
    move-result v6

    #@1e
    iput v6, v5, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->start:I

    #@20
    .line 489
    invoke-interface {p1, v4}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    #@23
    move-result v4

    #@24
    iput v4, v5, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->end:I

    #@26
    .line 490
    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@29
    add-int/lit8 v3, v3, 0x1

    #@2b
    goto :goto_f

    #@2c
    .line 493
    :cond_2c
    sget-object v0, Landroidx/core/text/util/LinkifyCompat;->COMPARATOR:Ljava/util/Comparator;

    #@2e
    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    #@31
    .line 495
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    #@34
    move-result v0

    #@35
    :goto_35
    add-int/lit8 v1, v0, -0x1

    #@37
    if-ge v2, v1, :cond_8f

    #@39
    .line 499
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@3c
    move-result-object v1

    #@3d
    check-cast v1, Landroidx/core/text/util/LinkifyCompat$LinkSpec;

    #@3f
    add-int/lit8 v3, v2, 0x1

    #@41
    .line 500
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@44
    move-result-object v4

    #@45
    check-cast v4, Landroidx/core/text/util/LinkifyCompat$LinkSpec;

    #@47
    .line 503
    iget v5, v1, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->start:I

    #@49
    iget v6, v4, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->start:I

    #@4b
    if-gt v5, v6, :cond_8d

    #@4d
    iget v5, v1, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->end:I

    #@4f
    iget v6, v4, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->start:I

    #@51
    if-le v5, v6, :cond_8d

    #@53
    .line 504
    iget v5, v4, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->end:I

    #@55
    iget v6, v1, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->end:I

    #@57
    const/4 v7, -0x1

    #@58
    if-gt v5, v6, :cond_5c

    #@5a
    :goto_5a
    move v1, v3

    #@5b
    goto :goto_78

    #@5c
    .line 506
    :cond_5c
    iget v5, v1, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->end:I

    #@5e
    iget v6, v1, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->start:I

    #@60
    sub-int/2addr v5, v6

    #@61
    iget v6, v4, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->end:I

    #@63
    iget v8, v4, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->start:I

    #@65
    sub-int/2addr v6, v8

    #@66
    if-le v5, v6, :cond_69

    #@68
    goto :goto_5a

    #@69
    .line 508
    :cond_69
    iget v5, v1, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->end:I

    #@6b
    iget v1, v1, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->start:I

    #@6d
    sub-int/2addr v5, v1

    #@6e
    iget v1, v4, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->end:I

    #@70
    iget v4, v4, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->start:I

    #@72
    sub-int/2addr v1, v4

    #@73
    if-ge v5, v1, :cond_77

    #@75
    move v1, v2

    #@76
    goto :goto_78

    #@77
    :cond_77
    move v1, v7

    #@78
    :goto_78
    if-eq v1, v7, :cond_8d

    #@7a
    .line 513
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@7d
    move-result-object v3

    #@7e
    check-cast v3, Landroidx/core/text/util/LinkifyCompat$LinkSpec;

    #@80
    iget-object v3, v3, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->frameworkAddedSpan:Landroid/text/style/URLSpan;

    #@82
    if-eqz v3, :cond_87

    #@84
    .line 515
    invoke-interface {p1, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    #@87
    .line 517
    :cond_87
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@8a
    add-int/lit8 v0, v0, -0x1

    #@8c
    goto :goto_35

    #@8d
    :cond_8d
    move v2, v3

    #@8e
    goto :goto_35

    #@8f
    :cond_8f
    return-void
.end method

.method private static shouldAddLinksFallbackToFramework()Z
    .registers 2

    #@0
    .line 365
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1c

    #@4
    if-lt v0, v1, :cond_8

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
