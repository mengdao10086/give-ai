.class public Landroidx/databinding/adapters/TextViewBindingAdapter;
.super Ljava/lang/Object;
.source "TextViewBindingAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/databinding/adapters/TextViewBindingAdapter$OnTextChanged;,
        Landroidx/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;,
        Landroidx/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;
    }
.end annotation


# static fields
.field public static final DECIMAL:I = 0x5

.field public static final INTEGER:I = 0x1

.field public static final SIGNED:I = 0x3

.field private static final TAG:Ljava/lang/String; = "TextViewBindingAdapters"


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getTextString(Landroid/widget/TextView;)Ljava/lang/String;
    .registers 1

    #@0
    .line 85
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@3
    move-result-object p0

    #@4
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method private static haveContentsChanged(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 8

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    if-nez p0, :cond_6

    #@4
    move v2, v1

    #@5
    goto :goto_7

    #@6
    :cond_6
    move v2, v0

    #@7
    :goto_7
    if-nez p1, :cond_b

    #@9
    move v3, v1

    #@a
    goto :goto_c

    #@b
    :cond_b
    move v3, v0

    #@c
    :goto_c
    if-eq v2, v3, :cond_f

    #@e
    return v1

    #@f
    :cond_f
    if-nez p0, :cond_12

    #@11
    return v0

    #@12
    .line 338
    :cond_12
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    #@15
    move-result v2

    #@16
    .line 339
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@19
    move-result v3

    #@1a
    if-eq v2, v3, :cond_1d

    #@1c
    return v1

    #@1d
    :cond_1d
    move v3, v0

    #@1e
    :goto_1e
    if-ge v3, v2, :cond_2e

    #@20
    .line 343
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    #@23
    move-result v4

    #@24
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    #@27
    move-result v5

    #@28
    if-eq v4, v5, :cond_2b

    #@2a
    return v1

    #@2b
    :cond_2b
    add-int/lit8 v3, v3, 0x1

    #@2d
    goto :goto_1e

    #@2e
    :cond_2e
    return v0
.end method

.method public static setAutoText(Landroid/widget/TextView;Z)V
    .registers 5

    #@0
    .line 90
    invoke-virtual {p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    #@3
    move-result-object v0

    #@4
    .line 92
    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->NONE:Landroid/text/method/TextKeyListener$Capitalize;

    #@6
    if-eqz v0, :cond_d

    #@8
    .line 94
    invoke-interface {v0}, Landroid/text/method/KeyListener;->getInputType()I

    #@b
    move-result v0

    #@c
    goto :goto_e

    #@d
    :cond_d
    const/4 v0, 0x0

    #@e
    :goto_e
    and-int/lit16 v2, v0, 0x1000

    #@10
    if-eqz v2, :cond_15

    #@12
    .line 96
    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->CHARACTERS:Landroid/text/method/TextKeyListener$Capitalize;

    #@14
    goto :goto_22

    #@15
    :cond_15
    and-int/lit16 v2, v0, 0x2000

    #@17
    if-eqz v2, :cond_1c

    #@19
    .line 98
    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->WORDS:Landroid/text/method/TextKeyListener$Capitalize;

    #@1b
    goto :goto_22

    #@1c
    :cond_1c
    and-int/lit16 v0, v0, 0x4000

    #@1e
    if-eqz v0, :cond_22

    #@20
    .line 100
    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->SENTENCES:Landroid/text/method/TextKeyListener$Capitalize;

    #@22
    .line 102
    :cond_22
    :goto_22
    invoke-static {p1, v1}, Landroid/text/method/TextKeyListener;->getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/TextKeyListener;

    #@25
    move-result-object p1

    #@26
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    #@29
    return-void
.end method

.method public static setBufferType(Landroid/widget/TextView;Landroid/widget/TextView$BufferType;)V
    .registers 3

    #@0
    .line 116
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    #@7
    return-void
.end method

.method public static setCapitalize(Landroid/widget/TextView;Landroid/text/method/TextKeyListener$Capitalize;)V
    .registers 4

    #@0
    .line 107
    invoke-virtual {p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    #@3
    move-result-object v0

    #@4
    .line 109
    invoke-interface {v0}, Landroid/text/method/KeyListener;->getInputType()I

    #@7
    move-result v0

    #@8
    const v1, 0x8000

    #@b
    and-int/2addr v0, v1

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
    .line 111
    :goto_11
    invoke-static {v0, p1}, Landroid/text/method/TextKeyListener;->getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/TextKeyListener;

    #@14
    move-result-object p1

    #@15
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    #@18
    return-void
.end method

.method public static setDigits(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .registers 2

    #@0
    if-eqz p1, :cond_e

    #@2
    .line 122
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@5
    move-result-object p1

    #@6
    invoke-static {p1}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    #@9
    move-result-object p1

    #@a
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    #@d
    goto :goto_1a

    #@e
    .line 123
    :cond_e
    invoke-virtual {p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    #@11
    move-result-object p1

    #@12
    instance-of p1, p1, Landroid/text/method/DigitsKeyListener;

    #@14
    if-eqz p1, :cond_1a

    #@16
    const/4 p1, 0x0

    #@17
    .line 124
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    #@1a
    :cond_1a
    :goto_1a
    return-void
.end method

.method public static setDrawableBottom(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;)V
    .registers 6

    #@0
    .line 151
    invoke-static {p1}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setIntrinsicBounds(Landroid/graphics/drawable/Drawable;)V

    #@3
    .line 152
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    #@6
    move-result-object v0

    #@7
    const/4 v1, 0x0

    #@8
    .line 153
    aget-object v1, v0, v1

    #@a
    const/4 v2, 0x1

    #@b
    aget-object v2, v0, v2

    #@d
    const/4 v3, 0x2

    #@e
    aget-object v0, v0, v3

    #@10
    invoke-virtual {p0, v1, v2, v0, p1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    #@13
    return-void
.end method

.method public static setDrawableEnd(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;)V
    .registers 6

    #@0
    .line 195
    invoke-static {p1}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setIntrinsicBounds(Landroid/graphics/drawable/Drawable;)V

    #@3
    .line 196
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    #@6
    move-result-object v0

    #@7
    const/4 v1, 0x0

    #@8
    .line 197
    aget-object v1, v0, v1

    #@a
    const/4 v2, 0x1

    #@b
    aget-object v2, v0, v2

    #@d
    const/4 v3, 0x3

    #@e
    aget-object v0, v0, v3

    #@10
    invoke-virtual {p0, v1, v2, p1, v0}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    #@13
    return-void
.end method

.method public static setDrawableLeft(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;)V
    .registers 6

    #@0
    .line 158
    invoke-static {p1}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setIntrinsicBounds(Landroid/graphics/drawable/Drawable;)V

    #@3
    .line 159
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    #@6
    move-result-object v0

    #@7
    const/4 v1, 0x1

    #@8
    .line 160
    aget-object v1, v0, v1

    #@a
    const/4 v2, 0x2

    #@b
    aget-object v2, v0, v2

    #@d
    const/4 v3, 0x3

    #@e
    aget-object v0, v0, v3

    #@10
    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    #@13
    return-void
.end method

.method public static setDrawableRight(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;)V
    .registers 6

    #@0
    .line 165
    invoke-static {p1}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setIntrinsicBounds(Landroid/graphics/drawable/Drawable;)V

    #@3
    .line 166
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    #@6
    move-result-object v0

    #@7
    const/4 v1, 0x0

    #@8
    .line 167
    aget-object v1, v0, v1

    #@a
    const/4 v2, 0x1

    #@b
    aget-object v2, v0, v2

    #@d
    const/4 v3, 0x3

    #@e
    aget-object v0, v0, v3

    #@10
    invoke-virtual {p0, v1, v2, p1, v0}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    #@13
    return-void
.end method

.method public static setDrawableStart(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;)V
    .registers 6

    #@0
    .line 184
    invoke-static {p1}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setIntrinsicBounds(Landroid/graphics/drawable/Drawable;)V

    #@3
    .line 185
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    #@6
    move-result-object v0

    #@7
    const/4 v1, 0x1

    #@8
    .line 186
    aget-object v1, v0, v1

    #@a
    const/4 v2, 0x2

    #@b
    aget-object v2, v0, v2

    #@d
    const/4 v3, 0x3

    #@e
    aget-object v0, v0, v3

    #@10
    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    #@13
    return-void
.end method

.method public static setDrawableTop(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;)V
    .registers 6

    #@0
    .line 173
    invoke-static {p1}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setIntrinsicBounds(Landroid/graphics/drawable/Drawable;)V

    #@3
    .line 174
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    #@6
    move-result-object v0

    #@7
    const/4 v1, 0x0

    #@8
    .line 175
    aget-object v1, v0, v1

    #@a
    const/4 v2, 0x2

    #@b
    aget-object v2, v0, v2

    #@d
    const/4 v3, 0x3

    #@e
    aget-object v0, v0, v3

    #@10
    invoke-virtual {p0, v1, p1, v2, v0}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    #@13
    return-void
.end method

.method public static setImeActionLabel(Landroid/widget/TextView;I)V
    .registers 3

    #@0
    .line 208
    invoke-virtual {p0}, Landroid/widget/TextView;->getImeActionLabel()Ljava/lang/CharSequence;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setImeActionLabel(Ljava/lang/CharSequence;I)V

    #@7
    return-void
.end method

.method public static setImeActionLabel(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .registers 3

    #@0
    .line 203
    invoke-virtual {p0}, Landroid/widget/TextView;->getImeActionId()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setImeActionLabel(Ljava/lang/CharSequence;I)V

    #@7
    return-void
.end method

.method public static setInputMethod(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .registers 5

    #@0
    const-string v0, "Could not create input method: "

    #@2
    const-string v1, "TextViewBindingAdapters"

    #@4
    .line 215
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@b
    move-result-object v2

    #@c
    .line 216
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@f
    move-result-object v2

    #@10
    check-cast v2, Landroid/text/method/KeyListener;

    #@12
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V
    :try_end_15
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_15} :catch_3a
    .catch Ljava/lang/InstantiationException; {:try_start_4 .. :try_end_15} :catch_28
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_15} :catch_16

    #@15
    goto :goto_4b

    #@16
    :catch_16
    move-exception p0

    #@17
    .line 222
    new-instance v2, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@1c
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object p1

    #@20
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object p1

    #@24
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@27
    goto :goto_4b

    #@28
    :catch_28
    move-exception p0

    #@29
    .line 220
    new-instance v2, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@2e
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@31
    move-result-object p1

    #@32
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object p1

    #@36
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@39
    goto :goto_4b

    #@3a
    :catch_3a
    move-exception p0

    #@3b
    .line 218
    new-instance v2, Ljava/lang/StringBuilder;

    #@3d
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@40
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@43
    move-result-object p1

    #@44
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object p1

    #@48
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@4b
    :goto_4b
    return-void
.end method

.method private static setIntrinsicBounds(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    #@0
    if-eqz p0, :cond_e

    #@2
    .line 145
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@5
    move-result v0

    #@6
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@9
    move-result v1

    #@a
    const/4 v2, 0x0

    #@b
    invoke-virtual {p0, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@e
    :cond_e
    return-void
.end method

.method public static setLineSpacingExtra(Landroid/widget/TextView;F)V
    .registers 3

    #@0
    .line 229
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setLineSpacing(FF)V

    #@7
    return-void
.end method

.method public static setLineSpacingMultiplier(Landroid/widget/TextView;F)V
    .registers 3

    #@0
    .line 238
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineSpacingExtra()F

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setLineSpacing(FF)V

    #@7
    return-void
.end method

.method public static setMaxLength(Landroid/widget/TextView;I)V
    .registers 8

    #@0
    .line 246
    invoke-virtual {p0}, Landroid/widget/TextView;->getFilters()[Landroid/text/InputFilter;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x1

    #@5
    const/4 v2, 0x0

    #@6
    if-nez v0, :cond_12

    #@8
    new-array v0, v1, [Landroid/text/InputFilter;

    #@a
    .line 248
    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    #@c
    invoke-direct {v1, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    #@f
    aput-object v1, v0, v2

    #@11
    goto :goto_49

    #@12
    :cond_12
    move v3, v2

    #@13
    .line 253
    :goto_13
    array-length v4, v0

    #@14
    if-ge v3, v4, :cond_35

    #@16
    .line 254
    aget-object v4, v0, v3

    #@18
    .line 255
    instance-of v5, v4, Landroid/text/InputFilter$LengthFilter;

    #@1a
    if-eqz v5, :cond_32

    #@1c
    .line 259
    check-cast v4, Landroid/text/InputFilter$LengthFilter;

    #@1e
    invoke-virtual {v4}, Landroid/text/InputFilter$LengthFilter;->getMax()I

    #@21
    move-result v4

    #@22
    if-eq v4, p1, :cond_26

    #@24
    move v4, v1

    #@25
    goto :goto_27

    #@26
    :cond_26
    move v4, v2

    #@27
    :goto_27
    if-eqz v4, :cond_30

    #@29
    .line 262
    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    #@2b
    invoke-direct {v4, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    #@2e
    aput-object v4, v0, v3

    #@30
    :cond_30
    move v3, v1

    #@31
    goto :goto_36

    #@32
    :cond_32
    add-int/lit8 v3, v3, 0x1

    #@34
    goto :goto_13

    #@35
    :cond_35
    move v3, v2

    #@36
    :goto_36
    if-nez v3, :cond_49

    #@38
    .line 270
    array-length v3, v0

    #@39
    add-int/2addr v3, v1

    #@3a
    new-array v4, v3, [Landroid/text/InputFilter;

    #@3c
    .line 271
    array-length v5, v0

    #@3d
    invoke-static {v0, v2, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@40
    sub-int/2addr v3, v1

    #@41
    .line 272
    new-instance v0, Landroid/text/InputFilter$LengthFilter;

    #@43
    invoke-direct {v0, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    #@46
    aput-object v0, v4, v3

    #@48
    move-object v0, v4

    #@49
    .line 275
    :cond_49
    :goto_49
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    #@4c
    return-void
.end method

.method public static setNumeric(Landroid/widget/TextView;I)V
    .registers 5

    #@0
    and-int/lit8 v0, p1, 0x3

    #@2
    const/4 v1, 0x1

    #@3
    const/4 v2, 0x0

    #@4
    if-eqz v0, :cond_8

    #@6
    move v0, v1

    #@7
    goto :goto_9

    #@8
    :cond_8
    move v0, v2

    #@9
    :goto_9
    and-int/lit8 p1, p1, 0x5

    #@b
    if-eqz p1, :cond_e

    #@d
    goto :goto_f

    #@e
    :cond_e
    move v1, v2

    #@f
    .line 130
    :goto_f
    invoke-static {v0, v1}, Landroid/text/method/DigitsKeyListener;->getInstance(ZZ)Landroid/text/method/DigitsKeyListener;

    #@12
    move-result-object p1

    #@13
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    #@16
    return-void
.end method

.method public static setPassword(Landroid/widget/TextView;Z)V
    .registers 2

    #@0
    if-eqz p1, :cond_a

    #@2
    .line 281
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    #@5
    move-result-object p1

    #@6
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    #@9
    goto :goto_16

    #@a
    .line 282
    :cond_a
    invoke-virtual {p0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    #@d
    move-result-object p1

    #@e
    instance-of p1, p1, Landroid/text/method/PasswordTransformationMethod;

    #@10
    if-eqz p1, :cond_16

    #@12
    const/4 p1, 0x0

    #@13
    .line 283
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    #@16
    :cond_16
    :goto_16
    return-void
.end method

.method public static setPhoneNumber(Landroid/widget/TextView;Z)V
    .registers 2

    #@0
    if-eqz p1, :cond_a

    #@2
    .line 137
    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    #@5
    move-result-object p1

    #@6
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    #@9
    goto :goto_16

    #@a
    .line 138
    :cond_a
    invoke-virtual {p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    #@d
    move-result-object p1

    #@e
    instance-of p1, p1, Landroid/text/method/DialerKeyListener;

    #@10
    if-eqz p1, :cond_16

    #@12
    const/4 p1, 0x0

    #@13
    .line 139
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    #@16
    :cond_16
    :goto_16
    return-void
.end method

.method public static setShadowColor(Landroid/widget/TextView;I)V
    .registers 5

    #@0
    .line 290
    invoke-virtual {p0}, Landroid/widget/TextView;->getShadowDx()F

    #@3
    move-result v0

    #@4
    .line 291
    invoke-virtual {p0}, Landroid/widget/TextView;->getShadowDy()F

    #@7
    move-result v1

    #@8
    .line 292
    invoke-virtual {p0}, Landroid/widget/TextView;->getShadowRadius()F

    #@b
    move-result v2

    #@c
    .line 293
    invoke-virtual {p0, v2, v0, v1, p1}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    #@f
    return-void
.end method

.method public static setShadowDx(Landroid/widget/TextView;F)V
    .registers 5

    #@0
    .line 300
    invoke-virtual {p0}, Landroid/widget/TextView;->getShadowColor()I

    #@3
    move-result v0

    #@4
    .line 301
    invoke-virtual {p0}, Landroid/widget/TextView;->getShadowDy()F

    #@7
    move-result v1

    #@8
    .line 302
    invoke-virtual {p0}, Landroid/widget/TextView;->getShadowRadius()F

    #@b
    move-result v2

    #@c
    .line 303
    invoke-virtual {p0, v2, p1, v1, v0}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    #@f
    return-void
.end method

.method public static setShadowDy(Landroid/widget/TextView;F)V
    .registers 5

    #@0
    .line 310
    invoke-virtual {p0}, Landroid/widget/TextView;->getShadowColor()I

    #@3
    move-result v0

    #@4
    .line 311
    invoke-virtual {p0}, Landroid/widget/TextView;->getShadowDx()F

    #@7
    move-result v1

    #@8
    .line 312
    invoke-virtual {p0}, Landroid/widget/TextView;->getShadowRadius()F

    #@b
    move-result v2

    #@c
    .line 313
    invoke-virtual {p0, v2, v1, p1, v0}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    #@f
    return-void
.end method

.method public static setShadowRadius(Landroid/widget/TextView;F)V
    .registers 5

    #@0
    .line 320
    invoke-virtual {p0}, Landroid/widget/TextView;->getShadowColor()I

    #@3
    move-result v0

    #@4
    .line 321
    invoke-virtual {p0}, Landroid/widget/TextView;->getShadowDx()F

    #@7
    move-result v1

    #@8
    .line 322
    invoke-virtual {p0}, Landroid/widget/TextView;->getShadowDy()F

    #@b
    move-result v2

    #@c
    .line 323
    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    #@f
    return-void
.end method

.method public static setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .registers 4

    #@0
    .line 69
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@3
    move-result-object v0

    #@4
    if-eq p1, v0, :cond_24

    #@6
    if-nez p1, :cond_f

    #@8
    .line 70
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    #@b
    move-result v1

    #@c
    if-nez v1, :cond_f

    #@e
    goto :goto_24

    #@f
    .line 73
    :cond_f
    instance-of v1, p1, Landroid/text/Spanned;

    #@11
    if-eqz v1, :cond_1a

    #@13
    .line 74
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@16
    move-result v0

    #@17
    if-eqz v0, :cond_21

    #@19
    return-void

    #@1a
    .line 77
    :cond_1a
    invoke-static {p1, v0}, Landroidx/databinding/adapters/TextViewBindingAdapter;->haveContentsChanged(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@1d
    move-result v0

    #@1e
    if-nez v0, :cond_21

    #@20
    return-void

    #@21
    .line 80
    :cond_21
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@24
    :cond_24
    :goto_24
    return-void
.end method

.method public static setTextSize(Landroid/widget/TextView;F)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 329
    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    #@4
    return-void
.end method

.method public static setTextWatcher(Landroid/widget/TextView;Landroidx/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;Landroidx/databinding/adapters/TextViewBindingAdapter$OnTextChanged;Landroidx/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;Landroidx/databinding/InverseBindingListener;)V
    .registers 6

    #@0
    if-nez p1, :cond_a

    #@2
    if-nez p3, :cond_a

    #@4
    if-nez p2, :cond_a

    #@6
    if-nez p4, :cond_a

    #@8
    const/4 p1, 0x0

    #@9
    goto :goto_10

    #@a
    .line 359
    :cond_a
    new-instance v0, Landroidx/databinding/adapters/TextViewBindingAdapter$1;

    #@c
    invoke-direct {v0, p1, p2, p4, p3}, Landroidx/databinding/adapters/TextViewBindingAdapter$1;-><init>(Landroidx/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;Landroidx/databinding/adapters/TextViewBindingAdapter$OnTextChanged;Landroidx/databinding/InverseBindingListener;Landroidx/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;)V

    #@f
    move-object p1, v0

    #@10
    .line 385
    :goto_10
    sget p2, Landroidx/databinding/library/baseAdapters/R$id;->textWatcher:I

    #@12
    invoke-static {p0, p1, p2}, Landroidx/databinding/adapters/ListenerUtil;->trackListener(Landroid/view/View;Ljava/lang/Object;I)Ljava/lang/Object;

    #@15
    move-result-object p2

    #@16
    check-cast p2, Landroid/text/TextWatcher;

    #@18
    if-eqz p2, :cond_1d

    #@1a
    .line 387
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    #@1d
    :cond_1d
    if-eqz p1, :cond_22

    #@1f
    .line 390
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    #@22
    :cond_22
    return-void
.end method
