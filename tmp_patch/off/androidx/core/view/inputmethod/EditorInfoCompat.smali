.class public final Landroidx/core/view/inputmethod/EditorInfoCompat;
.super Ljava/lang/Object;
.source "EditorInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/inputmethod/EditorInfoCompat$Api30Impl;
    }
.end annotation


# static fields
.field private static final CONTENT_MIME_TYPES_INTEROP_KEY:Ljava/lang/String; = "android.support.v13.view.inputmethod.EditorInfoCompat.CONTENT_MIME_TYPES"

.field private static final CONTENT_MIME_TYPES_KEY:Ljava/lang/String; = "androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_MIME_TYPES"

.field private static final CONTENT_SELECTION_END_KEY:Ljava/lang/String; = "androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_SELECTION_END"

.field private static final CONTENT_SELECTION_HEAD_KEY:Ljava/lang/String; = "androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_SELECTION_HEAD"

.field private static final CONTENT_SURROUNDING_TEXT_KEY:Ljava/lang/String; = "androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_SURROUNDING_TEXT"

.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field public static final IME_FLAG_FORCE_ASCII:I = -0x80000000

.field public static final IME_FLAG_NO_PERSONALIZED_LEARNING:I = 0x1000000

.field static final MAX_INITIAL_SELECTION_LENGTH:I = 0x400

