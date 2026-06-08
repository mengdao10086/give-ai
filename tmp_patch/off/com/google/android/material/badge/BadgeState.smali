.class public final Lcom/google/android/material/badge/BadgeState;
.super Ljava/lang/Object;
.source "BadgeState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/badge/BadgeState$State;
    }
.end annotation


# static fields
.field private static final BADGE_RESOURCE_TAG:Ljava/lang/String; = "badge"

.field private static final DEFAULT_MAX_BADGE_CHARACTER_COUNT:I = 0x4


# instance fields
.field final badgeRadius:F

.field final badgeWidePadding:F

.field final badgeWithTextRadius:F

.field private final currentState:Lcom/google/android/material/badge/BadgeState$State;

.field private final overridingState:Lcom/google/android/material/badge/BadgeState$State;


# direct methods
.method constructor <init>(Landroid/content/Context;IIILcom/google/android/material/badge/BadgeState$State;)V
    .registers 9

    #@0
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 68
    new-instance v0, Lcom/google/android/material/badge/BadgeState$State;

    #@5
    invoke-direct {v0}, Lcom/google/android/material/badge/BadgeState$State;-><init>()V

    #@8
    iput-object v0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    #@a
    if-nez p5, :cond_11

    #@c
    .line 81
    new-instance p5, Lcom/google/android/material/badge/BadgeState$State;

    #@e
    invoke-direct {p5}, Lcom/google/android/material/badge/BadgeState$State;-><init>()V

    #@11
    :cond_11
    if-eqz p2, :cond_16

    #@13
    .line 84
    # setter for: Lcom/google/android/material/badge/BadgeState$State;->badgeResId:I
    invoke-static {p5, p2}, Lcom/google/android/material/badge/BadgeState$State;->access$002(Lcom/google/android/material/badge/BadgeState$State;I)I

    #@16
    .line 87
    :cond_16
    # getter for: Lcom/google/android/material/badge/BadgeState$State;->badgeResId:I
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->access$000(Lcom/google/android/material/badge/BadgeState$State;)I

    #@19
    move-result p2

    #@1a
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/material/badge/BadgeState;->generateTypedArray(Landroid/content/Context;III)Landroid/content/res/TypedArray;

    #@1d
    move-result-object p2

    #@1e
    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@21
    move-result-object p3

    #@22
    .line 90
    sget p4, Lcom/google/android/material/R$styleable;->Badge_badgeRadius:I

    #@24
    sget v1, Lcom/google/android/material/R$dimen;->mtrl_badge_radius:I

    #@26
    .line 92
    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@29
    move-result v1

    #@2a
    .line 91
    invoke-virtual {p2, p4, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@2d
    move-result p4

    #@2e
    int-to-float p4, p4

    #@2f
    iput p4, p0, Lcom/google/android/material/badge/BadgeState;->badgeRadius:F

    #@31
    .line 93
    sget p4, Lcom/google/android/material/R$styleable;->Badge_badgeWidePadding:I

    #@33
    sget v1, Lcom/google/android/material/R$dimen;->mtrl_badge_long_text_horizontal_padding:I

    #@35
    .line 96
    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@38
    move-result v1

    #@39
    .line 94
    invoke-virtual {p2, p4, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@3c
    move-result p4

    #@3d
    int-to-float p4, p4

    #@3e
    iput p4, p0, Lcom/google/android/material/badge/BadgeState;->badgeWidePadding:F

    #@40
    .line 97
    sget p4, Lcom/google/android/material/R$styleable;->Badge_badgeWithTextRadius:I

    #@42
    sget v1, Lcom/google/android/material/R$dimen;->mtrl_badge_with_text_radius:I

    #@44
    .line 100
    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@47
    move-result p3

    #@48
    .line 98
    invoke-virtual {p2, p4, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@4b
    move-result p3

    #@4c
    int-to-float p3, p3

    #@4d
    iput p3, p0, Lcom/google/android/material/badge/BadgeState;->badgeWithTextRadius:F

    #@4f
    .line 102
    # getter for: Lcom/google/android/material/badge/BadgeState$State;->alpha:I
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->access$100(Lcom/google/android/material/badge/BadgeState$State;)I

    #@52
    move-result p3

    #@53
    const/4 p4, -0x2

    #@54
    if-ne p3, p4, :cond_59

    #@56
    const/16 p3, 0xff

    #@58
    goto :goto_5d

    #@59
    :cond_59
    # getter for: Lcom/google/android/material/badge/BadgeState$State;->alpha:I
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->access$100(Lcom/google/android/material/badge/BadgeState$State;)I

    #@5c
    move-result p3

    #@5d
    :goto_5d
    # setter for: Lcom/google/android/material/badge/BadgeState$State;->alpha:I
    invoke-static {v0, p3}, Lcom/google/android/material/badge/BadgeState$State;->access$102(Lcom/google/android/material/badge/BadgeState$State;I)I

    #@60
    .line 105
    # getter for: Lcom/google/android/material/badge/BadgeState$State;->contentDescriptionNumberless:Ljava/lang/CharSequence;
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->access$200(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/CharSequence;

    #@63
    move-result-object p3

    #@64
    if-nez p3, :cond_6d

    #@66
    .line 106
    sget p3, Lcom/google/android/material/R$string;->mtrl_badge_numberless_content_description:I

    #@68
    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@6b
    move-result-object p3

    #@6c
    goto :goto_71

    #@6d
    .line 107
    :cond_6d
    # getter for: Lcom/google/android/material/badge/BadgeState$State;->contentDescriptionNumberless:Ljava/lang/CharSequence;
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->access$200(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/CharSequence;

    #@70
    move-result-object p3

    #@71
    .line 104
    :goto_71
    # setter for: Lcom/google/android/material/badge/BadgeState$State;->contentDescriptionNumberless:Ljava/lang/CharSequence;
    invoke-static {v0, p3}, Lcom/google/android/material/badge/BadgeState$State;->access$202(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@74
    .line 110
    # getter for: Lcom/google/android/material/badge/BadgeState$State;->contentDescriptionQuantityStrings:I
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->access$300(Lcom/google/android/material/badge/BadgeState$State;)I

    #@77
    move-result p3

    #@78
    if-nez p3, :cond_7d

    #@7a
    .line 111
    sget p3, Lcom/google/android/material/R$plurals;->mtrl_badge_content_description:I

    #@7c
    goto :goto_81

    #@7d
    .line 112
    :cond_7d
    # getter for: Lcom/google/android/material/badge/BadgeState$State;->contentDescriptionQuantityStrings:I
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->access$300(Lcom/google/android/material/badge/BadgeState$State;)I

    #@80
    move-result p3

    #@81
    .line 109
    :goto_81
    # setter for: Lcom/google/android/material/badge/BadgeState$State;->contentDescriptionQuantityStrings:I
    invoke-static {v0, p3}, Lcom/google/android/material/badge/BadgeState$State;->access$302(Lcom/google/android/material/badge/BadgeState$State;I)I

    #@84
    .line 115
    # getter for: Lcom/google/android/material/badge/BadgeState$State;->contentDescriptionExceedsMaxBadgeNumberRes:I
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->access$400(Lcom/google/android/material/badge/BadgeState$State;)I

    #@87
    move-result p3

    #@88
    if-nez p3, :cond_8d

    #@8a
    .line 116
    sget p3, Lcom/google/android/material/R$string;->mtrl_exceed_max_badge_number_content_description:I

    #@8c
    goto :goto_91

    #@8d
    .line 117
    :cond_8d
    # getter for: Lcom/google/android/material/badge/BadgeState$State;->contentDescriptionExceedsMaxBadgeNumberRes:I
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->access$400(Lcom/google/android/material/badge/BadgeState$State;)I

    #@90
    move-result p3

    #@91
    .line 114
    :goto_91
    # setter for: Lcom/google/android/material/badge/BadgeState$State;->contentDescriptionExceedsMaxBadgeNumberRes:I
    invoke-static {v0, p3}, Lcom/google/android/material/badge/BadgeState$State;->access$402(Lcom/google/android/material/badge/BadgeState$State;I)I

    #@94
    .line 119
    # getter for: Lcom/google/android/material/badge/BadgeState$State;->isVisible:Ljava/lang/Boolean;
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->access$500(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Boolean;

    #@97
    move-result-object p3

    #@98
    const/4 v1, 0x0

    #@99
    if-eqz p3, :cond_a8

    #@9b
    # getter for: Lcom/google/android/material/badge/BadgeState$State;->isVisible:Ljava/lang/Boolean;
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->access$500(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Boolean;

    #@9e
    move-result-object p3

    #@9f
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    #@a2
    move-result p3

    #@a3
    if-eqz p3, :cond_a6

    #@a5
    goto :goto_a8

    #@a6
    :cond_a6
    move p3, v1

    #@a7
    goto :goto_a9

    #@a8
    :cond_a8
    :goto_a8
    const/4 p3, 0x1

    #@a9
    :goto_a9
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@ac
    move-result-object p3

    #@ad
    # setter for: Lcom/google/android/material/badge/BadgeState$State;->isVisible:Ljava/lang/Boolean;
    invoke-static {v0, p3}, Lcom/google/android/material/badge/BadgeState$State;->access$502(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    #@b0
    .line 122
    # getter for: Lcom/google/android/material/badge/BadgeState$State;->maxCharacterCount:I
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->access$600(Lcom/google/android/material/badge/BadgeState$State;)I

    #@b3
    move-result p3

    #@b4
    if-ne p3, p4, :cond_be

    #@b6
    .line 123
    sget p3, Lcom/google/android/material/R$styleable;->Badge_maxCharacterCount:I

    #@b8
    const/4 v2, 0x4

    #@b9
    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    #@bc
    move-result p3

    #@bd
    goto :goto_c2

    #@be
    .line 124
    :cond_be
    # getter for: Lcom/google/android/material/badge/BadgeState$State;->maxCharacterCount:I
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->access$600(Lcom/google/android/material/badge/BadgeState$State;)I

    #@c1
    move-result p3

    #@c2
    .line 121
    :goto_c2
    # setter for: Lcom/google/android/material/badge/BadgeState$State;->maxCharacterCount:I
    invoke-static {v0, p3}, Lcom/google/android/material/badge/BadgeState$State;->access$602(Lcom/google/android/material/badge/BadgeState$State;I)I

    #@c5
    .line 129
    # getter for: Lcom/google/android/material/badge/BadgeState$State;->number:I
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->access$700(Lcom/google/android/material/badge/BadgeState$State;)I

    #@c8
    move-result p3

    #@c9
    if-eq p3, p4, :cond_d3

    #@cb
    .line 130
    # getter for: Lcom/google/android/material/badge/BadgeState$State;->number:I
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->access$700(Lcom/google/android/material/badge/BadgeState$State;)I

    #@ce
    move-result p3

    #@cf
    # setter for: Lcom/google/android/material/badge/BadgeState$State;->number:I
    invoke-static {v0, p3}, Lcom/google/android/material/badge/BadgeState$State;->access$702(Lcom/google/android/material/badge/BadgeState$State;I)I

    #@d2
    goto :goto_e9

    #@d3
    .line 131
    :cond_d3
    sget p3, Lcom/google/android/material/R$styleable;->Badge_number:I

    #@d5
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@d8
    move-result p3

    #@d9
    if-eqz p3, :cond_e5

    #@db
    .line 132
    sget p3, Lcom/google/android/material/R$styleable;->Badge_number:I

    #@dd
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    #@e0
    move-result p3

    #@e1
    # setter for: Lcom/google/android/material/badge/BadgeState$State;->number:I
    invoke-static {v0, p3}, Lcom/google/android/material/badge/BadgeState$State;->access$702(Lcom/google/android/material/badge/BadgeState$State;I)I

    #@e4
    goto :goto_e9

    #@e5
    :cond_e5
    const/4 p3, -0x1

    #@e6
    .line 134
    # setter for: Lcom/google/android/material/badge/BadgeState$State;->number:I
    invoke-static {v0, p3}, Lcom/google/android/material/badge/BadgeState$State;->access$702(Lcom/google/android/material/badge/BadgeState$State;I)I

    #@e9
    .line 138
    :goto_e9
    # getter for: Lcom/google/android/material/badge/BadgeState$State;->backgroundColor:Ljava/lang/Integer;
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->access$800(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    #@ec
    move-result-object p3

    #@ed
    if-nez p3, :cond_f6

    #@ef
    .line 139
    sget p3, Lcom/google/android/material/R$styleable;->Badge_backgroundColor:I

    #@f1
    invoke-static {p1, p2, p3}, Lcom/google/android/material/badge/BadgeState;->readColorFromAttributes(Landroid/content/Context;Landroid/content/res/TypedArray;I)I

    #@f4
    move-result p3

    #@f5
    goto :goto_fe

    #@f6
    .line 140
    :cond_f6
    # getter for: Lcom/google/android/material/badge/BadgeState$State;->backgroundColor:Ljava/lang/Integer;
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->access$800(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    #@f9
    move-result-object p3

    #@fa
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    #@fd
    move-result p3

    #@fe
    .line 138
    :goto_fe
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@101
    move-result-object p3

    #@102
    .line 137
    # setter for: Lcom/google/android/material/badge/BadgeState$State;->backgroundColor:Ljava/lang/Integer;
    invoke-static {v0, p3}, Lcom/google/android/material/badge/BadgeState$State;->access$802(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;

    #@105
    .line 144
    # getter for: Lcom/google/android/material/badge/BadgeState$State;->badgeTextColor:Ljava/lang/Integer;
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->access$900(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    #@108
    move-result-object p3

    #@109
    if-eqz p3, :cond_113

    #@10b
    .line 145
    # getter for: Lcom/google/android/material/badge/BadgeState$State;->badgeTextColor:Ljava/lang/Integer;
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->access$900(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    #@10e
    move-result-object p1

    #@10f
    # setter for: Lcom/google/android/material/badge/BadgeState$State;->badgeTextColor:Ljava/lang/Integer;
    invoke-static {v0, p1}, Lcom/google/android/material/badge/BadgeState$State;->access$902(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;

    #@112
    goto :goto_13f

    #@113
    .line 146
    :cond_113
    sget p3, Lcom/google/android/material/R$styleable;->Badge_badgeTextColor:I

    #@115
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@118
    move-result p3

    #@119
    if-eqz p3, :cond_129

    #@11b
    .line 147
    sget p3, Lcom/google/android/material/R$styleable;->Badge_badgeTextColor:I

    #@11d
    .line 148
    invoke-static {p1, p2, p3}, Lcom/google/android/material/badge/BadgeState;->readColorFromAttributes(Landroid/content/Context;Landroid/content/res/TypedArray;I)I

    #@120
    move-result p1

    #@121
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@124
    move-result-object p1

    #@125
    .line 147
    # setter for: Lcom/google/android/material/badge/BadgeState$State;->badgeTextColor:Ljava/lang/Integer;
    invoke-static {v0, p1}, Lcom/google/android/material/badge/BadgeState$State;->access$902(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;

    #@128
    goto :goto_13f

    #@129
    .line 150
    :cond_129
    new-instance p3, Lcom/google/android/material/resources/TextAppearance;

    #@12b
    sget p4, Lcom/google/android/material/R$style;->TextAppearance_MaterialComponents_Badge:I

    #@12d
    invoke-direct {p3, p1, p4}, Lcom/google/android/material/resources/TextAppearance;-><init>(Landroid/content/Context;I)V

    #@130
    .line 152
    invoke-virtual {p3}, Lcom/google/android/material/resources/TextAppearance;->getTextColor()Landroid/content/res/ColorStateList;

    #@133
    move-result-object p1

    #@134
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    #@137
    move-result p1

    #@138
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@13b
    move-result-object p1

    #@13c
    # setter for: Lcom/google/android/material/badge/BadgeState$State;->badgeTextColor:Ljava/lang/Integer;
    invoke-static {v0, p1}, Lcom/google/android/material/badge/BadgeState$State;->access$902(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;

    #@13f
    .line 156
    :goto_13f
    # getter for: Lcom/google/android/material/badge/BadgeState$State;->badgeGravity:Ljava/lang/Integer;
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->access$1000(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    #@142
    move-result-object p1

    #@143
    if-nez p1, :cond_14f

    #@145
    .line 157
    sget p1, Lcom/google/android/material/R$styleable;->Badge_badgeGravity:I

    #@147
    const p3, 0x800035

    #@14a
    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    #@14d
    move-result p1

    #@14e
    goto :goto_157

    #@14f
    .line 158
    :cond_14f
    # getter for: Lcom/google/android/material/badge/BadgeState$State;->badgeGravity:Ljava/lang/Integer;
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->access$1000(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    #@152
    move-result-object p1

    #@153
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    #@156
    move-result p1

    #@157
    .line 156
    :goto_157
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@15a
    move-result-object p1

    #@15b
    .line 155
    # setter for: Lcom/google/android/material/badge/BadgeState$State;->badgeGravity:Ljava/lang/Integer;
    invoke-static {v0, p1}, Lcom/google/android/material/badge/BadgeState$State;->access$1002(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;

    #@15e
    .line 161
    # getter for: Lcom/google/android/material/badge/BadgeState$State;->horizontalOffsetWithoutText:Ljava/lang/Integer;
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->access$1100(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    #@161
    move-result-object p1

    #@162
    if-nez p1, :cond_16b

    #@164
    .line 162
    sget p1, Lcom/google/android/material/R$styleable;->Badge_horizontalOffset:I

    #@166
    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@169
    move-result p1

    #@16a
    goto :goto_173

    #@16b
    .line 163
    :cond_16b
    # getter for: Lcom/google/android/material/badge/BadgeState$State;->horizontalOffsetWithoutText:Ljava/lang/Integer;
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->access$1100(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    #@16e
    move-result-object p1

    #@16f
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    #@172
    move-result p1

    #@173
    .line 161
    :goto_173
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@176
    move-result-object p1

    #@177
    .line 160
    # setter for: Lcom/google/android/material/badge/BadgeState$State;->horizontalOffsetWithoutText:Ljava/lang/Integer;
    invoke-static {v0, p1}, Lcom/google/android/material/badge/BadgeState$State;->access$1102(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;

    #@17a
    .line 166
    # getter for: Lcom/google/android/material/badge/BadgeState$State;->verticalOffsetWithoutText:Ljava/lang/Integer;
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->access$1200(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    #@17d
    move-result-object p1

    #@17e
    if-nez p1, :cond_187

    #@180
    .line 167
    sget p1, Lcom/google/android/material/R$styleable;->Badge_verticalOffset:I

    #@182
    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@185
    move-result p1

    #@186
    goto :goto_18f

    #@187
    .line 168
    :cond_187
    # getter for: Lcom/google/android/material/badge/BadgeState$State;->verticalOffsetWithoutText:Ljava/lang/Integer;
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->access$1200(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    #@18a
    move-result-object p1

    #@18b
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    #@18e
    move-result p1

    #@18f
    .line 166
    :goto_18f
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@192
    move-result-object p1

    #@193
    .line 165
    # setter for: Lcom/google/android/material/badge/BadgeState$State;->verticalOffsetWithoutText:Ljava/lang/Integer;
    invoke-static {v0, p1}, Lcom/google/android/material/badge/BadgeState$State;->access$1202(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;

    #@196
    .line 174
    # getter for: Lcom/google/android/material/badge/BadgeState$State;->horizontalOffsetWithText:Ljava/lang/Integer;
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->access$1300(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    #@199
    move-result-object p1

    #@19a
    if-nez p1, :cond_1ab

    #@19c
    .line 175
    sget p1, Lcom/google/android/material/R$styleable;->Badge_horizontalOffsetWithText:I

    #@19e
    .line 177
    # getter for: Lcom/google/android/material/badge/BadgeState$State;->horizontalOffsetWithoutText:Ljava/lang/Integer;
    invoke-static {v0}, Lcom/google/android/material/badge/BadgeState$State;->access$1100(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    #@1a1
    move-result-object p3

    #@1a2
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    #@1a5
    move-result p3

    #@1a6
    .line 175
    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@1a9
    move-result p1

    #@1aa
    goto :goto_1b3

    #@1ab
    .line 178
    :cond_1ab
    # getter for: Lcom/google/android/material/badge/BadgeState$State;->horizontalOffsetWithText:Ljava/lang/Integer;
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->access$1300(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    #@1ae
    move-result-object p1

    #@1af
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    #@1b2
    move-result p1

    #@1b3
    .line 174
    :goto_1b3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1b6
    move-result-object p1

    #@1b7
    .line 173
    # setter for: Lcom/google/android/material/badge/BadgeState$State;->horizontalOffsetWithText:Ljava/lang/Integer;
    invoke-static {v0, p1}, Lcom/google/android/material/badge/BadgeState$State;->access$1302(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;

    #@1ba
    .line 181
    # getter for: Lcom/google/android/material/badge/BadgeState$State;->verticalOffsetWithText:Ljava/lang/Integer;
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->access$1400(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    #@1bd
    move-result-object p1

    #@1be
    if-nez p1, :cond_1cf

    #@1c0
    .line 182
    sget p1, Lcom/google/android/material/R$styleable;->Badge_verticalOffsetWithText:I

    #@1c2
    .line 183
    # getter for: Lcom/google/android/material/badge/BadgeState$State;->verticalOffsetWithoutText:Ljava/lang/Integer;
    invoke-static {v0}, Lcom/google/android/material/badge/BadgeState$State;->access$1200(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    #@1c5
    move-result-object p3

    #@1c6
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    #@1c9
    move-result p3

    #@1ca
    .line 182
    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@1cd
    move-result p1

    #@1ce
    goto :goto_1d7

    #@1cf
    .line 184
    :cond_1cf
    # getter for: Lcom/google/android/material/badge/BadgeState$State;->verticalOffsetWithText:Ljava/lang/Integer;
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->access$1400(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    #@1d2
    move-result-object p1

    #@1d3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    #@1d6
    move-result p1

    #@1d7
    .line 181
    :goto_1d7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1da
    move-result-object p1

    #@1db
    .line 180
    # setter for: Lcom/google/android/material/badge/BadgeState$State;->verticalOffsetWithText:Ljava/lang/Integer;
    invoke-static {v0, p1}, Lcom/google/android/material/badge/BadgeState$State;->access$1402(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;

    #@1de
    .line 187
    # getter for: Lcom/google/android/material/badge/BadgeState$State;->additionalHorizontalOffset:Ljava/lang/Integer;
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->access$1500(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    #@1e1
    move-result-object p1

    #@1e2
    if-nez p1, :cond_1e6

    #@1e4
    move p1, v1

    #@1e5
    goto :goto_1ee

    #@1e6
    :cond_1e6
    # getter for: Lcom/google/android/material/badge/BadgeState$State;->additionalHorizontalOffset:Ljava/lang/Integer;
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->access$1500(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    #@1e9
    move-result-object p1

    #@1ea
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    #@1ed
    move-result p1

    #@1ee
    :goto_1ee
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1f1
    move-result-object p1

    #@1f2
    .line 186
    # setter for: Lcom/google/android/material/badge/BadgeState$State;->additionalHorizontalOffset:Ljava/lang/Integer;
    invoke-static {v0, p1}, Lcom/google/android/material/badge/BadgeState$State;->access$1502(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;

    #@1f5
    .line 190
    # getter for: Lcom/google/android/material/badge/BadgeState$State;->additionalVerticalOffset:Ljava/lang/Integer;
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->access$1600(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    #@1f8
    move-result-object p1

    #@1f9
    if-nez p1, :cond_1fc

    #@1fb
    goto :goto_204

    #@1fc
    :cond_1fc
    # getter for: Lcom/google/android/material/badge/BadgeState$State;->additionalVerticalOffset:Ljava/lang/Integer;
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->access$1600(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    #@1ff
    move-result-object p1

    #@200
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    #@203
    move-result v1

    #@204
    :goto_204
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@207
    move-result-object p1

    #@208
    .line 189
    # setter for: Lcom/google/android/material/badge/BadgeState$State;->additionalVerticalOffset:Ljava/lang/Integer;
    invoke-static {v0, p1}, Lcom/google/android/material/badge/BadgeState$State;->access$1602(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;

    #@20b
    .line 192
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    #@20e
    .line 194
    # getter for: Lcom/google/android/material/badge/BadgeState$State;->numberLocale:Ljava/util/Locale;
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->access$1700(Lcom/google/android/material/badge/BadgeState$State;)Ljava/util/Locale;

    #@211
    move-result-object p1

    #@212
    if-nez p1, :cond_21e

    #@214
    .line 197
    sget-object p1, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    #@216
    invoke-static {p1}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    #@219
    move-result-object p1

    #@21a
    .line 195
    # setter for: Lcom/google/android/material/badge/BadgeState$State;->numberLocale:Ljava/util/Locale;
    invoke-static {v0, p1}, Lcom/google/android/material/badge/BadgeState$State;->access$1702(Lcom/google/android/material/badge/BadgeState$State;Ljava/util/Locale;)Ljava/util/Locale;

    #@21d
    goto :goto_225

    #@21e
    .line 200
    :cond_21e
    # getter for: Lcom/google/android/material/badge/BadgeState$State;->numberLocale:Ljava/util/Locale;
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->access$1700(Lcom/google/android/material/badge/BadgeState$State;)Ljava/util/Locale;

    #@221
    move-result-object p1

    #@222
    # setter for: Lcom/google/android/material/badge/BadgeState$State;->numberLocale:Ljava/util/Locale;
    invoke-static {v0, p1}, Lcom/google/android/material/badge/BadgeState$State;->access$1702(Lcom/google/android/material/badge/BadgeState$State;Ljava/util/Locale;)Ljava/util/Locale;

    #@225
    .line 203
    :goto_225
    iput-object p5, p0, Lcom/google/android/material/badge/BadgeState;->overridingState:Lcom/google/android/material/badge/BadgeState$State;

    #@227
    return-void
.end method

.method private generateTypedArray(Landroid/content/Context;III)Landroid/content/res/TypedArray;
    .registers 12

    #@0
    const/4 v0, 0x0

    #@1
    if-eqz p2, :cond_f

    #@3
    const-string v1, "badge"

    #@5
    .line 214
    invoke-static {p1, p2, v1}, Lcom/google/android/material/drawable/DrawableUtils;->parseDrawableXml(Landroid/content/Context;ILjava/lang/CharSequence;)Landroid/util/AttributeSet;

    #@8
    move-result-object p2

    #@9
    .line 215
    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    #@c
    move-result v1

    #@d
    move-object v2, p2

    #@e
    goto :goto_12

    #@f
    :cond_f
    const/4 p2, 0x0

    #@10
    move-object v2, p2

    #@11
    move v1, v0

    #@12
    :goto_12
    if-nez v1, :cond_16

    #@14
    move v5, p4

    #@15
    goto :goto_17

    #@16
    :cond_16
    move v5, v1

    #@17
    .line 221
    :goto_17
    sget-object v3, Lcom/google/android/material/R$styleable;->Badge:[I

    #@19
    new-array v6, v0, [I

    #@1b
    move-object v1, p1

    #@1c
    move v4, p3

    #@1d
    invoke-static/range {v1 .. v6}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    #@20
    move-result-object p1

    #@21
    return-object p1
.end method

.method private static readColorFromAttributes(Landroid/content/Context;Landroid/content/res/TypedArray;I)I
    .registers 3

    #@0
    .line 403
    invoke-static {p0, p1, p2}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    #@3
    move-result-object p0

    #@4
    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    #@7
    move-result p0

    #@8
    return p0
.end method


# virtual methods
.method clearNumber()V
    .registers 2

    #@0
    const/4 v0, -0x1

    #@1
    .line 252
    invoke-virtual {p0, v0}, Lcom/google/android/material/badge/BadgeState;->setNumber(I)V

    #@4
    return-void
.end method

.method getAdditionalHorizontalOffset()I
    .registers 2

    #@0
    .line 345
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    #@2
    # getter for: Lcom/google/android/material/badge/BadgeState$State;->additionalHorizontalOffset:Ljava/lang/Integer;
    invoke-static {v0}, Lcom/google/android/material/badge/BadgeState$State;->access$1500(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method getAdditionalVerticalOffset()I
    .registers 2

    #@0
    .line 355
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    #@2
    # getter for: Lcom/google/android/material/badge/BadgeState$State;->additionalVerticalOffset:Ljava/lang/Integer;
    invoke-static {v0}, Lcom/google/android/material/badge/BadgeState$State;->access$1600(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method getAlpha()I
    .registers 2

    #@0
    .line 256
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    #@2
    # getter for: Lcom/google/android/material/badge/BadgeState$State;->alpha:I
    invoke-static {v0}, Lcom/google/android/material/badge/BadgeState$State;->access$100(Lcom/google/android/material/badge/BadgeState$State;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method getBackgroundColor()I
    .registers 2

    #@0
    .line 275
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    #@2
    # getter for: Lcom/google/android/material/badge/BadgeState$State;->backgroundColor:Ljava/lang/Integer;
    invoke-static {v0}, Lcom/google/android/material/badge/BadgeState$State;->access$800(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method getBadgeGravity()I
    .registers 2

    #@0
    .line 295
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    #@2
    # getter for: Lcom/google/android/material/badge/BadgeState$State;->badgeGravity:Ljava/lang/Integer;
    invoke-static {v0}, Lcom/google/android/material/badge/BadgeState$State;->access$1000(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method getBadgeTextColor()I
    .registers 2

    #@0
    .line 285
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    #@2
    # getter for: Lcom/google/android/material/badge/BadgeState$State;->badgeTextColor:Ljava/lang/Integer;
    invoke-static {v0}, Lcom/google/android/material/badge/BadgeState$State;->access$900(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method getContentDescriptionExceedsMaxBadgeNumberStringResource()I
    .registers 2

    #@0
    .line 384
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    #@2
    # getter for: Lcom/google/android/material/badge/BadgeState$State;->contentDescriptionExceedsMaxBadgeNumberRes:I
    invoke-static {v0}, Lcom/google/android/material/badge/BadgeState$State;->access$400(Lcom/google/android/material/badge/BadgeState$State;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method getContentDescriptionNumberless()Ljava/lang/CharSequence;
    .registers 2

    #@0
    .line 364
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    #@2
    # getter for: Lcom/google/android/material/badge/BadgeState$State;->contentDescriptionNumberless:Ljava/lang/CharSequence;
    invoke-static {v0}, Lcom/google/android/material/badge/BadgeState$State;->access$200(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/CharSequence;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method getContentDescriptionQuantityStrings()I
    .registers 2

    #@0
    .line 374
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    #@2
    # getter for: Lcom/google/android/material/badge/BadgeState$State;->contentDescriptionQuantityStrings:I
    invoke-static {v0}, Lcom/google/android/material/badge/BadgeState$State;->access$300(Lcom/google/android/material/badge/BadgeState$State;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method getHorizontalOffsetWithText()I
    .registers 2

    #@0
    .line 325
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    #@2
    # getter for: Lcom/google/android/material/badge/BadgeState$State;->horizontalOffsetWithText:Ljava/lang/Integer;
    invoke-static {v0}, Lcom/google/android/material/badge/BadgeState$State;->access$1300(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method getHorizontalOffsetWithoutText()I
    .registers 2

    #@0
    .line 305
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    #@2
    # getter for: Lcom/google/android/material/badge/BadgeState$State;->horizontalOffsetWithoutText:Ljava/lang/Integer;
    invoke-static {v0}, Lcom/google/android/material/badge/BadgeState$State;->access$1100(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method getMaxCharacterCount()I
    .registers 2

    #@0
    .line 265
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    #@2
    # getter for: Lcom/google/android/material/badge/BadgeState$State;->maxCharacterCount:I
    invoke-static {v0}, Lcom/google/android/material/badge/BadgeState$State;->access$600(Lcom/google/android/material/badge/BadgeState$State;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method getNumber()I
    .registers 2

    #@0
    .line 243
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    #@2
    # getter for: Lcom/google/android/material/badge/BadgeState$State;->number:I
    invoke-static {v0}, Lcom/google/android/material/badge/BadgeState$State;->access$700(Lcom/google/android/material/badge/BadgeState$State;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method getNumberLocale()Ljava/util/Locale;
    .registers 2

    #@0
    .line 393
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    #@2
    # getter for: Lcom/google/android/material/badge/BadgeState$State;->numberLocale:Ljava/util/Locale;
    invoke-static {v0}, Lcom/google/android/material/badge/BadgeState$State;->access$1700(Lcom/google/android/material/badge/BadgeState$State;)Ljava/util/Locale;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method getOverridingState()Lcom/google/android/material/badge/BadgeState$State;
    .registers 2

    #@0
    .line 226
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->overridingState:Lcom/google/android/material/badge/BadgeState$State;

    #@2
    return-object v0
.end method

.method getVerticalOffsetWithText()I
    .registers 2

    #@0
    .line 335
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    #@2
    # getter for: Lcom/google/android/material/badge/BadgeState$State;->verticalOffsetWithText:Ljava/lang/Integer;
    invoke-static {v0}, Lcom/google/android/material/badge/BadgeState$State;->access$1400(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method getVerticalOffsetWithoutText()I
    .registers 2

    #@0
    .line 315
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    #@2
    # getter for: Lcom/google/android/material/badge/BadgeState$State;->verticalOffsetWithoutText:Ljava/lang/Integer;
    invoke-static {v0}, Lcom/google/android/material/badge/BadgeState$State;->access$1200(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method hasNumber()Z
    .registers 3

    #@0
    .line 239
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    #@2
    # getter for: Lcom/google/android/material/badge/BadgeState$State;->number:I
    invoke-static {v0}, Lcom/google/android/material/badge/BadgeState$State;->access$700(Lcom/google/android/material/badge/BadgeState$State;)I

    #@5
    move-result v0

    #@6
    const/4 v1, -0x1

    #@7
    if-eq v0, v1, :cond_b

    #@9
    const/4 v0, 0x1

    #@a
    goto :goto_c

    #@b
    :cond_b
    const/4 v0, 0x0

    #@c
    :goto_c
    return v0
.end method

.method isVisible()Z
    .registers 2

    #@0
    .line 230
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    #@2
    # getter for: Lcom/google/android/material/badge/BadgeState$State;->isVisible:Ljava/lang/Boolean;
    invoke-static {v0}, Lcom/google/android/material/badge/BadgeState$State;->access$500(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Boolean;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method setAdditionalHorizontalOffset(I)V
    .registers 4

    #@0
    .line 349
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->overridingState:Lcom/google/android/material/badge/BadgeState$State;

    #@2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5
    move-result-object v1

    #@6
    # setter for: Lcom/google/android/material/badge/BadgeState$State;->additionalHorizontalOffset:Ljava/lang/Integer;
    invoke-static {v0, v1}, Lcom/google/android/material/badge/BadgeState$State;->access$1502(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;

    #@9
    .line 350
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    #@b
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@e
    move-result-object p1

    #@f
    # setter for: Lcom/google/android/material/badge/BadgeState$State;->additionalHorizontalOffset:Ljava/lang/Integer;
    invoke-static {v0, p1}, Lcom/google/android/material/badge/BadgeState$State;->access$1502(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;

    #@12
    return-void
.end method

.method setAdditionalVerticalOffset(I)V
    .registers 4

    #@0
    .line 359
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->overridingState:Lcom/google/android/material/badge/BadgeState$State;

    #@2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5
    move-result-object v1

    #@6
    # setter for: Lcom/google/android/material/badge/BadgeState$State;->additionalVerticalOffset:Ljava/lang/Integer;
    invoke-static {v0, v1}, Lcom/google/android/material/badge/BadgeState$State;->access$1602(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;

    #@9
    .line 360
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    #@b
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@e
    move-result-object p1

    #@f
    # setter for: Lcom/google/android/material/badge/BadgeState$State;->additionalVerticalOffset:Ljava/lang/Integer;
    invoke-static {v0, p1}, Lcom/google/android/material/badge/BadgeState$State;->access$1602(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;

    #@12
    return-void
.end method

.method setAlpha(I)V
    .registers 3

    #@0
    .line 260
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->overridingState:Lcom/google/android/material/badge/BadgeState$State;

    #@2
    # setter for: Lcom/google/android/material/badge/BadgeState$State;->alpha:I
    invoke-static {v0, p1}, Lcom/google/android/material/badge/BadgeState$State;->access$102(Lcom/google/android/material/badge/BadgeState$State;I)I

    #@5
    .line 261
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    #@7
    # setter for: Lcom/google/android/material/badge/BadgeState$State;->alpha:I
    invoke-static {v0, p1}, Lcom/google/android/material/badge/BadgeState$State;->access$102(Lcom/google/android/material/badge/BadgeState$State;I)I

    #@a
    return-void
.end method

.method setBackgroundColor(I)V
    .registers 4

    #@0
    .line 279
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->overridingState:Lcom/google/android/material/badge/BadgeState$State;

    #@2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5
    move-result-object v1

    #@6
    # setter for: Lcom/google/android/material/badge/BadgeState$State;->backgroundColor:Ljava/lang/Integer;
    invoke-static {v0, v1}, Lcom/google/android/material/badge/BadgeState$State;->access$802(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;

    #@9
    .line 280
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    #@b
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@e
    move-result-object p1

    #@f
    # setter for: Lcom/google/android/material/badge/BadgeState$State;->backgroundColor:Ljava/lang/Integer;
    invoke-static {v0, p1}, Lcom/google/android/material/badge/BadgeState$State;->access$802(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;

    #@12
    return-void
.end method

.method setBadgeGravity(I)V
    .registers 4

    #@0
    .line 299
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->overridingState:Lcom/google/android/material/badge/BadgeState$State;

    #@2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5
    move-result-object v1

    #@6
    # setter for: Lcom/google/android/material/badge/BadgeState$State;->badgeGravity:Ljava/lang/Integer;
    invoke-static {v0, v1}, Lcom/google/android/material/badge/BadgeState$State;->access$1002(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;

    #@9
    .line 300
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    #@b
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@e
    move-result-object p1

    #@f
    # setter for: Lcom/google/android/material/badge/BadgeState$State;->badgeGravity:Ljava/lang/Integer;
    invoke-static {v0, p1}, Lcom/google/android/material/badge/BadgeState$State;->access$1002(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;

    #@12
    return-void
.end method

.method setBadgeTextColor(I)V
    .registers 4

    #@0
    .line 289
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->overridingState:Lcom/google/android/material/badge/BadgeState$State;

    #@2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5
    move-result-object v1

    #@6
    # setter for: Lcom/google/android/material/badge/BadgeState$State;->badgeTextColor:Ljava/lang/Integer;
    invoke-static {v0, v1}, Lcom/google/android/material/badge/BadgeState$State;->access$902(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;

    #@9
    .line 290
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    #@b
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@e
    move-result-object p1

    #@f
    # setter for: Lcom/google/android/material/badge/BadgeState$State;->badgeTextColor:Ljava/lang/Integer;
    invoke-static {v0, p1}, Lcom/google/android/material/badge/BadgeState$State;->access$902(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;

    #@12
    return-void
.end method

.method setContentDescriptionExceedsMaxBadgeNumberStringResource(I)V
    .registers 3

    #@0
    .line 388
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->overridingState:Lcom/google/android/material/badge/BadgeState$State;

    #@2
    # setter for: Lcom/google/android/material/badge/BadgeState$State;->contentDescriptionExceedsMaxBadgeNumberRes:I
    invoke-static {v0, p1}, Lcom/google/android/material/badge/BadgeState$State;->access$402(Lcom/google/android/material/badge/BadgeState$State;I)I

    #@5
    .line 389
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    #@7
    # setter for: Lcom/google/android/material/badge/BadgeState$State;->contentDescriptionExceedsMaxBadgeNumberRes:I
    invoke-static {v0, p1}, Lcom/google/android/material/badge/BadgeState$State;->access$402(Lcom/google/android/material/badge/BadgeState$State;I)I

    #@a
    return-void
.end method

.method setContentDescriptionNumberless(Ljava/lang/CharSequence;)V
    .registers 3

    #@0
    .line 368
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->overridingState:Lcom/google/android/material/badge/BadgeState$State;

    #@2
    # setter for: Lcom/google/android/material/badge/BadgeState$State;->contentDescriptionNumberless:Ljava/lang/CharSequence;
    invoke-static {v0, p1}, Lcom/google/android/material/badge/BadgeState$State;->access$202(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@5
    .line 369
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    #@7
    # setter for: Lcom/google/android/material/badge/BadgeState$State;->contentDescriptionNumberless:Ljava/lang/CharSequence;
    invoke-static {v0, p1}, Lcom/google/android/material/badge/BadgeState$State;->access$202(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@a
    return-void
.end method

.method setContentDescriptionQuantityStringsResource(I)V
    .registers 3

    #@0
    .line 378
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->overridingState:Lcom/google/android/material/badge/BadgeState$State;

    #@2
    # setter for: Lcom/google/android/material/badge/BadgeState$State;->contentDescriptionQuantityStrings:I
    invoke-static {v0, p1}, Lcom/google/android/material/badge/BadgeState$State;->access$302(Lcom/google/android/material/badge/BadgeState$State;I)I

    #@5
    .line 379
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    #@7
    # setter for: Lcom/google/android/material/badge/BadgeState$State;->contentDescriptionQuantityStrings:I
    invoke-static {v0, p1}, Lcom/google/android/material/badge/BadgeState$State;->access$302(Lcom/google/android/material/badge/BadgeState$State;I)I

    #@a
    return-void
.end method

.method setHorizontalOffsetWithText(I)V
    .registers 4

    #@0
    .line 329
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->overridingState:Lcom/google/android/material/badge/BadgeState$State;

    #@2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5
    move-result-object v1

    #@6
    # setter for: Lcom/google/android/material/badge/BadgeState$State;->horizontalOffsetWithText:Ljava/lang/Integer;
    invoke-static {v0, v1}, Lcom/google/android/material/badge/BadgeState$State;->access$1302(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;

    #@9
    .line 330
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    #@b
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@e
    move-result-object p1

    #@f
    # setter for: Lcom/google/android/material/badge/BadgeState$State;->horizontalOffsetWithText:Ljava/lang/Integer;
    invoke-static {v0, p1}, Lcom/google/android/material/badge/BadgeState$State;->access$1302(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;

    #@12
    return-void
.end method

.method setHorizontalOffsetWithoutText(I)V
    .registers 4

    #@0
    .line 309
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->overridingState:Lcom/google/android/material/badge/BadgeState$State;

    #@2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5
    move-result-object v1

    #@6
    # setter for: Lcom/google/android/material/badge/BadgeState$State;->horizontalOffsetWithoutText:Ljava/lang/Integer;
    invoke-static {v0, v1}, Lcom/google/android/material/badge/BadgeState$State;->access$1102(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;

    #@9
    .line 310
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    #@b
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@e
    move-result-object p1

    #@f
    # setter for: Lcom/google/android/material/badge/BadgeState$State;->horizontalOffsetWithoutText:Ljava/lang/Integer;
    invoke-static {v0, p1}, Lcom/google/android/material/badge/BadgeState$State;->access$1102(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;

    #@12
    return-void
.end method

.method setMaxCharacterCount(I)V
    .registers 3

    #@0
    .line 269
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->overridingState:Lcom/google/android/material/badge/BadgeState$State;

    #@2
    # setter for: Lcom/google/android/material/badge/BadgeState$State;->maxCharacterCount:I
    invoke-static {v0, p1}, Lcom/google/android/material/badge/BadgeState$State;->access$602(Lcom/google/android/material/badge/BadgeState$State;I)I

    #@5
    .line 270
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    #@7
    # setter for: Lcom/google/android/material/badge/BadgeState$State;->maxCharacterCount:I
    invoke-static {v0, p1}, Lcom/google/android/material/badge/BadgeState$State;->access$602(Lcom/google/android/material/badge/BadgeState$State;I)I

    #@a
    return-void
.end method

.method setNumber(I)V
    .registers 3

    #@0
    .line 247
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->overridingState:Lcom/google/android/material/badge/BadgeState$State;

    #@2
    # setter for: Lcom/google/android/material/badge/BadgeState$State;->number:I
    invoke-static {v0, p1}, Lcom/google/android/material/badge/BadgeState$State;->access$702(Lcom/google/android/material/badge/BadgeState$State;I)I

    #@5
    .line 248
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    #@7
    # setter for: Lcom/google/android/material/badge/BadgeState$State;->number:I
    invoke-static {v0, p1}, Lcom/google/android/material/badge/BadgeState$State;->access$702(Lcom/google/android/material/badge/BadgeState$State;I)I

    #@a
    return-void
.end method

.method setNumberLocale(Ljava/util/Locale;)V
    .registers 3

    #@0
    .line 397
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->overridingState:Lcom/google/android/material/badge/BadgeState$State;

    #@2
    # setter for: Lcom/google/android/material/badge/BadgeState$State;->numberLocale:Ljava/util/Locale;
    invoke-static {v0, p1}, Lcom/google/android/material/badge/BadgeState$State;->access$1702(Lcom/google/android/material/badge/BadgeState$State;Ljava/util/Locale;)Ljava/util/Locale;

    #@5
    .line 398
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    #@7
    # setter for: Lcom/google/android/material/badge/BadgeState$State;->numberLocale:Ljava/util/Locale;
    invoke-static {v0, p1}, Lcom/google/android/material/badge/BadgeState$State;->access$1702(Lcom/google/android/material/badge/BadgeState$State;Ljava/util/Locale;)Ljava/util/Locale;

    #@a
    return-void
.end method

.method setVerticalOffsetWithText(I)V
    .registers 4

    #@0
    .line 339
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->overridingState:Lcom/google/android/material/badge/BadgeState$State;

    #@2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5
    move-result-object v1

    #@6
    # setter for: Lcom/google/android/material/badge/BadgeState$State;->verticalOffsetWithText:Ljava/lang/Integer;
    invoke-static {v0, v1}, Lcom/google/android/material/badge/BadgeState$State;->access$1402(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;

    #@9
    .line 340
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    #@b
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@e
    move-result-object p1

    #@f
    # setter for: Lcom/google/android/material/badge/BadgeState$State;->verticalOffsetWithText:Ljava/lang/Integer;
    invoke-static {v0, p1}, Lcom/google/android/material/badge/BadgeState$State;->access$1402(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;

    #@12
    return-void
.end method

.method setVerticalOffsetWithoutText(I)V
    .registers 4

    #@0
    .line 319
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->overridingState:Lcom/google/android/material/badge/BadgeState$State;

    #@2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5
    move-result-object v1

    #@6
    # setter for: Lcom/google/android/material/badge/BadgeState$State;->verticalOffsetWithoutText:Ljava/lang/Integer;
    invoke-static {v0, v1}, Lcom/google/android/material/badge/BadgeState$State;->access$1202(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;

    #@9
    .line 320
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    #@b
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@e
    move-result-object p1

    #@f
    # setter for: Lcom/google/android/material/badge/BadgeState$State;->verticalOffsetWithoutText:Ljava/lang/Integer;
    invoke-static {v0, p1}, Lcom/google/android/material/badge/BadgeState$State;->access$1202(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;

    #@12
    return-void
.end method

.method setVisible(Z)V
    .registers 4

    #@0
    .line 234
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->overridingState:Lcom/google/android/material/badge/BadgeState$State;

    #@2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@5
    move-result-object v1

    #@6
    # setter for: Lcom/google/android/material/badge/BadgeState$State;->isVisible:Ljava/lang/Boolean;
    invoke-static {v0, v1}, Lcom/google/android/material/badge/BadgeState$State;->access$502(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    #@9
    .line 235
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    #@b
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@e
    move-result-object p1

    #@f
    # setter for: Lcom/google/android/material/badge/BadgeState$State;->isVisible:Ljava/lang/Boolean;
    invoke-static {v0, p1}, Lcom/google/android/material/badge/BadgeState$State;->access$502(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    #@12
    return-void
.end method
