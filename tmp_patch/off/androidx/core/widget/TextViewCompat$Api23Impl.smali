.class Landroidx/core/widget/TextViewCompat$Api23Impl;
.super Ljava/lang/Object;
.source "TextViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/widget/TextViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api23Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 1228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static getBreakStrategy(Landroid/widget/TextView;)I
    .registers 1

    #@0
    .line 1234
    invoke-virtual {p0}, Landroid/widget/TextView;->getBreakStrategy()I

    #@3
    move-result p0

    #@4
    return p0
.end method

.method static getCompoundDrawableTintList(Landroid/widget/TextView;)Landroid/content/res/ColorStateList;
    .registers 1

    #@0
    .line 1259
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawableTintList()Landroid/content/res/ColorStateList;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method static getCompoundDrawableTintMode(Landroid/widget/TextView;)Landroid/graphics/PorterDuff$Mode;
    .registers 1

    #@0
    .line 1254
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawableTintMode()Landroid/graphics/PorterDuff$Mode;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method static getHyphenationFrequency(Landroid/widget/TextView;)I
    .registers 1

    #@0
    .line 1244
    invoke-virtual {p0}, Landroid/widget/TextView;->getHyphenationFrequency()I

    #@3
    move-result p0

    #@4
    return p0
.end method

.method static setBreakStrategy(Landroid/widget/TextView;I)V
    .registers 2

    #@0
    .line 1239
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setBreakStrategy(I)V

    #@3
    return-void
.end method

.method static setCompoundDrawableTintList(Landroid/widget/TextView;Landroid/content/res/ColorStateList;)V
    .registers 2

    #@0
    .line 1264
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setCompoundDrawableTintList(Landroid/content/res/ColorStateList;)V

    #@3
    return-void
.end method

.method static setCompoundDrawableTintMode(Landroid/widget/TextView;Landroid/graphics/PorterDuff$Mode;)V
    .registers 2

    #@0
    .line 1269
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setCompoundDrawableTintMode(Landroid/graphics/PorterDuff$Mode;)V

    #@3
    return-void
.end method

.method static setHyphenationFrequency(Landroid/widget/TextView;I)V
    .registers 2

    #@0
    .line 1249
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setHyphenationFrequency(I)V

    #@3
    return-void
.end method
