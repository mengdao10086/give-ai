.class Landroidx/core/widget/CheckedTextViewCompat$Api14Impl;
.super Ljava/lang/Object;
.source "CheckedTextViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/widget/CheckedTextViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api14Impl"
.end annotation


# static fields
.field private static sCheckMarkDrawableField:Ljava/lang/reflect/Field;

.field private static sResolved:Z


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static getCheckMarkDrawable(Landroid/widget/CheckedTextView;)Landroid/graphics/drawable/Drawable;
    .registers 5

    #@0
    .line 177
    sget-boolean v0, Landroidx/core/widget/CheckedTextViewCompat$Api14Impl;->sResolved:Z

    #@2
    const-string v1, "CheckedTextViewCompat"

    #@4
    if-nez v0, :cond_1d

    #@6
    const/4 v0, 0x1

    #@7
    .line 179
    :try_start_7
    const-class v2, Landroid/widget/CheckedTextView;

    #@9
    const-string v3, "mCheckMarkDrawable"

    #@b
    .line 180
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@e
    move-result-object v2

    #@f
    sput-object v2, Landroidx/core/widget/CheckedTextViewCompat$Api14Impl;->sCheckMarkDrawableField:Ljava/lang/reflect/Field;

    #@11
    .line 181
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_14
    .catch Ljava/lang/NoSuchFieldException; {:try_start_7 .. :try_end_14} :catch_15

    #@14
    goto :goto_1b

    #@15
    :catch_15
    move-exception v2

    #@16
    const-string v3, "Failed to retrieve mCheckMarkDrawable field"

    #@18
    .line 183
    invoke-static {v1, v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1b
    .line 185
    :goto_1b
    sput-boolean v0, Landroidx/core/widget/CheckedTextViewCompat$Api14Impl;->sResolved:Z

    #@1d
    .line 188
    :cond_1d
    sget-object v0, Landroidx/core/widget/CheckedTextViewCompat$Api14Impl;->sCheckMarkDrawableField:Ljava/lang/reflect/Field;

    #@1f
    const/4 v2, 0x0

    #@20
    if-eqz v0, :cond_31

    #@22
    .line 190
    :try_start_22
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@25
    move-result-object p0

    #@26
    check-cast p0, Landroid/graphics/drawable/Drawable;
    :try_end_28
    .catch Ljava/lang/IllegalAccessException; {:try_start_22 .. :try_end_28} :catch_29

    #@28
    return-object p0

    #@29
    :catch_29
    move-exception p0

    #@2a
    const-string v0, "Failed to get check mark drawable via reflection"

    #@2c
    .line 192
    invoke-static {v1, v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2f
    .line 193
    sput-object v2, Landroidx/core/widget/CheckedTextViewCompat$Api14Impl;->sCheckMarkDrawableField:Ljava/lang/reflect/Field;

    #@31
    :cond_31
    return-object v2
.end method
