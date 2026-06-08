.class public final Landroidx/core/content/res/ComplexColorCompat;
.super Ljava/lang/Object;
.source "ComplexColorCompat.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ComplexColorCompat"


# instance fields
.field private mColor:I

.field private final mColorStateList:Landroid/content/res/ColorStateList;

.field private final mShader:Landroid/graphics/Shader;


# direct methods
.method private constructor <init>(Landroid/graphics/Shader;Landroid/content/res/ColorStateList;I)V
    .registers 4

    #@0
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 62
    iput-object p1, p0, Landroidx/core/content/res/ComplexColorCompat;->mShader:Landroid/graphics/Shader;

    #@5
    .line 63
    iput-object p2, p0, Landroidx/core/content/res/ComplexColorCompat;->mColorStateList:Landroid/content/res/ColorStateList;

    #@7
    .line 64
    iput p3, p0, Landroidx/core/content/res/ComplexColorCompat;->mColor:I

    #@9
    return-void
.end method

.method private static createFromXml(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroidx/core/content/res/ComplexColorCompat;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .line 152
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    #@3
    move-result-object p1

    #@4
    .line 153
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    #@7
    move-result-object v0

    #@8
    .line 155
    :goto_8
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@b
    move-result v1

    #@c
    const/4 v2, 0x2

    #@d
    if-eq v1, v2, :cond_13

    #@f
    const/4 v3, 0x1

    #@10
    if-eq v1, v3, :cond_13

    #@12
    goto :goto_8

    #@13
    :cond_13
    if-ne v1, v2, :cond_5f

    #@15
    .line 162
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    .line 163
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    #@1c
    const-string v2, "gradient"

    #@1e
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@21
    move-result v2

    #@22
    if-nez v2, :cond_56

    #@24
    const-string v2, "selector"

    #@26
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@29
    move-result v2

    #@2a
    if-eqz v2, :cond_35

    #@2c
    .line 165
    invoke-static {p0, p1, v0, p2}, Landroidx/core/content/res/ColorStateListInflaterCompat;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    #@2f
    move-result-object p0

    #@30
    invoke-static {p0}, Landroidx/core/content/res/ComplexColorCompat;->from(Landroid/content/res/ColorStateList;)Landroidx/core/content/res/ComplexColorCompat;

    #@33
    move-result-object p0

    #@34
    return-object p0

    #@35
    .line 171
    :cond_35
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    #@37
    new-instance p2, Ljava/lang/StringBuilder;

    #@39
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    #@3c
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@3f
    move-result-object p1

    #@40
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object p1

    #@44
    const-string p2, ": unsupported complex color tag "

    #@46
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object p1

    #@4a
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object p1

    #@4e
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object p1

    #@52
    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@55
    throw p0

    #@56
    .line 168
    :cond_56
    invoke-static {p0, p1, v0, p2}, Landroidx/core/content/res/GradientColorInflaterCompat;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/Shader;

    #@59
    move-result-object p0

    #@5a
    invoke-static {p0}, Landroidx/core/content/res/ComplexColorCompat;->from(Landroid/graphics/Shader;)Landroidx/core/content/res/ComplexColorCompat;

    #@5d
    move-result-object p0

    #@5e
    return-object p0

    #@5f
    .line 160
    :cond_5f
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    #@61
    const-string p1, "No start tag found"

    #@63
    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@66
    throw p0
.end method

.method static from(I)Landroidx/core/content/res/ComplexColorCompat;
    .registers 3

    #@0
    .line 76
    new-instance v0, Landroidx/core/content/res/ComplexColorCompat;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, v1, v1, p0}, Landroidx/core/content/res/ComplexColorCompat;-><init>(Landroid/graphics/Shader;Landroid/content/res/ColorStateList;I)V

    #@6
    return-object v0
.end method

.method static from(Landroid/content/res/ColorStateList;)Landroidx/core/content/res/ComplexColorCompat;
    .registers 4

    #@0
    .line 72
    new-instance v0, Landroidx/core/content/res/ComplexColorCompat;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    #@6
    move-result v2

    #@7
    invoke-direct {v0, v1, p0, v2}, Landroidx/core/content/res/ComplexColorCompat;-><init>(Landroid/graphics/Shader;Landroid/content/res/ColorStateList;I)V

    #@a
    return-object v0
.end method

