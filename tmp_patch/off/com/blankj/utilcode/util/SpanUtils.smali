.class public final Lcom/blankj/utilcode/util/SpanUtils;
.super Ljava/lang/Object;
.source "SpanUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;,
        Lcom/blankj/utilcode/util/SpanUtils$ShadowSpan;,
        Lcom/blankj/utilcode/util/SpanUtils$ShaderSpan;,
        Lcom/blankj/utilcode/util/SpanUtils$CustomDynamicDrawableSpan;,
        Lcom/blankj/utilcode/util/SpanUtils$CustomImageSpan;,
        Lcom/blankj/utilcode/util/SpanUtils$CustomTypefaceSpan;,
        Lcom/blankj/utilcode/util/SpanUtils$CustomBulletSpan;,
        Lcom/blankj/utilcode/util/SpanUtils$CustomQuoteSpan;,
        Lcom/blankj/utilcode/util/SpanUtils$SpaceSpan;,
        Lcom/blankj/utilcode/util/SpanUtils$CustomLineHeightSpan;,
        Lcom/blankj/utilcode/util/SpanUtils$VerticalAlignSpan;,
        Lcom/blankj/utilcode/util/SpanUtils$Align;
    }
.end annotation


# static fields
.field public static final ALIGN_BASELINE:I = 0x1

.field public static final ALIGN_BOTTOM:I = 0x0

.field public static final ALIGN_CENTER:I = 0x2

.field public static final ALIGN_TOP:I = 0x3

.field private static final COLOR_DEFAULT:I = -0x1000001

.field private static final LINE_SEPARATOR:Ljava/lang/String;


# instance fields
.field private alignImage:I

.field private alignLine:I

.field private alignment:Landroid/text/Layout$Alignment;

.field private backgroundColor:I

.field private blurRadius:F

.field private bulletColor:I

.field private bulletGapWidth:I

.field private bulletRadius:I

.field private clickSpan:Landroid/text/style/ClickableSpan;

.field private first:I

.field private flag:I

.field private fontFamily:Ljava/lang/String;

.field private fontSize:I

.field private foregroundColor:I

.field private imageBitmap:Landroid/graphics/Bitmap;

.field private imageDrawable:Landroid/graphics/drawable/Drawable;

.field private imageResourceId:I

.field private imageUri:Landroid/net/Uri;

.field private isBold:Z

.field private isBoldItalic:Z

.field private isCreated:Z

.field private isItalic:Z

.field private isStrikethrough:Z

.field private isSubscript:Z

.field private isSuperscript:Z

.field private isUnderline:Z

.field private lineHeight:I

.field private mBuilder:Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;

.field private mText:Ljava/lang/CharSequence;

.field private mTextView:Landroid/widget/TextView;

.field private mType:I

.field private final mTypeCharSequence:I

.field private final mTypeImage:I

.field private final mTypeSpace:I

.field private proportion:F

.field private quoteColor:I

.field private quoteGapWidth:I

.field private rest:I

.field private shader:Landroid/graphics/Shader;

.field private shadowColor:I

.field private shadowDx:F

.field private shadowDy:F

.field private shadowRadius:F

.field private spaceColor:I

.field private spaceSize:I

