.class Landroidx/core/widget/TextViewCompat$Api17Impl;
.super Ljava/lang/Object;
.source "TextViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/widget/TextViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api17Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 1082
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static getCompoundDrawablesRelative(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;
    .registers 1

    #@0
    .line 1111
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method static getLayoutDirection(Landroid/view/View;)I
    .registers 1

    #@0
    .line 1094
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    #@3
    move-result p0

    #@4
    return p0
.end method

.method static getTextDirection(Landroid/view/View;)I
    .registers 1

    #@0
    .line 1126
    invoke-virtual {p0}, Landroid/view/View;->getTextDirection()I

    #@3
    move-result p0

    #@4
    return p0
.end method

.method static getTextLocale(Landroid/widget/TextView;)Ljava/util/Locale;
    .registers 1

    #@0
    .line 1121
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextLocale()Ljava/util/Locale;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method static setCompoundDrawablesRelative(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 5

    #@0
    .line 1089
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    #@3
    return-void
.end method

.method static setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/widget/TextView;IIII)V
    .registers 5

    #@0
    .line 1106
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    #@3
    return-void
.end method

.method static setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 5

    #@0
    .line 1100
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    #@3
    return-void
.end method

.method static setTextDirection(Landroid/view/View;I)V
    .registers 2

    #@0
    .line 1116
    invoke-virtual {p0, p1}, Landroid/view/View;->setTextDirection(I)V

    #@3
    return-void
.end method