.method static from(Landroid/graphics/Shader;)Landroidx/core/content/res/ComplexColorCompat;
    .registers 4

    #@0
    .line 68
    new-instance v0, Landroidx/core/content/res/ComplexColorCompat;

    #@2
    const/4 v1, 0x0

    #@3
    const/4 v2, 0x0

    #@4
    invoke-direct {v0, p0, v1, v2}, Landroidx/core/content/res/ComplexColorCompat;-><init>(Landroid/graphics/Shader;Landroid/content/res/ColorStateList;I)V

    #@7
    return-object v0
.end method

.method public static inflate(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroidx/core/content/res/ComplexColorCompat;
    .registers 3

    #@0
    .line 140
    :try_start_0
    invoke-static {p0, p1, p2}, Landroidx/core/content/res/ComplexColorCompat;->createFromXml(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroidx/core/content/res/ComplexColorCompat;

    #@3
    move-result-object p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    #@4
    return-object p0

    #@5
    :catch_5
    move-exception p0

    #@6
    const-string p1, "ComplexColorCompat"

    #@8
    const-string p2, "Failed to inflate ComplexColor."

    #@a
    .line 142
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@d
    const/4 p0, 0x0

    #@e
    return-object p0
.end method


# virtual methods
.method public getColor()I
    .registers 2

    #@0
    .line 86
    iget v0, p0, Landroidx/core/content/res/ComplexColorCompat;->mColor:I

    #@2
    return v0
.end method

.method public getShader()Landroid/graphics/Shader;
    .registers 2

    #@0
    .line 81
    iget-object v0, p0, Landroidx/core/content/res/ComplexColorCompat;->mShader:Landroid/graphics/Shader;

    #@2
    return-object v0
.end method

.method public isGradient()Z
    .registers 2

    #@0
    .line 94
    iget-object v0, p0, Landroidx/core/content/res/ComplexColorCompat;->mShader:Landroid/graphics/Shader;

    #@2
    if-eqz v0, :cond_6

    #@4
    const/4 v0, 0x1

    #@5
    goto :goto_7

    #@6
    :cond_6
    const/4 v0, 0x0

    #@7
    :goto_7
    return v0
.end method

.method public isStateful()Z
    .registers 2

    #@0
    .line 98
    iget-object v0, p0, Landroidx/core/content/res/ComplexColorCompat;->mShader:Landroid/graphics/Shader;

    #@2
    if-nez v0, :cond_10

    #@4
    iget-object v0, p0, Landroidx/core/content/res/ComplexColorCompat;->mColorStateList:Landroid/content/res/ColorStateList;

    #@6
    if-eqz v0, :cond_10

    #@8
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_10

    #@e
    const/4 v0, 0x1

    #@f
    goto :goto_11

    #@10
    :cond_10
    const/4 v0, 0x0

    #@11
    :goto_11
    return v0
.end method

.method public onStateChanged([I)Z
    .registers 4

    #@0
    .line 109
    invoke-virtual {p0}, Landroidx/core/content/res/ComplexColorCompat;->isStateful()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_18

    #@6
    .line 110
    iget-object v0, p0, Landroidx/core/content/res/ComplexColorCompat;->mColorStateList:Landroid/content/res/ColorStateList;

    #@8
    .line 111
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    #@b
    move-result v1

    #@c
    .line 110
    invoke-virtual {v0, p1, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    #@f
    move-result p1

    #@10
    .line 112
    iget v0, p0, Landroidx/core/content/res/ComplexColorCompat;->mColor:I

    #@12
    if-eq p1, v0, :cond_18

    #@14
    .line 114
    iput p1, p0, Landroidx/core/content/res/ComplexColorCompat;->mColor:I

    #@16
    const/4 p1, 0x1

    #@17
    goto :goto_19

    #@18
    :cond_18
    const/4 p1, 0x0

    #@19
    :goto_19
    return p1
.end method

.method public setColor(I)V
    .registers 2

    #@0
    .line 90
    iput p1, p0, Landroidx/core/content/res/ComplexColorCompat;->mColor:I

    #@2
    return-void
.end method

.method public willDraw()Z
    .registers 2

    #@0
    .line 124
    invoke-virtual {p0}, Landroidx/core/content/res/ComplexColorCompat;->isGradient()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_d

    #@6
    iget v0, p0, Landroidx/core/content/res/ComplexColorCompat;->mColor:I

    #@8
    if-eqz v0, :cond_b

    #@a
    goto :goto_d

    #@b
    :cond_b
    const/4 v0, 0x0

    #@c
    goto :goto_e

    #@d
    :cond_d
    :goto_d
    const/4 v0, 0x1

    #@e
    :goto_e
    return v0
.end method