.field private spans:[Ljava/lang/Object;

.field private stripeWidth:I

.field private style:Landroid/graphics/BlurMaskFilter$Blur;

.field private typeface:Landroid/graphics/Typeface;

.field private url:Ljava/lang/String;

.field private verticalAlign:I

.field private xProportion:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    const-string v0, "line.separator"

    #@2
    .line 87
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/blankj/utilcode/util/SpanUtils;->LINE_SEPARATOR:Ljava/lang/String;

    #@8
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    #@0
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x0

    #@4
    .line 146
    iput v0, p0, Lcom/blankj/utilcode/util/SpanUtils;->mTypeCharSequence:I

    #@6
    const/4 v0, 0x1

    #@7
    .line 147
    iput v0, p0, Lcom/blankj/utilcode/util/SpanUtils;->mTypeImage:I

    #@9
    const/4 v0, 0x2

    #@a
    .line 148
    iput v0, p0, Lcom/blankj/utilcode/util/SpanUtils;->mTypeSpace:I

    #@c
    .line 156
    new-instance v0, Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;

    #@e
    const/4 v1, 0x0

    #@f
    invoke-direct {v0, v1}, Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;-><init>(Lcom/blankj/utilcode/util/SpanUtils$1;)V

    #@12
    iput-object v0, p0, Lcom/blankj/utilcode/util/SpanUtils;->mBuilder:Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;

    #@14
    const-string v0, ""

    #@16
    .line 157
    iput-object v0, p0, Lcom/blankj/utilcode/util/SpanUtils;->mText:Ljava/lang/CharSequence;

    #@18
    const/4 v0, -0x1

    #@19
    .line 158
    iput v0, p0, Lcom/blankj/utilcode/util/SpanUtils;->mType:I

    #@1b
    .line 159
    invoke-direct {p0}, Lcom/blankj/utilcode/util/SpanUtils;->setDefault()V

    #@1e
    return-void
.end method

.method private constructor <init>(Landroid/widget/TextView;)V
    .registers 2

    #@0
    .line 151
    invoke-direct {p0}, Lcom/blankj/utilcode/util/SpanUtils;-><init>()V

    #@3
    .line 152
    iput-object p1, p0, Lcom/blankj/utilcode/util/SpanUtils;->mTextView:Landroid/widget/TextView;

    #@5
    return-void
.end method

.method private apply(I)V
    .registers 2

    #@0
    .line 821
    invoke-direct {p0}, Lcom/blankj/utilcode/util/SpanUtils;->applyLast()V

    #@3
    .line 822
    iput p1, p0, Lcom/blankj/utilcode/util/SpanUtils;->mType:I

    #@5
    return-void
.end method

.method private applyLast()V
    .registers 3

    #@0
    .line 844
    iget-boolean v0, p0, Lcom/blankj/utilcode/util/SpanUtils;->isCreated:Z

    #@2
    if-eqz v0, :cond_5

    #@4
    return-void

    #@5
    .line 847
    :cond_5
    iget v0, p0, Lcom/blankj/utilcode/util/SpanUtils;->mType:I

    #@7
    if-nez v0, :cond_d

    #@9
    .line 848
    invoke-direct {p0}, Lcom/blankj/utilcode/util/SpanUtils;->updateCharCharSequence()V

    #@c
    goto :goto_1a

    #@d
    :cond_d
    const/4 v1, 0x1

    #@e
    if-ne v0, v1, :cond_14

    #@10
    .line 850
    invoke-direct {p0}, Lcom/blankj/utilcode/util/SpanUtils;->updateImage()V

    #@13
    goto :goto_1a

    #@14
    :cond_14
    const/4 v1, 0x2

    #@15
    if-ne v0, v1, :cond_1a

    #@17
    .line 852
    invoke-direct {p0}, Lcom/blankj/utilcode/util/SpanUtils;->updateSpace()V

    #@1a
    .line 854
    :cond_1a
    :goto_1a
    invoke-direct {p0}, Lcom/blankj/utilcode/util/SpanUtils;->setDefault()V

    #@1d
    return-void
.end method

.method private setDefault()V
    .registers 4

    #@0
    const/16 v0, 0x21

    #@2
    .line 163
    iput v0, p0, Lcom/blankj/utilcode/util/SpanUtils;->flag:I

    #@4
    const v0, -0x1000001

    #@7
    .line 164
    iput v0, p0, Lcom/blankj/utilcode/util/SpanUtils;->foregroundColor:I

    #@9
    .line 165
    iput v0, p0, Lcom/blankj/utilcode/util/SpanUtils;->backgroundColor:I

    #@b
    const/4 v1, -0x1

    #@c
    .line 166
    iput v1, p0, Lcom/blankj/utilcode/util/SpanUtils;->lineHeight:I

    #@e
    .line 167
    iput v0, p0, Lcom/blankj/utilcode/util/SpanUtils;->quoteColor:I

    #@10
    .line 168
    iput v1, p0, Lcom/blankj/utilcode/util/SpanUtils;->first:I

    #@12
    .line 169
    iput v0, p0, Lcom/blankj/utilcode/util/SpanUtils;->bulletColor:I

    #@14
    .line 170
    iput v1, p0, Lcom/blankj/utilcode/util/SpanUtils;->fontSize:I

    #@16
    const/high16 v0, -0x40800000    # -1.0f

    #@18
    .line 171
    iput v0, p0, Lcom/blankj/utilcode/util/SpanUtils;->proportion:F

    #@1a
    .line 172
    iput v0, p0, Lcom/blankj/utilcode/util/SpanUtils;->xProportion:F

    #@1c
    const/4 v2, 0x0

    #@1d
    .line 173
    iput-boolean v2, p0, Lcom/blankj/utilcode/util/SpanUtils;->isStrikethrough:Z

    #@1f
    .line 174
    iput-boolean v2, p0, Lcom/blankj/utilcode/util/SpanUtils;->isUnderline:Z

    #@21
    .line 175
    iput-boolean v2, p0, Lcom/blankj/utilcode/util/SpanUtils;->isSuperscript:Z

    #@23
    .line 176
    iput-boolean v2, p0, Lcom/blankj/utilcode/util/SpanUtils;->isSubscript:Z

    #@25
    .line 177
    iput-boolean v2, p0, Lcom/blankj/utilcode/util/SpanUtils;->isBold:Z

    #@27
    .line 178
    iput-boolean v2, p0, Lcom/blankj/utilcode/util/SpanUtils;->isItalic:Z

    #@29
    .line 179
    iput-boolean v2, p0, Lcom/blankj/utilcode/util/SpanUtils;->isBoldItalic:Z

    #@2b
    const/4 v2, 0x0

    #@2c
    .line 180
    iput-object v2, p0, Lcom/blankj/utilcode/util/SpanUtils;->fontFamily:Ljava/lang/String;

    #@2e
    .line 181
    iput-object v2, p0, Lcom/blankj/utilcode/util/SpanUtils;->typeface:Landroid/graphics/Typeface;

    #@30
    .line 182
    iput-object v2, p0, Lcom/blankj/utilcode/util/SpanUtils;->alignment:Landroid/text/Layout$Alignment;

    #@32
    .line 183
    iput v1, p0, Lcom/blankj/utilcode/util/SpanUtils;->verticalAlign:I

    #@34
    .line 184
    iput-object v2, p0, Lcom/blankj/utilcode/util/SpanUtils;->clickSpan:Landroid/text/style/ClickableSpan;

    #@36
    .line 185
    iput-object v2, p0, Lcom/blankj/utilcode/util/SpanUtils;->url:Ljava/lang/String;

    #@38
    .line 186
    iput v0, p0, Lcom/blankj/utilcode/util/SpanUtils;->blurRadius:F

    #@3a
    .line 187
    iput-object v2, p0, Lcom/blankj/utilcode/util/SpanUtils;->shader:Landroid/graphics/Shader;

    #@3c
    .line 188
    iput v0, p0, Lcom/blankj/utilcode/util/SpanUtils;->shadowRadius:F

    #@3e
    .line 189
    iput-object v2, p0, Lcom/blankj/utilcode/util/SpanUtils;->spans:[Ljava/lang/Object;

    #@40
    .line 191
    iput-object v2, p0, Lcom/blankj/utilcode/util/SpanUtils;->imageBitmap:Landroid/graphics/Bitmap;

    #@42
    .line 192
    iput-object v2, p0, Lcom/blankj/utilcode/util/SpanUtils;->imageDrawable:Landroid/graphics/drawable/Drawable;

    #@44
    .line 193
    iput-object v2, p0, Lcom/blankj/utilcode/util/SpanUtils;->imageUri:Landroid/net/Uri;

    #@46
    .line 194
    iput v1, p0, Lcom/blankj/utilcode/util/SpanUtils;->imageResourceId:I

    #@48
    .line 196
    iput v1, p0, Lcom/blankj/utilcode/util/SpanUtils;->spaceSize:I

    #@4a
    return-void
.end method

.method private setMovementMethodIfNeed()V
    .registers 3

    #@0
    .line 572
    iget-object v0, p0, Lcom/blankj/utilcode/util/SpanUtils;->mTextView:Landroid/widget/TextView;

    #@2
    if-eqz v0, :cond_13

    #@4
    invoke-virtual {v0}, Landroid/widget/TextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    #@7
    move-result-object v0

    #@8
    if-nez v0, :cond_13

    #@a
    .line 573
    iget-object v0, p0, Lcom/blankj/utilcode/util/SpanUtils;->mTextView:Landroid/widget/TextView;

    #@c
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    #@13
    :cond_13
    return-void
.end method

.method private updateCharCharSequence()V
    .registers 13

    #@0
    .line 858
    iget-object v0, p0, Lcom/blankj/utilcode/util/SpanUtils;->mText:Ljava/lang/CharSequence;

    #@2
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_9

    #@8
    return-void

    #@9
    .line 859
    :cond_9
    iget-object v0, p0, Lcom/blankj/utilcode/util/SpanUtils;->mBuilder:Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;

    #@b
    invoke-virtual {v0}, Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;->length()I

    #@e
    move-result v0

    #@f
    const/4 v1, 0x0

    #@10
    const/4 v2, 0x2

    #@11
    const/4 v3, -0x1

    #@12
    if-nez v0, :cond_33

    #@14
    .line 860
    iget v4, p0, Lcom/blankj/utilcode/util/SpanUtils;->lineHeight:I

    #@16
    if-eq v4, v3, :cond_33

    #@18
    .line 861
    iget-object v0, p0, Lcom/blankj/utilcode/util/SpanUtils;->mBuilder:Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;

    #@1a
    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    #@1d
    move-result-object v4

    #@1e
    invoke-virtual {v0, v4}, Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    #@21
    move-result-object v0

    #@22
    const-string v4, "\n"

    #@24
    .line 862
    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    #@27
    move-result-object v0

    #@28
    new-instance v4, Landroid/text/style/AbsoluteSizeSpan;

    #@2a
    invoke-direct {v4, v1}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    #@2d
    const/16 v5, 0x21

    #@2f
    .line 863
    invoke-virtual {v0, v4, v1, v2, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    #@32
    move v0, v2

    #@33
    .line 866
    :cond_33
    iget-object v4, p0, Lcom/blankj/utilcode/util/SpanUtils;->mBuilder:Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;

    #@35
    iget-object v5, p0, Lcom/blankj/utilcode/util/SpanUtils;->mText:Ljava/lang/CharSequence;

    #@37
    invoke-virtual {v4, v5}, Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    #@3a
    .line 867
    iget-object v4, p0, Lcom/blankj/utilcode/util/SpanUtils;->mBuilder:Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;

    #@3c
    invoke-virtual {v4}, Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;->length()I

    #@3f
    move-result v4

    #@40
    .line 868
    iget v5, p0, Lcom/blankj/utilcode/util/SpanUtils;->verticalAlign:I

    #@42
    if-eq v5, v3, :cond_52

    #@44
    .line 869
    iget-object v5, p0, Lcom/blankj/utilcode/util/SpanUtils;->mBuilder:Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;

    #@46
    new-instance v6, Lcom/blankj/utilcode/util/SpanUtils$VerticalAlignSpan;

    #@48
    iget v7, p0, Lcom/blankj/utilcode/util/SpanUtils;->verticalAlign:I

    #@4a
    invoke-direct {v6, v7}, Lcom/blankj/utilcode/util/SpanUtils$VerticalAlignSpan;-><init>(I)V

    #@4d
    iget v7, p0, Lcom/blankj/utilcode/util/SpanUtils;->flag:I

    #@4f
    invoke-virtual {v5, v6, v0, v4, v7}, Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    #@52
    .line 871
    :cond_52
    iget v5, p0, Lcom/blankj/utilcode/util/SpanUtils;->foregroundColor:I

    #@54
    const v6, -0x1000001

    #@57
    if-eq v5, v6, :cond_67

    #@59
    .line 872
    iget-object v5, p0, Lcom/blankj/utilcode/util/SpanUtils;->mBuilder:Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;

    #@5b
    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    #@5d
    iget v8, p0, Lcom/blankj/utilcode/util/SpanUtils;->foregroundColor:I

    #@5f
    invoke-direct {v7, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    #@62
    iget v8, p0, Lcom/blankj/utilcode/util/SpanUtils;->flag:I

    #@64
    invoke-virtual {v5, v7, v0, v4, v8}, Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    #@67
    .line 874
    :cond_67
    iget v5, p0, Lcom/blankj/utilcode/util/SpanUtils;->backgroundColor:I

    #@69
    if-eq v5, v6, :cond_79

    #@6b
    .line 875
    iget-object v5, p0, Lcom/blankj/utilcode/util/SpanUtils;->mBuilder:Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;

    #@6d
    new-instance v7, Landroid/text/style/BackgroundColorSpan;

    #@6f
    iget v8, p0, Lcom/blankj/utilcode/util/SpanUtils;->backgroundColor:I

    #@71
    invoke-direct {v7, v8}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    #@74
    iget v8, p0, Lcom/blankj/utilcode/util/SpanUtils;->flag:I

    #@76
    invoke-virtual {v5, v7, v0, v4, v8}, Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    #@79
    .line 877
    :cond_79
    iget v5, p0, Lcom/blankj/utilcode/util/SpanUtils;->first:I

    #@7b
    if-eq v5, v3, :cond_8d

    #@7d
    .line 878
    iget-object v5, p0, Lcom/blankj/utilcode/util/SpanUtils;->mBuilder:Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;

    #@7f
    new-instance v7, Landroid/text/style/LeadingMarginSpan$Standard;

    #@81
    iget v8, p0, Lcom/blankj/utilcode/util/SpanUtils;->first:I

    #@83
    iget v9, p0, Lcom/blankj/utilcode/util/SpanUtils;->rest:I

    #@85
    invoke-direct {v7, v8, v9}, Landroid/text/style/LeadingMarginSpan$Standard;-><init>(II)V

    #@88
    iget v8, p0, Lcom/blankj/utilcode/util/SpanUtils;->flag:I

    #@8a
    invoke-virtual {v5, v7, v0, v4, v8}, Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    #@8d
    .line 880
    :cond_8d
    iget v5, p0, Lcom/blankj/utilcode/util/SpanUtils;->quoteColor:I

    #@8f
    const/4 v7, 0x0

    #@90
    if-eq v5, v6, :cond_a4

    #@92
    .line 881
    iget-object v5, p0, Lcom/blankj/utilcode/util/SpanUtils;->mBuilder:Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;

    #@94
    new-instance v8, Lcom/blankj/utilcode/util/SpanUtils$CustomQuoteSpan;

    #@96
    iget v9, p0, Lcom/blankj/utilcode/util/SpanUtils;->quoteColor:I

    #@98
    iget v10, p0, Lcom/blankj/utilcode/util/SpanUtils;->stripeWidth:I

    #@9a
    iget v11, p0, Lcom/blankj/utilcode/util/SpanUtils;->quoteGapWidth:I

    #@9c
    invoke-direct {v8, v9, v10, v11, v7}, Lcom/blankj/utilcode/util/SpanUtils$CustomQuoteSpan;-><init>(IIILcom/blankj/utilcode/util/SpanUtils$1;)V

    #@9f
    iget v9, p0, Lcom/blankj/utilcode/util/SpanUtils;->flag:I

    #@a1
    invoke-virtual {v5, v8, v0, v4, v9}, Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    #@a4
    .line 888
    :cond_a4
    iget v5, p0, Lcom/blankj/utilcode/util/SpanUtils;->bulletColor:I

    #@a6
    if-eq v5, v6, :cond_ba

    #@a8
    .line 889
    iget-object v5, p0, Lcom/blankj/utilcode/util/SpanUtils;->mBuilder:Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;

    #@aa
    new-instance v6, Lcom/blankj/utilcode/util/SpanUtils$CustomBulletSpan;

    #@ac
    iget v8, p0, Lcom/blankj/utilcode/util/SpanUtils;->bulletColor:I

    #@ae
    iget v9, p0, Lcom/blankj/utilcode/util/SpanUtils;->bulletRadius:I

    #@b0
    iget v10, p0, Lcom/blankj/utilcode/util/SpanUtils;->bulletGapWidth:I

    #@b2
    invoke-direct {v6, v8, v9, v10, v7}, Lcom/blankj/utilcode/util/SpanUtils$CustomBulletSpan;-><init>(IIILcom/blankj/utilcode/util/SpanUtils$1;)V

    #@b5
    iget v8, p0, Lcom/blankj/utilcode/util/SpanUtils;->flag:I

    #@b7
    invoke-virtual {v5, v6, v0, v4, v8}, Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    #@ba
    .line 896
    :cond_ba
    iget v5, p0, Lcom/blankj/utilcode/util/SpanUtils;->fontSize:I

    #@bc
    if-eq v5, v3, :cond_cc

    #@be
    .line 897
    iget-object v5, p0, Lcom/blankj/utilcode/util/SpanUtils;->mBuilder:Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;

    #@c0
    new-instance v6, Landroid/text/style/AbsoluteSizeSpan;

    #@c2
    iget v8, p0, Lcom/blankj/utilcode/util/SpanUtils;->fontSize:I

    #@c4
    invoke-direct {v6, v8, v1}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    #@c7
    iget v8, p0, Lcom/blankj/utilcode/util/SpanUtils;->flag:I

    #@c9
    invoke-virtual {v5, v6, v0, v4, v8}, Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    #@cc
    .line 899
    :cond_cc
    iget v5, p0, Lcom/blankj/utilcode/util/SpanUtils;->proportion:F

    #@ce
    const/high16 v6, -0x40800000    # -1.0f

    #@d0
    cmpl-float v5, v5, v6

    #@d2
    if-eqz v5, :cond_e2

    #@d4
    .line 900
    iget-object v5, p0, Lcom/blankj/utilcode/util/SpanUtils;->mBuilder:Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;

    #@d6
    new-instance v8, Landroid/text/style/RelativeSizeSpan;

    #@d8
    iget v9, p0, Lcom/blankj/utilcode/util/SpanUtils;->proportion:F

    #@da
    invoke-direct {v8, v9}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    #@dd
    iget v9, p0, Lcom/blankj/utilcode/util/SpanUtils;->flag:I

    #@df
    invoke-virtual {v5, v8, v0, v4, v9}, Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    #@e2
    .line 902
    :cond_e2
    iget v5, p0, Lcom/blankj/utilcode/util/SpanUtils;->xProportion:F

    #@e4
    cmpl-float v5, v5, v6

    #@e6
    if-eqz v5, :cond_f6

    #@e8
    .line 903
    iget-object v5, p0, Lcom/blankj/utilcode/util/SpanUtils;->mBuilder:Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;

    #@ea
    new-instance v8, Landroid/text/style/ScaleXSpan;

    #@ec
    iget v9, p0, Lcom/blankj/utilcode/util/SpanUtils;->xProportion:F

    #@ee
    invoke-direct {v8, v9}, Landroid/text/style/ScaleXSpan;-><init>(F)V

    #@f1
    iget v9, p0, Lcom/blankj/utilcode/util/SpanUtils;->flag:I

    #@f3
    invoke-virtual {v5, v8, v0, v4, v9}, Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    #@f6
    .line 905
    :cond_f6
    iget v5, p0, Lcom/blankj/utilcode/util/SpanUtils;->lineHeight:I

    #@f8
    if-eq v5, v3, :cond_10a

    #@fa
    .line 906
    iget-object v3, p0, Lcom/blankj/utilcode/util/SpanUtils;->mBuilder:Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;

    #@fc
    new-instance v5, Lcom/blankj/utilcode/util/SpanUtils$CustomLineHeightSpan;

    #@fe
    iget v8, p0, Lcom/blankj/utilcode/util/SpanUtils;->lineHeight:I

    #@100
    iget v9, p0, Lcom/blankj/utilcode/util/SpanUtils;->alignLine:I

    #@102
    invoke-direct {v5, v8, v9}, Lcom/blankj/utilcode/util/SpanUtils$CustomLineHeightSpan;-><init>(II)V

    #@105
    iget v8, p0, Lcom/blankj/utilcode/util/SpanUtils;->flag:I

    #@107
    invoke-virtual {v3, v5, v0, v4, v8}, Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    #@10a
    .line 908
    :cond_10a
    iget-boolean v3, p0, Lcom/blankj/utilcode/util/SpanUtils;->isStrikethrough:Z

    #@10c
    if-eqz v3, :cond_11a

    #@10e
    .line 909
    iget-object v3, p0, Lcom/blankj/utilcode/util/SpanUtils;->mBuilder:Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;

    #@110
    new-instance v5, Landroid/text/style/StrikethroughSpan;

    #@112
    invoke-direct {v5}, Landroid/text/style/StrikethroughSpan;-><init>()V

    #@115
    iget v8, p0, Lcom/blankj/utilcode/util/SpanUtils;->flag:I

    #@117
    invoke-virtual {v3, v5, v0, v4, v8}, Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    #@11a
    .line 911
    :cond_11a
    iget-boolean v3, p0, Lcom/blankj/utilcode/util/SpanUtils;->isUnderline:Z

    #@11c
    if-eqz v3, :cond_12a

    #@11e
    .line 912
    iget-object v3, p0, Lcom/blankj/utilcode/util/SpanUtils;->mBuilder:Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;

    #@120
    new-instance v5, Landroid/text/style/UnderlineSpan;

    #@122
    invoke-direct {v5}, Landroid/text/style/UnderlineSpan;-><init>()V

    #@125
    iget v8, p0, Lcom/blankj/utilcode/util/SpanUtils;->flag:I

    #@127
    invoke-virtual {v3, v5, v0, v4, v8}, Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    #@12a
    .line 914
    :cond_12a
    iget-boolean v3, p0, Lcom/blankj/utilcode/util/SpanUtils;->isSuperscript:Z

    #@12c
    if-eqz v3, :cond_13a

    #@12e
    .line 915
    iget-object v3, p0, Lcom/blankj/utilcode/util/SpanUtils;->mBuilder:Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;

    #@130
    new-instance v5, Landroid/text/style/SuperscriptSpan;

    #@132
    invoke-direct {v5}, Landroid/text/style/SuperscriptSpan;-><init>()V

    #@135
    iget v8, p0, Lcom/blankj/utilcode/util/SpanUtils;->flag:I

    #@137
    invoke-virtual {v3, v5, v0, v4, v8}, Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    #@13a
    .line 917
    :cond_13a
    iget-boolean v3, p0, Lcom/blankj/utilcode/util/SpanUtils;->isSubscript:Z

    #@13c
    if-eqz v3, :cond_14a

    #@13e
    .line 918
    iget-object v3, p0, Lcom/blankj/utilcode/util/SpanUtils;->mBuilder:Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;

    #@140
    new-instance v5, Landroid/text/style/SubscriptSpan;

    #@142
    invoke-direct {v5}, Landroid/text/style/SubscriptSpan;-><init>()V

    #@145
    iget v8, p0, Lcom/blankj/utilcode/util/SpanUtils;->flag:I

    #@147
    invoke-virtual {v3, v5, v0, v4, v8}, Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    #@14a
    .line 920
    :cond_14a
    iget-boolean v3, p0, Lcom/blankj/utilcode/util/SpanUtils;->isBold:Z

    #@14c
    if-eqz v3, :cond_15b

    #@14e
    .line 921
    iget-object v3, p0, Lcom/blankj/utilcode/util/SpanUtils;->mBuilder:Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;

    #@150
    new-instance v5, Landroid/text/style/StyleSpan;

    #@152
    const/4 v8, 0x1

    #@153
    invoke-direct {v5, v8}, Landroid/text/style/StyleSpan;-><init>(I)V

    #@156
    iget v8, p0, Lcom/blankj/utilcode/util/SpanUtils;->flag:I

    #@158
    invoke-virtual {v3, v5, v0, v4, v8}, Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    #@15b
    .line 923
    :cond_15b
    iget-boolean v3, p0, Lcom/blankj/utilcode/util/SpanUtils;->isItalic:Z

    #@15d
    if-eqz v3, :cond_16b

    #@15f
    .line 924
    iget-object v3, p0, Lcom/blankj/utilcode/util/SpanUtils;->mBuilder:Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;

    #@161
    new-instance v5, Landroid/text/style/StyleSpan;

    #@163
    invoke-direct {v5, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    #@166
    iget v2, p0, Lcom/blankj/utilcode/util/SpanUtils;->flag:I

    #@168
    invoke-virtual {v3, v5, v0, v4, v2}, Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    #@16b
    .line 926
    :cond_16b
    iget-boolean v2, p0, Lcom/blankj/utilcode/util/SpanUtils;->isBoldItalic:Z

    #@16d
    if-eqz v2, :cond_17c

    #@16f
    .line 927
    iget-object v2, p0, Lcom/blankj/utilcode/util/SpanUtils;->mBuilder:Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;

    #@171
    new-instance v3, Landroid/text/style/StyleSpan;

    #@173
    const/4 v5, 0x3

    #@174
    invoke-direct {v3, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    #@177
    iget v5, p0, Lcom/blankj/utilcode/util/SpanUtils;->flag:I

    #@179
    invoke-virtual {v2, v3, v0, v4, v5}, Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    #@17c
    .line 929
    :cond_17c
    iget-object v2, p0, Lcom/blankj/utilcode/util/SpanUtils;->fontFamily:Ljava/lang/String;

    #@17e
    if-eqz v2, :cond_18e

    #@180
    .line 930
    iget-object v2, p0, Lcom/blankj/utilcode/util/SpanUtils;->mBuilder:Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;

    #@182
    new-instance v3, Landroid/text/style/TypefaceSpan;

    #@184
    iget-object v5, p0, Lcom/blankj/utilcode/util/SpanUtils;->fontFamily:Ljava/lang/String;

    #@186
    invoke-direct {v3, v5}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    #@189
    iget v5, p0, Lcom/blankj/utilcode/util/SpanUtils;->flag:I

    #@18b
    invoke-virtual {v2, v3, v0, v4, v5}, Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    #@18e
    .line 932
    :cond_18e
    iget-object v2, p0, Lcom/blankj/utilcode/util/SpanUtils;->typeface:Landroid/graphics/Typeface;

    #@190
    if-eqz v2, :cond_1a0

    #@192
    .line 933
    iget-object v2, p0, Lcom/blankj/utilcode/util/SpanUtils;->mBuilder:Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;

    #@194
    new-instance v3, Lcom/blankj/utilcode/util/SpanUtils$CustomTypefaceSpan;

    #@196
    iget-object v5, p0, Lcom/blankj/utilcode/util/SpanUtils;->typeface:Landroid/graphics/Typeface;

    #@198
    invoke-direct {v3, v5, v7}, Lcom/blankj/utilcode/util/SpanUtils$CustomTypefaceSpan;-><init>(Landroid/graphics/Typeface;Lcom/blankj/utilcode/util/SpanUtils$1;)V

    #@19b
    iget v5, p0, Lcom/blankj/utilcode/util/SpanUtils;->flag:I

    #@19d
    invoke-virtual {v2, v3, v0, v4, v5}, Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    #@1a0
    .line 935
    :cond_1a0
    iget-object v2, p0, Lcom/blankj/utilcode/util/SpanUtils;->alignment:Landroid/text/Layout$Alignment;

    #@1a2
    if-eqz v2, :cond_1b2

    #@1a4
    .line 936
    iget-object v2, p0, Lcom/blankj/utilcode/util/SpanUtils;->mBuilder:Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;

    #@1a6
    new-instance v3, Landroid/text/style/AlignmentSpan$Standard;

    #@1a8
    iget-object v5, p0, Lcom/blankj/utilcode/util/SpanUtils;->alignment:Landroid/text/Layout$Alignment;

    #@1aa
    invoke-direct {v3, v5}, Landroid/text/style/AlignmentSpan$Standard;-><init>(Landroid/text/Layout$Alignment;)V

    #@1ad
    iget v5, p0, Lcom/blankj/utilcode/util/SpanUtils;->flag:I

    #@1af
    invoke-virtual {v2, v3, v0, v4, v5}, Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    #@1b2
    .line 938
    :cond_1b2
    iget-object v2, p0, Lcom/blankj/utilcode/util/SpanUtils;->clickSpan:Landroid/text/style/ClickableSpan;

    #@1b4
    if-eqz v2, :cond_1bd

    #@1b6
    .line 939
    iget-object v3, p0, Lcom/blankj/utilcode/util/SpanUtils;->mBuilder:Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;

    #@1b8
    iget v5, p0, Lcom/blankj/utilcode/util/SpanUtils;->flag:I

    #@1ba
    invoke-virtual {v3, v2, v0, v4, v5}, Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    #@1bd
    .line 941
    :cond_1bd
    iget-object v2, p0, Lcom/blankj/utilcode/util/SpanUtils;->url:Ljava/lang/String;

    #@1bf
    if-eqz v2, :cond_1cf

    #@1c1
    .line 942
    iget-object v2, p0, Lcom/blankj/utilcode/util/SpanUtils;->mBuilder:Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;

    #@1c3
    new-instance v3, Landroid/text/style/URLSpan;

    #@1c5
    iget-object v5, p0, Lcom/blankj/utilcode/util/SpanUtils;->url:Ljava/lang/String;

    #@1c7
    invoke-direct {v3, v5}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    #@1ca
    iget v5, p0, Lcom/blankj/utilcode/util/SpanUtils;->flag:I

    #@1cc
    invoke-virtual {v2, v3, v0, v4, v5}, Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    #@1cf
    .line 944
    :cond_1cf
    iget v2, p0, Lcom/blankj/utilcode/util/SpanUtils;->blurRadius:F

    #@1d1
    cmpl-float v2, v2, v6

    #@1d3
    if-eqz v2, :cond_1ea

    #@1d5
    .line 945
    iget-object v2, p0, Lcom/blankj/utilcode/util/SpanUtils;->mBuilder:Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;

    #@1d7
    new-instance v3, Landroid/text/style/MaskFilterSpan;

    #@1d9
    new-instance v5, Landroid/graphics/BlurMaskFilter;

    #@1db
    iget v8, p0, Lcom/blankj/utilcode/util/SpanUtils;->blurRadius:F

    #@1dd
    iget-object v9, p0, Lcom/blankj/utilcode/util/SpanUtils;->style:Landroid/graphics/BlurMaskFilter$Blur;

    #@1df
    invoke-direct {v5, v8, v9}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    #@1e2
    invoke-direct {v3, v5}, Landroid/text/style/MaskFilterSpan;-><init>(Landroid/graphics/MaskFilter;)V

    #@1e5
    iget v5, p0, Lcom/blankj/utilcode/util/SpanUtils;->flag:I

    #@1e7
    invoke-virtual {v2, v3, v0, v4, v5}, Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    #@1ea
    .line 952
    :cond_1ea
    iget-object v2, p0, Lcom/blankj/utilcode/util/SpanUtils;->shader:Landroid/graphics/Shader;

    #@1ec
    if-eqz v2, :cond_1fc

    #@1ee
    .line 953
    iget-object v2, p0, Lcom/blankj/utilcode/util/SpanUtils;->mBuilder:Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;

    #@1f0
    new-instance v3, Lcom/blankj/utilcode/util/SpanUtils$ShaderSpan;

    #@1f2
    iget-object v5, p0, Lcom/blankj/utilcode/util/SpanUtils;->shader:Landroid/graphics/Shader;

    #@1f4
    invoke-direct {v3, v5, v7}, Lcom/blankj/utilcode/util/SpanUtils$ShaderSpan;-><init>(Landroid/graphics/Shader;Lcom/blankj/utilcode/util/SpanUtils$1;)V

    #@1f7
    iget v5, p0, Lcom/blankj/utilcode/util/SpanUtils;->flag:I

    #@1f9
    invoke-virtual {v2, v3, v0, v4, v5}, Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    #@1fc
    .line 955
    :cond_1fc
    iget v2, p0, Lcom/blankj/utilcode/util/SpanUtils;->shadowRadius:F

    #@1fe
    cmpl-float v2, v2, v6

    #@200
    if-eqz v2, :cond_218

    #@202
    .line 956
    iget-object v2, p0, Lcom/blankj/utilcode/util/SpanUtils;->mBuilder:Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;

    #@204
    new-instance v3, Lcom/blankj/utilcode/util/SpanUtils$ShadowSpan;

    #@206
    iget v6, p0, Lcom/blankj/utilcode/util/SpanUtils;->shadowRadius:F

    #@208
    iget v7, p0, Lcom/blankj/utilcode/util/SpanUtils;->shadowDx:F

    #@20a
    iget v8, p0, Lcom/blankj/utilcode/util/SpanUtils;->shadowDy:F

    #@20c
    iget v9, p0, Lcom/blankj/utilcode/util/SpanUtils;->shadowColor:I

    #@20e
    const/4 v10, 0x0

    #@20f
    move-object v5, v3

    #@210
    invoke-direct/range {v5 .. v10}, Lcom/blankj/utilcode/util/SpanUtils$ShadowSpan;-><init>(FFFILcom/blankj/utilcode/util/SpanUtils$1;)V

    #@213
    iget v5, p0, Lcom/blankj/utilcode/util/SpanUtils;->flag:I

    #@215
    invoke-virtual {v2, v3, v0, v4, v5}, Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    #@218
    .line 963
    :cond_218
    iget-object v2, p0, Lcom/blankj/utilcode/util/SpanUtils;->spans:[Ljava/lang/Object;

    #@21a
    if-eqz v2, :cond_22b

    #@21c
    .line 964
    array-length v3, v2

    #@21d
    :goto_21d
    if-ge v1, v3, :cond_22b

    #@21f
    aget-object v5, v2, v1

    #@221
    .line 965
    iget-object v6, p0, Lcom/blankj/utilcode/util/SpanUtils;->mBuilder:Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;

    #@223
    iget v7, p0, Lcom/blankj/utilcode/util/SpanUtils;->flag:I

    #@225
    invoke-virtual {v6, v5, v0, v4, v7}, Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    #@228
    add-int/lit8 v1, v1, 0x1

    #@22a
    goto :goto_21d

    #@22b
    :cond_22b
    return-void
.end method

.method private updateImage()V
    .registers 8

    #@0
    .line 971
    iget-object v0, p0, Lcom/blankj/utilcode/util/SpanUtils;->mBuilder:Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;

    #@2
    invoke-virtual {v0}, Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;->length()I

    #@5
    move-result v0

    #@6
    const-string v1, "<img>"

    #@8
    .line 972
    iput-object v1, p0, Lcom/blankj/utilcode/util/SpanUtils;->mText:Ljava/lang/CharSequence;

    #@a
    .line 973
    invoke-direct {p0}, Lcom/blankj/utilcode/util/SpanUtils;->updateCharCharSequence()V

    #@d
    .line 974
    iget-object v1, p0, Lcom/blankj/utilcode/util/SpanUtils;->mBuilder:Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;

    #@f
    invoke-virtual {v1}, Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;->length()I

    #@12
    move-result v1

    #@13
    .line 975
    iget-object v2, p0, Lcom/blankj/utilcode/util/SpanUtils;->imageBitmap:Landroid/graphics/Bitmap;

    #@15
    const/4 v3, 0x0

    #@16
    if-eqz v2, :cond_29

    #@18
    .line 976
    iget-object v2, p0, Lcom/blankj/utilcode/util/SpanUtils;->mBuilder:Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;

    #@1a
    new-instance v4, Lcom/blankj/utilcode/util/SpanUtils$CustomImageSpan;

    #@1c
    iget-object v5, p0, Lcom/blankj/utilcode/util/SpanUtils;->imageBitmap:Landroid/graphics/Bitmap;

    #@1e
    iget v6, p0, Lcom/blankj/utilcode/util/SpanUtils;->alignImage:I

    #@20
    invoke-direct {v4, v5, v6, v3}, Lcom/blankj/utilcode/util/SpanUtils$CustomImageSpan;-><init>(Landroid/graphics/Bitmap;ILcom/blankj/utilcode/util/SpanUtils$1;)V

    #@23
    iget v3, p0, Lcom/blankj/utilcode/util/SpanUtils;->flag:I

    #@25
    invoke-virtual {v2, v4, v0, v1, v3}, Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    #@28
    goto :goto_68

    #@29
    .line 977
    :cond_29
    iget-object v2, p0, Lcom/blankj/utilcode/util/SpanUtils;->imageDrawable:Landroid/graphics/drawable/Drawable;

    #@2b
    if-eqz v2, :cond_3e

    #@2d
    .line 978
    iget-object v2, p0, Lcom/blankj/utilcode/util/SpanUtils;->mBuilder:Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;

    #@2f
    new-instance v4, Lcom/blankj/utilcode/util/SpanUtils$CustomImageSpan;

    #@31
    iget-object v5, p0, Lcom/blankj/utilcode/util/SpanUtils;->imageDrawable:Landroid/graphics/drawable/Drawable;

    #@33
    iget v6, p0, Lcom/blankj/utilcode/util/SpanUtils;->alignImage:I

    #@35
    invoke-direct {v4, v5, v6, v3}, Lcom/blankj/utilcode/util/SpanUtils$CustomImageSpan;-><init>(Landroid/graphics/drawable/Drawable;ILcom/blankj/utilcode/util/SpanUtils$1;)V

    #@38
    iget v3, p0, Lcom/blankj/utilcode/util/SpanUtils;->flag:I

    #@3a
    invoke-virtual {v2, v4, v0, v1, v3}, Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    #@3d
    goto :goto_68

    #@3e
    .line 979
    :cond_3e
    iget-object v2, p0, Lcom/blankj/utilcode/util/SpanUtils;->imageUri:Landroid/net/Uri;

    #@40
    if-eqz v2, :cond_53

    #@42
    .line 980
    iget-object v2, p0, Lcom/blankj/utilcode/util/SpanUtils;->mBuilder:Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;

    #@44
    new-instance v4, Lcom/blankj/utilcode/util/SpanUtils$CustomImageSpan;

    #@46
    iget-object v5, p0, Lcom/blankj/utilcode/util/SpanUtils;->imageUri:Landroid/net/Uri;

    #@48
    iget v6, p0, Lcom/blankj/utilcode/util/SpanUtils;->alignImage:I

    #@4a
    invoke-direct {v4, v5, v6, v3}, Lcom/blankj/utilcode/util/SpanUtils$CustomImageSpan;-><init>(Landroid/net/Uri;ILcom/blankj/utilcode/util/SpanUtils$1;)V

    #@4d
    iget v3, p0, Lcom/blankj/utilcode/util/SpanUtils;->flag:I

    #@4f
    invoke-virtual {v2, v4, v0, v1, v3}, Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    #@52
    goto :goto_68

    #@53
    .line 981
    :cond_53
    iget v2, p0, Lcom/blankj/utilcode/util/SpanUtils;->imageResourceId:I

    #@55
    const/4 v4, -0x1

    #@56
    if-eq v2, v4, :cond_68

    #@58
    .line 982
    iget-object v2, p0, Lcom/blankj/utilcode/util/SpanUtils;->mBuilder:Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;

    #@5a
    new-instance v4, Lcom/blankj/utilcode/util/SpanUtils$CustomImageSpan;

    #@5c
    iget v5, p0, Lcom/blankj/utilcode/util/SpanUtils;->imageResourceId:I

    #@5e
    iget v6, p0, Lcom/blankj/utilcode/util/SpanUtils;->alignImage:I

    #@60
    invoke-direct {v4, v5, v6, v3}, Lcom/blankj/utilcode/util/SpanUtils$CustomImageSpan;-><init>(IILcom/blankj/utilcode/util/SpanUtils$1;)V

    #@63
    iget v3, p0, Lcom/blankj/utilcode/util/SpanUtils;->flag:I

    #@65
    invoke-virtual {v2, v4, v0, v1, v3}, Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    #@68
    :cond_68
    :goto_68
    return-void
.end method

.method private updateSpace()V
    .registers 8

    #@0
    .line 987
    iget-object v0, p0, Lcom/blankj/utilcode/util/SpanUtils;->mBuilder:Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;

    #@2
    invoke-virtual {v0}, Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;->length()I

    #@5
    move-result v0

    #@6
    const-string v1, "< >"

    #@8
    .line 988
    iput-object v1, p0, Lcom/blankj/utilcode/util/SpanUtils;->mText:Ljava/lang/CharSequence;

    #@a
    .line 989
    invoke-direct {p0}, Lcom/blankj/utilcode/util/SpanUtils;->updateCharCharSequence()V

    #@d
    .line 990
    iget-object v1, p0, Lcom/blankj/utilcode/util/SpanUtils;->mBuilder:Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;

    #@f
    invoke-virtual {v1}, Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;->length()I

    #@12
    move-result v1

    #@13
    .line 991
    iget-object v2, p0, Lcom/blankj/utilcode/util/SpanUtils;->mBuilder:Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;

    #@15
    new-instance v3, Lcom/blankj/utilcode/util/SpanUtils$SpaceSpan;

    #@17
    iget v4, p0, Lcom/blankj/utilcode/util/SpanUtils;->spaceSize:I

    #@19
    iget v5, p0, Lcom/blankj/utilcode/util/SpanUtils;->spaceColor:I

    #@1b
    const/4 v6, 0x0

    #@1c
    invoke-direct {v3, v4, v5, v6}, Lcom/blankj/utilcode/util/SpanUtils$SpaceSpan;-><init>(IILcom/blankj/utilcode/util/SpanUtils$1;)V

    #@1f
    iget v4, p0, Lcom/blankj/utilcode/util/SpanUtils;->flag:I

    #@21
    invoke-virtual {v2, v3, v0, v1, v4}, Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    #@24
    return-void
.end method

.method public static with(Landroid/widget/TextView;)Lcom/blankj/utilcode/util/SpanUtils;
    .registers 2

    #@0
    .line 90
    new-instance v0, Lcom/blankj/utilcode/util/SpanUtils;

    #@2
    invoke-direct {v0, p0}, Lcom/blankj/utilcode/util/SpanUtils;-><init>(Landroid/widget/TextView;)V

    #@5
    return-object v0
.end method


# virtual methods
.method public append(Ljava/lang/CharSequence;)Lcom/blankj/utilcode/util/SpanUtils;
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 649
    invoke-direct {p0, v0}, Lcom/blankj/utilcode/util/SpanUtils;->apply(I)V

    #@4
    .line 650
    iput-object p1, p0, Lcom/blankj/utilcode/util/SpanUtils;->mText:Ljava/lang/CharSequence;

    #@6
    return-object p0
.end method

.method public appendImage(I)Lcom/blankj/utilcode/util/SpanUtils;
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 773
    invoke-virtual {p0, p1, v0}, Lcom/blankj/utilcode/util/SpanUtils;->appendImage(II)Lcom/blankj/utilcode/util/SpanUtils;

    #@4
    move-result-object p1

    #@5
    return-object p1
.end method

.method public appendImage(II)Lcom/blankj/utilcode/util/SpanUtils;
    .registers 4

    #@0
    const/4 v0, 0x1

    #@1
    .line 790
    invoke-direct {p0, v0}, Lcom/blankj/utilcode/util/SpanUtils;->apply(I)V

    #@4
    .line 791
    iput p1, p0, Lcom/blankj/utilcode/util/SpanUtils;->imageResourceId:I

    #@6
    .line 792
    iput p2, p0, Lcom/blankj/utilcode/util/SpanUtils;->alignImage:I

    #@8
    return-object p0
.end method

.method public appendImage(Landroid/graphics/Bitmap;)Lcom/blankj/utilcode/util/SpanUtils;
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 683
    invoke-virtual {p0, p1, v0}, Lcom/blankj/utilcode/util/SpanUtils;->appendImage(Landroid/graphics/Bitmap;I)Lcom/blankj/utilcode/util/SpanUtils;

    #@4
    move-result-object p1

    #@5
    return-object p1
.end method

.method public appendImage(Landroid/graphics/Bitmap;I)Lcom/blankj/utilcode/util/SpanUtils;
    .registers 4

    #@0
    const/4 v0, 0x1

    #@1
    .line 700
    invoke-direct {p0, v0}, Lcom/blankj/utilcode/util/SpanUtils;->apply(I)V

    #@4
    .line 701
    iput-object p1, p0, Lcom/blankj/utilcode/util/SpanUtils;->imageBitmap:Landroid/graphics/Bitmap;

    #@6
    .line 702
    iput p2, p0, Lcom/blankj/utilcode/util/SpanUtils;->alignImage:I

    #@8
    return-object p0
.end method

.method public appendImage(Landroid/graphics/drawable/Drawable;)Lcom/blankj/utilcode/util/SpanUtils;
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 713
    invoke-virtual {p0, p1, v0}, Lcom/blankj/utilcode/util/SpanUtils;->appendImage(Landroid/graphics/drawable/Drawable;I)Lcom/blankj/utilcode/util/SpanUtils;

    #@4
    move-result-object p1

    #@5
    return-object p1
.end method

.method public appendImage(Landroid/graphics/drawable/Drawable;I)Lcom/blankj/utilcode/util/SpanUtils;
    .registers 4

    #@0
    const/4 v0, 0x1

    #@1
    .line 730
    invoke-direct {p0, v0}, Lcom/blankj/utilcode/util/SpanUtils;->apply(I)V

    #@4
    .line 731
    iput-object p1, p0, Lcom/blankj/utilcode/util/SpanUtils;->imageDrawable:Landroid/graphics/drawable/Drawable;

    #@6
    .line 732
    iput p2, p0, Lcom/blankj/utilcode/util/SpanUtils;->alignImage:I

    #@8
    return-object p0
.end method

.method public appendImage(Landroid/net/Uri;)Lcom/blankj/utilcode/util/SpanUtils;
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 743
    invoke-virtual {p0, p1, v0}, Lcom/blankj/utilcode/util/SpanUtils;->appendImage(Landroid/net/Uri;I)Lcom/blankj/utilcode/util/SpanUtils;

    #@4
    move-result-object p1

    #@5
    return-object p1
.end method

.method public appendImage(Landroid/net/Uri;I)Lcom/blankj/utilcode/util/SpanUtils;
    .registers 4

    #@0
    const/4 v0, 0x1

    #@1
    .line 760
    invoke-direct {p0, v0}, Lcom/blankj/utilcode/util/SpanUtils;->apply(I)V

    #@4
    .line 761
    iput-object p1, p0, Lcom/blankj/utilcode/util/SpanUtils;->imageUri:Landroid/net/Uri;

    #@6
    .line 762
    iput p2, p0, Lcom/blankj/utilcode/util/SpanUtils;->alignImage:I

    #@8
    return-object p0
.end method

.method public appendLine()Lcom/blankj/utilcode/util/SpanUtils;
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    .line 660
    invoke-direct {p0, v0}, Lcom/blankj/utilcode/util/SpanUtils;->apply(I)V

    #@4
    .line 661
    sget-object v0, Lcom/blankj/utilcode/util/SpanUtils;->LINE_SEPARATOR:Ljava/lang/String;

    #@6
    iput-object v0, p0, Lcom/blankj/utilcode/util/SpanUtils;->mText:Ljava/lang/CharSequence;

    #@8
    return-object p0
.end method

.method public appendLine(Ljava/lang/CharSequence;)Lcom/blankj/utilcode/util/SpanUtils;
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 671
    invoke-direct {p0, v0}, Lcom/blankj/utilcode/util/SpanUtils;->apply(I)V

    #@4
    .line 672
    new-instance v0, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@c
    move-result-object p1

    #@d
    sget-object v0, Lcom/blankj/utilcode/util/SpanUtils;->LINE_SEPARATOR:Ljava/lang/String;

    #@f
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object p1

    #@13
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object p1

    #@17
    iput-object p1, p0, Lcom/blankj/utilcode/util/SpanUtils;->mText:Ljava/lang/CharSequence;

    #@19
    return-object p0
.end method

.method public appendSpace(I)Lcom/blankj/utilcode/util/SpanUtils;
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 803
    invoke-virtual {p0, p1, v0}, Lcom/blankj/utilcode/util/SpanUtils;->appendSpace(II)Lcom/blankj/utilcode/util/SpanUtils;

    #@4
    move-result-object p1

    #@5
    return-object p1
.end method

.method public appendSpace(II)Lcom/blankj/utilcode/util/SpanUtils;
    .registers 4

    #@0
    const/4 v0, 0x2

    #@1
    .line 814
    invoke-direct {p0, v0}, Lcom/blankj/utilcode/util/SpanUtils;->apply(I)V

    #@4
    .line 815
    iput p1, p0, Lcom/blankj/utilcode/util/SpanUtils;->spaceSize:I

    #@6
    .line 816
    iput p2, p0, Lcom/blankj/utilcode/util/SpanUtils;->spaceColor:I

    #@8
    return-object p0
.end method

.method public create()Landroid/text/SpannableStringBuilder;
    .registers 3

    #@0
    .line 835
    invoke-direct {p0}, Lcom/blankj/utilcode/util/SpanUtils;->applyLast()V

    #@3
    .line 836
    iget-object v0, p0, Lcom/blankj/utilcode/util/SpanUtils;->mTextView:Landroid/widget/TextView;

    #@5
    if-eqz v0, :cond_c

    #@7
    .line 837
    iget-object v1, p0, Lcom/blankj/utilcode/util/SpanUtils;->mBuilder:Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;

    #@9
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@c
    :cond_c
    const/4 v0, 0x1

    #@d
    .line 839
    iput-boolean v0, p0, Lcom/blankj/utilcode/util/SpanUtils;->isCreated:Z

    #@f
    .line 840
    iget-object v0, p0, Lcom/blankj/utilcode/util/SpanUtils;->mBuilder:Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;

    #@11
    return-object v0
.end method

.method public get()Landroid/text/SpannableStringBuilder;
    .registers 2

    #@0
    .line 826
    iget-object v0, p0, Lcom/blankj/utilcode/util/SpanUtils;->mBuilder:Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;

    #@2
    return-object v0
.end method

.method public setBackgroundColor(I)Lcom/blankj/utilcode/util/SpanUtils;
    .registers 2

    #@0
    .line 234
    iput p1, p0, Lcom/blankj/utilcode/util/SpanUtils;->backgroundColor:I

    #@2
    return-object p0
.end method

.method public setBlur(FLandroid/graphics/BlurMaskFilter$Blur;)Lcom/blankj/utilcode/util/SpanUtils;
    .registers 3

    #@0
    .line 592
    iput p1, p0, Lcom/blankj/utilcode/util/SpanUtils;->blurRadius:F

    #@2
    .line 593
    iput-object p2, p0, Lcom/blankj/utilcode/util/SpanUtils;->style:Landroid/graphics/BlurMaskFilter$Blur;

    #@4
    return-object p0
.end method

.method public setBold()Lcom/blankj/utilcode/util/SpanUtils;
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    .line 430
    iput-boolean v0, p0, Lcom/blankj/utilcode/util/SpanUtils;->isBold:Z

    #@3
    return-object p0
.end method

.method public setBoldItalic()Lcom/blankj/utilcode/util/SpanUtils;
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    .line 450
    iput-boolean v0, p0, Lcom/blankj/utilcode/util/SpanUtils;->isBoldItalic:Z

    #@3
    return-object p0
.end method

.method public setBullet(I)Lcom/blankj/utilcode/util/SpanUtils;
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x3

    #@2
    .line 315
    invoke-virtual {p0, v0, v1, p1}, Lcom/blankj/utilcode/util/SpanUtils;->setBullet(III)Lcom/blankj/utilcode/util/SpanUtils;

    #@5
    move-result-object p1

    #@6
    return-object p1
.end method

.method public setBullet(III)Lcom/blankj/utilcode/util/SpanUtils;
    .registers 4

    #@0
    .line 329
    iput p1, p0, Lcom/blankj/utilcode/util/SpanUtils;->bulletColor:I

    #@2
    .line 330
    iput p2, p0, Lcom/blankj/utilcode/util/SpanUtils;->bulletRadius:I

    #@4
    .line 331
    iput p3, p0, Lcom/blankj/utilcode/util/SpanUtils;->bulletGapWidth:I

    #@6
    return-object p0
.end method

.method public setClickSpan(IZLandroid/view/View$OnClickListener;)Lcom/blankj/utilcode/util/SpanUtils;
    .registers 5

    #@0
    .line 539
    invoke-direct {p0}, Lcom/blankj/utilcode/util/SpanUtils;->setMovementMethodIfNeed()V

    #@3
    .line 540
    new-instance v0, Lcom/blankj/utilcode/util/SpanUtils$1;

    #@5
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/blankj/utilcode/util/SpanUtils$1;-><init>(Lcom/blankj/utilcode/util/SpanUtils;IZLandroid/view/View$OnClickListener;)V

    #@8
    iput-object v0, p0, Lcom/blankj/utilcode/util/SpanUtils;->clickSpan:Landroid/text/style/ClickableSpan;

    #@a
    return-object p0
.end method

.method public setClickSpan(Landroid/text/style/ClickableSpan;)Lcom/blankj/utilcode/util/SpanUtils;
    .registers 2

    #@0
    .line 522
    invoke-direct {p0}, Lcom/blankj/utilcode/util/SpanUtils;->setMovementMethodIfNeed()V

    #@3
    .line 523
    iput-object p1, p0, Lcom/blankj/utilcode/util/SpanUtils;->clickSpan:Landroid/text/style/ClickableSpan;

    #@5
    return-object p0
.end method

.method public setFlag(I)Lcom/blankj/utilcode/util/SpanUtils;
    .registers 2

    #@0
    .line 212
    iput p1, p0, Lcom/blankj/utilcode/util/SpanUtils;->flag:I

    #@2
    return-object p0
.end method

.method public setFontFamily(Ljava/lang/String;)Lcom/blankj/utilcode/util/SpanUtils;
    .registers 2

    #@0
    .line 466
    iput-object p1, p0, Lcom/blankj/utilcode/util/SpanUtils;->fontFamily:Ljava/lang/String;

    #@2
    return-object p0
.end method

.method public setFontProportion(F)Lcom/blankj/utilcode/util/SpanUtils;
    .registers 2

    #@0
    .line 369
    iput p1, p0, Lcom/blankj/utilcode/util/SpanUtils;->proportion:F

    #@2
    return-object p0
.end method

.method public setFontSize(I)Lcom/blankj/utilcode/util/SpanUtils;
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 342
    invoke-virtual {p0, p1, v0}, Lcom/blankj/utilcode/util/SpanUtils;->setFontSize(IZ)Lcom/blankj/utilcode/util/SpanUtils;

    #@4
    move-result-object p1

    #@5
    return-object p1
.end method

.method public setFontSize(IZ)Lcom/blankj/utilcode/util/SpanUtils;
    .registers 3

    #@0
    if-eqz p2, :cond_15

    #@2
    .line 354
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@5
    move-result-object p2

    #@6
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@9
    move-result-object p2

    #@a
    iget p2, p2, Landroid/util/DisplayMetrics;->scaledDensity:F

    #@c
    int-to-float p1, p1

    #@d
    mul-float/2addr p1, p2

    #@e
    const/high16 p2, 0x3f000000    # 0.5f

    #@10
    add-float/2addr p1, p2

    #@11
    float-to-int p1, p1

    #@12
    .line 355
    iput p1, p0, Lcom/blankj/utilcode/util/SpanUtils;->fontSize:I

    #@14
    goto :goto_17

    #@15
    .line 357
    :cond_15
    iput p1, p0, Lcom/blankj/utilcode/util/SpanUtils;->fontSize:I

    #@17
    :goto_17
    return-object p0
.end method

.method public setFontXProportion(F)Lcom/blankj/utilcode/util/SpanUtils;
    .registers 2

    #@0
    .line 380
    iput p1, p0, Lcom/blankj/utilcode/util/SpanUtils;->xProportion:F

    #@2
    return-object p0
.end method

.method public setForegroundColor(I)Lcom/blankj/utilcode/util/SpanUtils;
    .registers 2

    #@0
    .line 223
    iput p1, p0, Lcom/blankj/utilcode/util/SpanUtils;->foregroundColor:I

    #@2
    return-object p0
.end method

.method public setHorizontalAlign(Landroid/text/Layout$Alignment;)Lcom/blankj/utilcode/util/SpanUtils;
    .registers 2

    #@0
    .line 493
    iput-object p1, p0, Lcom/blankj/utilcode/util/SpanUtils;->alignment:Landroid/text/Layout$Alignment;

    #@2
    return-object p0
.end method

.method public setItalic()Lcom/blankj/utilcode/util/SpanUtils;
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    .line 440
    iput-boolean v0, p0, Lcom/blankj/utilcode/util/SpanUtils;->isItalic:Z

    #@3
    return-object p0
.end method

.method public setLeadingMargin(II)Lcom/blankj/utilcode/util/SpanUtils;
    .registers 3

    #@0
    .line 303
    iput p1, p0, Lcom/blankj/utilcode/util/SpanUtils;->first:I

    #@2
    .line 304
    iput p2, p0, Lcom/blankj/utilcode/util/SpanUtils;->rest:I

    #@4
    return-object p0
.end method

.method public setLineHeight(I)Lcom/blankj/utilcode/util/SpanUtils;
    .registers 3

    #@0
    const/4 v0, 0x2

    #@1
    .line 245
    invoke-virtual {p0, p1, v0}, Lcom/blankj/utilcode/util/SpanUtils;->setLineHeight(II)Lcom/blankj/utilcode/util/SpanUtils;

    #@4
    move-result-object p1

    #@5
    return-object p1
.end method

.method public setLineHeight(II)Lcom/blankj/utilcode/util/SpanUtils;
    .registers 3

    #@0
    .line 262
    iput p1, p0, Lcom/blankj/utilcode/util/SpanUtils;->lineHeight:I

    #@2
    .line 263
    iput p2, p0, Lcom/blankj/utilcode/util/SpanUtils;->alignLine:I

    #@4
    return-object p0
.end method

.method public setQuoteColor(I)Lcom/blankj/utilcode/util/SpanUtils;
    .registers 3

    #@0
    const/4 v0, 0x2

    #@1
    .line 274
    invoke-virtual {p0, p1, v0, v0}, Lcom/blankj/utilcode/util/SpanUtils;->setQuoteColor(III)Lcom/blankj/utilcode/util/SpanUtils;

    #@4
    move-result-object p1

    #@5
    return-object p1
.end method

.method public setQuoteColor(III)Lcom/blankj/utilcode/util/SpanUtils;
    .registers 4

    #@0
    .line 288
    iput p1, p0, Lcom/blankj/utilcode/util/SpanUtils;->quoteColor:I

    #@2
    .line 289
    iput p2, p0, Lcom/blankj/utilcode/util/SpanUtils;->stripeWidth:I

    #@4
    .line 290
    iput p3, p0, Lcom/blankj/utilcode/util/SpanUtils;->quoteGapWidth:I

    #@6
    return-object p0
.end method

.method public setShader(Landroid/graphics/Shader;)Lcom/blankj/utilcode/util/SpanUtils;
    .registers 2

    #@0
    .line 604
    iput-object p1, p0, Lcom/blankj/utilcode/util/SpanUtils;->shader:Landroid/graphics/Shader;

    #@2
    return-object p0
.end method

.method public setShadow(FFFI)Lcom/blankj/utilcode/util/SpanUtils;
    .registers 5

    #@0
    .line 621
    iput p1, p0, Lcom/blankj/utilcode/util/SpanUtils;->shadowRadius:F

    #@2
    .line 622
    iput p2, p0, Lcom/blankj/utilcode/util/SpanUtils;->shadowDx:F

    #@4
    .line 623
    iput p3, p0, Lcom/blankj/utilcode/util/SpanUtils;->shadowDy:F

    #@6
    .line 624
    iput p4, p0, Lcom/blankj/utilcode/util/SpanUtils;->shadowColor:I

    #@8
    return-object p0
.end method

.method public varargs setSpans([Ljava/lang/Object;)Lcom/blankj/utilcode/util/SpanUtils;
    .registers 3

    #@0
    .line 636
    array-length v0, p1

    #@1
    if-lez v0, :cond_5

    #@3
    .line 637
    iput-object p1, p0, Lcom/blankj/utilcode/util/SpanUtils;->spans:[Ljava/lang/Object;

    #@5
    :cond_5
    return-object p0
.end method

.method public setStrikethrough()Lcom/blankj/utilcode/util/SpanUtils;
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    .line 390
    iput-boolean v0, p0, Lcom/blankj/utilcode/util/SpanUtils;->isStrikethrough:Z

    #@3
    return-object p0
.end method

.method public setSubscript()Lcom/blankj/utilcode/util/SpanUtils;
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    .line 420
    iput-boolean v0, p0, Lcom/blankj/utilcode/util/SpanUtils;->isSubscript:Z

    #@3
    return-object p0
.end method

.method public setSuperscript()Lcom/blankj/utilcode/util/SpanUtils;
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    .line 410
    iput-boolean v0, p0, Lcom/blankj/utilcode/util/SpanUtils;->isSuperscript:Z

    #@3
    return-object p0
.end method

.method public setTypeface(Landroid/graphics/Typeface;)Lcom/blankj/utilcode/util/SpanUtils;
    .registers 2

    #@0
    .line 477
    iput-object p1, p0, Lcom/blankj/utilcode/util/SpanUtils;->typeface:Landroid/graphics/Typeface;

    #@2
    return-object p0
.end method

.method public setUnderline()Lcom/blankj/utilcode/util/SpanUtils;
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    .line 400
    iput-boolean v0, p0, Lcom/blankj/utilcode/util/SpanUtils;->isUnderline:Z

    #@3
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/blankj/utilcode/util/SpanUtils;
    .registers 2

    #@0
    .line 566
    invoke-direct {p0}, Lcom/blankj/utilcode/util/SpanUtils;->setMovementMethodIfNeed()V

    #@3
    .line 567
    iput-object p1, p0, Lcom/blankj/utilcode/util/SpanUtils;->url:Ljava/lang/String;

    #@5
    return-object p0
.end method

.method public setVerticalAlign(I)Lcom/blankj/utilcode/util/SpanUtils;
    .registers 2

    #@0
    .line 510
    iput p1, p0, Lcom/blankj/utilcode/util/SpanUtils;->verticalAlign:I

    #@2
    return-object p0
.end method