.field static final MEMORY_EFFICIENT_TEXT_LENGTH:I = 0x800


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    const/4 v0, 0x0

    #@1
    new-array v0, v0, [Ljava/lang/String;

    #@3
    .line 93
    sput-object v0, Landroidx/core/view/inputmethod/EditorInfoCompat;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    #@5
    return-void
.end method

.method public constructor <init>()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 527
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getContentMimeTypes(Landroid/view/inputmethod/EditorInfo;)[Ljava/lang/String;
    .registers 1

    #@0
    .line 184
    iget-object p0, p0, Landroid/view/inputmethod/EditorInfo;->contentMimeTypes:[Ljava/lang/String;

    #@2
    if-eqz p0, :cond_5

    #@4
    goto :goto_7

    #@5
    .line 185
    :cond_5
    sget-object p0, Landroidx/core/view/inputmethod/EditorInfoCompat;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    #@7
    :goto_7
    return-object p0
.end method

.method public static getInitialSelectedText(Landroid/view/inputmethod/EditorInfo;I)Ljava/lang/CharSequence;
    .registers 8

    #@0
    .line 392
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1e

    #@4
    if-lt v0, v1, :cond_b

    #@6
    .line 393
    invoke-static {p0, p1}, Landroidx/core/view/inputmethod/EditorInfoCompat$Api30Impl;->getInitialSelectedText(Landroid/view/inputmethod/EditorInfo;I)Ljava/lang/CharSequence;

    #@9
    move-result-object p0

    #@a
    return-object p0

    #@b
    .line 396
    :cond_b
    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    #@d
    const/4 v1, 0x0

    #@e
    if-nez v0, :cond_11

    #@10
    return-object v1

    #@11
    .line 401
    :cond_11
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    #@13
    iget v2, p0, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    #@15
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    #@18
    move-result v0

    #@19
    .line 403
    iget v2, p0, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    #@1b
    iget v3, p0, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    #@1d
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    #@20
    move-result v2

    #@21
    .line 406
    iget-object v3, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    #@23
    const-string v4, "androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_SELECTION_HEAD"

    #@25
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@28
    move-result v3

    #@29
    .line 407
    iget-object v4, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    #@2b
    const-string v5, "androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_SELECTION_END"

    #@2d
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@30
    move-result v4

    #@31
    sub-int/2addr v2, v0

    #@32
    .line 409
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    #@34
    if-ltz v0, :cond_58

    #@36
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    #@38
    if-ltz v0, :cond_58

    #@3a
    sub-int v0, v4, v3

    #@3c
    if-eq v0, v2, :cond_3f

    #@3e
    goto :goto_58

    #@3f
    .line 413
    :cond_3f
    iget-object p0, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    #@41
    const-string v0, "androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_SURROUNDING_TEXT"

    #@43
    .line 414
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    #@46
    move-result-object p0

    #@47
    if-nez p0, :cond_4a

    #@49
    return-object v1

    #@4a
    :cond_4a
    and-int/lit8 p1, p1, 0x1

    #@4c
    if-eqz p1, :cond_53

    #@4e
    .line 420
    invoke-interface {p0, v3, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    #@51
    move-result-object p0

    #@52
    goto :goto_57

    #@53
    .line 421
    :cond_53
    invoke-static {p0, v3, v4}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    #@56
    move-result-object p0

    #@57
    :goto_57
    return-object p0

    #@58
    :cond_58
    :goto_58
    return-object v1
.end method

.method public static getInitialTextAfterCursor(Landroid/view/inputmethod/EditorInfo;II)Ljava/lang/CharSequence;
    .registers 6

    #@0
    .line 438
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1e

    #@4
    if-lt v0, v1, :cond_b

    #@6
    .line 439
    invoke-static {p0, p1, p2}, Landroidx/core/view/inputmethod/EditorInfoCompat$Api30Impl;->getInitialTextAfterCursor(Landroid/view/inputmethod/EditorInfo;II)Ljava/lang/CharSequence;

    #@9
    move-result-object p0

    #@a
    return-object p0

    #@b
    .line 442
    :cond_b
    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    #@d
    const/4 v1, 0x0

    #@e
    if-nez v0, :cond_11

    #@10
    return-object v1

    #@11
    .line 446
    :cond_11
    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    #@13
    const-string v2, "androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_SURROUNDING_TEXT"

    #@15
    .line 447
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    #@18
    move-result-object v0

    #@19
    if-nez v0, :cond_1c

    #@1b
    return-object v1

    #@1c
    .line 452
    :cond_1c
    iget-object p0, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    #@1e
    const-string v1, "androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_SELECTION_END"

    #@20
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@23
    move-result p0

    #@24
    .line 453
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    #@27
    move-result v1

    #@28
    sub-int/2addr v1, p0

    #@29
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    #@2c
    move-result p1

    #@2d
    and-int/lit8 p2, p2, 0x1

    #@2f
    if-eqz p2, :cond_37

    #@31
    add-int/2addr p1, p0

    #@32
    .line 455
    invoke-interface {v0, p0, p1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    #@35
    move-result-object p0

    #@36
    goto :goto_3c

    #@37
    :cond_37
    add-int/2addr p1, p0

    #@38
    .line 456
    invoke-static {v0, p0, p1}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    #@3b
    move-result-object p0

    #@3c
    :goto_3c
    return-object p0
.end method

.method public static getInitialTextBeforeCursor(Landroid/view/inputmethod/EditorInfo;II)Ljava/lang/CharSequence;
    .registers 6

    #@0
    .line 357
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1e

    #@4
    if-lt v0, v1, :cond_b

    #@6
    .line 358
    invoke-static {p0, p1, p2}, Landroidx/core/view/inputmethod/EditorInfoCompat$Api30Impl;->getInitialTextBeforeCursor(Landroid/view/inputmethod/EditorInfo;II)Ljava/lang/CharSequence;

    #@9
    move-result-object p0

    #@a
    return-object p0

    #@b
    .line 361
    :cond_b
    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    #@d
    const/4 v1, 0x0

    #@e
    if-nez v0, :cond_11

    #@10
    return-object v1

    #@11
    .line 365
    :cond_11
    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    #@13
    const-string v2, "androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_SURROUNDING_TEXT"

    #@15
    .line 366
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    #@18
    move-result-object v0

    #@19
    if-nez v0, :cond_1c

    #@1b
    return-object v1

    #@1c
    .line 372
    :cond_1c
    iget-object p0, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    #@1e
    const-string v1, "androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_SELECTION_HEAD"

    #@20
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@23
    move-result p0

    #@24
    .line 373
    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    #@27
    move-result p1

    #@28
    and-int/lit8 p2, p2, 0x1

    #@2a
    if-eqz p2, :cond_33

    #@2c
    sub-int p1, p0, p1

    #@2e
    .line 375
    invoke-interface {v0, p1, p0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    #@31
    move-result-object p0

    #@32
    goto :goto_39

    #@33
    :cond_33
    sub-int p1, p0, p1

    #@35
    .line 376
    invoke-static {v0, p1, p0}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    #@38
    move-result-object p0

    #@39
    :goto_39
    return-object p0
.end method

.method static getProtocol(Landroid/view/inputmethod/EditorInfo;)I
    .registers 1

    #@0
    const/4 p0, 0x1

    #@1
    return p0
.end method

.method private static isCutOnSurrogate(Ljava/lang/CharSequence;II)Z
    .registers 4

    #@0
    if-eqz p2, :cond_10

    #@2
    const/4 v0, 0x1

    #@3
    if-eq p2, v0, :cond_7

    #@5
    const/4 p0, 0x0

    #@6
    return p0

    #@7
    .line 465
    :cond_7
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    #@a
    move-result p0

    #@b
    invoke-static {p0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    #@e
    move-result p0

    #@f
    return p0

    #@10
    .line 463
    :cond_10
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    #@13
    move-result p0

    #@14
    invoke-static {p0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    #@17
    move-result p0

    #@18
    return p0
.end method

.method private static isPasswordInputType(I)Z
    .registers 2

    #@0
    and-int/lit16 p0, p0, 0xfff

    #@2
    const/16 v0, 0x81

    #@4
    if-eq p0, v0, :cond_11

    #@6
    const/16 v0, 0xe1

    #@8
    if-eq p0, v0, :cond_11

    #@a
    const/16 v0, 0x12

    #@c
    if-ne p0, v0, :cond_f

    #@e
    goto :goto_11

    #@f
    :cond_f
    const/4 p0, 0x0

    #@10
    goto :goto_12

    #@11
    :cond_11
    :goto_11
    const/4 p0, 0x1

    #@12
    :goto_12
    return p0
.end method

.method public static setContentMimeTypes(Landroid/view/inputmethod/EditorInfo;[Ljava/lang/String;)V
    .registers 2

    #@0
    .line 161
    iput-object p1, p0, Landroid/view/inputmethod/EditorInfo;->contentMimeTypes:[Ljava/lang/String;

    #@2
    return-void
.end method

.method public static setInitialSurroundingSubText(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;I)V
    .registers 8

    #@0
    .line 237
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 238
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@5
    const/16 v1, 0x1e

    #@7
    if-lt v0, v1, :cond_d

    #@9
    .line 239
    invoke-static {p0, p1, p2}, Landroidx/core/view/inputmethod/EditorInfoCompat$Api30Impl;->setInitialSurroundingSubText(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;I)V

    #@c
    return-void

    #@d
    .line 244
    :cond_d
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    #@f
    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    #@11
    if-le v0, v1, :cond_16

    #@13
    .line 245
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    #@15
    goto :goto_18

    #@16
    .line 246
    :cond_16
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    #@18
    :goto_18
    sub-int/2addr v0, p2

    #@19
    .line 247
    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    #@1b
    iget v2, p0, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    #@1d
    if-le v1, v2, :cond_22

    #@1f
    .line 248
    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    #@21
    goto :goto_24

    #@22
    .line 249
    :cond_22
    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    #@24
    :goto_24
    sub-int/2addr v1, p2

    #@25
    .line 251
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@28
    move-result v2

    #@29
    const/4 v3, 0x0

    #@2a
    const/4 v4, 0x0

    #@2b
    if-ltz p2, :cond_4a

    #@2d
    if-ltz v0, :cond_4a

    #@2f
    if-le v1, v2, :cond_32

    #@31
    goto :goto_4a

    #@32
    .line 259
    :cond_32
    iget p2, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    #@34
    invoke-static {p2}, Landroidx/core/view/inputmethod/EditorInfoCompat;->isPasswordInputType(I)Z

    #@37
    move-result p2

    #@38
    if-eqz p2, :cond_3e

    #@3a
    .line 260
    invoke-static {p0, v3, v4, v4}, Landroidx/core/view/inputmethod/EditorInfoCompat;->setSurroundingText(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;II)V

    #@3d
    return-void

    #@3e
    :cond_3e
    const/16 p2, 0x800

    #@40
    if-gt v2, p2, :cond_46

    #@42
    .line 265
    invoke-static {p0, p1, v0, v1}, Landroidx/core/view/inputmethod/EditorInfoCompat;->setSurroundingText(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;II)V

    #@45
    return-void

    #@46
    .line 269
    :cond_46
    invoke-static {p0, p1, v0, v1}, Landroidx/core/view/inputmethod/EditorInfoCompat;->trimLongSurroundingText(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;II)V

    #@49
    return-void

    #@4a
    .line 254
    :cond_4a
    :goto_4a
    invoke-static {p0, v3, v4, v4}, Landroidx/core/view/inputmethod/EditorInfoCompat;->setSurroundingText(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;II)V

    #@4d
    return-void
.end method

.method public static setInitialSurroundingText(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;)V
    .registers 5

    #@0
    .line 214
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1e

    #@4
    const/4 v2, 0x0

    #@5
    if-lt v0, v1, :cond_b

    #@7
    .line 215
    invoke-static {p0, p1, v2}, Landroidx/core/view/inputmethod/EditorInfoCompat$Api30Impl;->setInitialSurroundingSubText(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;I)V

    #@a
    goto :goto_e

    #@b
    .line 217
    :cond_b
    invoke-static {p0, p1, v2}, Landroidx/core/view/inputmethod/EditorInfoCompat;->setInitialSurroundingSubText(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;I)V

    #@e
    :goto_e
    return-void
.end method

.method private static setSurroundingText(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;II)V
    .registers 6

    #@0
    .line 485
    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    #@2
    if-nez v0, :cond_b

    #@4
    .line 486
    new-instance v0, Landroid/os/Bundle;

    #@6
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@9
    iput-object v0, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    #@b
    :cond_b
    if-eqz p1, :cond_13

    #@d
    .line 490
    new-instance v0, Landroid/text/SpannableStringBuilder;

    #@f
    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    #@12
    goto :goto_14

    #@13
    :cond_13
    const/4 v0, 0x0

    #@14
    .line 491
    :goto_14
    iget-object p1, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    #@16
    const-string v1, "androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_SURROUNDING_TEXT"

    #@18
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    #@1b
    .line 492
    iget-object p1, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    #@1d
    const-string v0, "androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_SELECTION_HEAD"

    #@1f
    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@22
    .line 493
    iget-object p0, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    #@24
    const-string p1, "androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_SELECTION_END"

    #@26
    invoke-virtual {p0, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@29
    return-void
.end method

.method private static trimLongSurroundingText(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;II)V
    .registers 13

    #@0
    sub-int v0, p3, p2

    #@2
    const/16 v1, 0x400

    #@4
    const/4 v2, 0x0

    #@5
    if-le v0, v1, :cond_9

    #@7
    move v1, v2

    #@8
    goto :goto_a

    #@9
    :cond_9
    move v1, v0

    #@a
    .line 297
    :goto_a
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@d
    move-result v3

    #@e
    sub-int/2addr v3, p3

    #@f
    rsub-int v4, v1, 0x800

    #@11
    const-wide v5, 0x3fe999999999999aL    # 0.8

    #@16
    int-to-double v7, v4

    #@17
    mul-double/2addr v7, v5

    #@18
    double-to-int v5, v7

    #@19
    .line 300
    invoke-static {p2, v5}, Ljava/lang/Math;->min(II)I

    #@1c
    move-result v5

    #@1d
    sub-int v5, v4, v5

    #@1f
    .line 301
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    #@22
    move-result v3

    #@23
    sub-int/2addr v4, v3

    #@24
    .line 303
    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    #@27
    move-result v4

    #@28
    sub-int/2addr p2, v4

    #@29
    .line 310
    invoke-static {p1, p2, v2}, Landroidx/core/view/inputmethod/EditorInfoCompat;->isCutOnSurrogate(Ljava/lang/CharSequence;II)Z

    #@2c
    move-result v5

    #@2d
    if-eqz v5, :cond_33

    #@2f
    add-int/lit8 p2, p2, 0x1

    #@31
    add-int/lit8 v4, v4, -0x1

    #@33
    :cond_33
    add-int v5, p3, v3

    #@35
    const/4 v6, 0x1

    #@36
    sub-int/2addr v5, v6

    #@37
    .line 315
    invoke-static {p1, v5, v6}, Landroidx/core/view/inputmethod/EditorInfoCompat;->isCutOnSurrogate(Ljava/lang/CharSequence;II)Z

    #@3a
    move-result v5

    #@3b
    if-eqz v5, :cond_3f

    #@3d
    add-int/lit8 v3, v3, -0x1

    #@3f
    :cond_3f
    add-int v5, v4, v1

    #@41
    add-int/2addr v5, v3

    #@42
    if-eq v1, v0, :cond_5b

    #@44
    add-int v0, p2, v4

    #@46
    .line 324
    invoke-interface {p1, p2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    #@49
    move-result-object p2

    #@4a
    add-int/2addr v3, p3

    #@4b
    .line 326
    invoke-interface {p1, p3, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    #@4e
    move-result-object p1

    #@4f
    const/4 p3, 0x2

    #@50
    new-array p3, p3, [Ljava/lang/CharSequence;

    #@52
    aput-object p2, p3, v2

    #@54
    aput-object p1, p3, v6

    #@56
    .line 329
    invoke-static {p3}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@59
    move-result-object p1

    #@5a
    goto :goto_60

    #@5b
    :cond_5b
    add-int/2addr v5, p2

    #@5c
    .line 332
    invoke-interface {p1, p2, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    #@5f
    move-result-object p1

    #@60
    :goto_60
    add-int/2addr v4, v2

    #@61
    add-int/2addr v1, v4

    #@62
    .line 339
    invoke-static {p0, p1, v4, v1}, Landroidx/core/view/inputmethod/EditorInfoCompat;->setSurroundingText(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;II)V

    #@65
    return-void
.end method
