.class public final Landroidx/core/view/ContentInfoCompat;
.super Ljava/lang/Object;
.source "ContentInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/ContentInfoCompat$BuilderCompat31Impl;,
        Landroidx/core/view/ContentInfoCompat$BuilderCompatImpl;,
        Landroidx/core/view/ContentInfoCompat$BuilderCompat;,
        Landroidx/core/view/ContentInfoCompat$Builder;,
        Landroidx/core/view/ContentInfoCompat$Compat31Impl;,
        Landroidx/core/view/ContentInfoCompat$CompatImpl;,
        Landroidx/core/view/ContentInfoCompat$Compat;,
        Landroidx/core/view/ContentInfoCompat$Api31Impl;,
        Landroidx/core/view/ContentInfoCompat$Flags;,
        Landroidx/core/view/ContentInfoCompat$Source;
    }
.end annotation


# static fields
.field public static final FLAG_CONVERT_TO_PLAIN_TEXT:I = 0x1

.field public static final SOURCE_APP:I = 0x0

.field public static final SOURCE_AUTOFILL:I = 0x4

.field public static final SOURCE_CLIPBOARD:I = 0x1

.field public static final SOURCE_DRAG_AND_DROP:I = 0x3

.field public static final SOURCE_INPUT_METHOD:I = 0x2

.field public static final SOURCE_PROCESS_TEXT:I = 0x5


# instance fields
.field private final mCompat:Landroidx/core/view/ContentInfoCompat$Compat;


# direct methods
.method constructor <init>(Landroidx/core/view/ContentInfoCompat$Compat;)V
    .registers 2

    #@0
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 152
    iput-object p1, p0, Landroidx/core/view/ContentInfoCompat;->mCompat:Landroidx/core/view/ContentInfoCompat$Compat;

    #@5
    return-void
.end method

.method static buildClipData(Landroid/content/ClipDescription;Ljava/util/List;)Landroid/content/ClipData;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ClipDescription;",
            "Ljava/util/List<",
            "Landroid/content/ClipData$Item;",
            ">;)",
            "Landroid/content/ClipData;"
        }
    .end annotation

    #@0
    .line 301
    new-instance v0, Landroid/content/ClipData;

    #@2
    new-instance v1, Landroid/content/ClipDescription;

    #@4
    invoke-direct {v1, p0}, Landroid/content/ClipDescription;-><init>(Landroid/content/ClipDescription;)V

    #@7
    const/4 p0, 0x0

    #@8
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@b
    move-result-object p0

    #@c
    check-cast p0, Landroid/content/ClipData$Item;

    #@e
    invoke-direct {v0, v1, p0}, Landroid/content/ClipData;-><init>(Landroid/content/ClipDescription;Landroid/content/ClipData$Item;)V

    #@11
    const/4 p0, 0x1

    #@12
    .line 302
    :goto_12
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@15
    move-result v1

    #@16
    if-ge p0, v1, :cond_24

    #@18
    .line 303
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1b
    move-result-object v1

    #@1c
    check-cast v1, Landroid/content/ClipData$Item;

    #@1e
    invoke-virtual {v0, v1}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    #@21
    add-int/lit8 p0, p0, 0x1

    #@23
    goto :goto_12

    #@24
    :cond_24
    return-object v0
.end method

.method static flagsToString(I)Ljava/lang/String;
    .registers 2

    #@0
    and-int/lit8 v0, p0, 0x1

    #@2
    if-eqz v0, :cond_7

    #@4
    const-string p0, "FLAG_CONVERT_TO_PLAIN_TEXT"

    #@6
    return-object p0

    #@7
    .line 145
    :cond_7
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@a
    move-result-object p0

    #@b
    return-object p0
.end method

.method static partition(Landroid/content/ClipData;Landroidx/core/util/Predicate;)Landroid/util/Pair;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ClipData;",
            "Landroidx/core/util/Predicate<",
            "Landroid/content/ClipData$Item;",
            ">;)",
            "Landroid/util/Pair<",
            "Landroid/content/ClipData;",
            "Landroid/content/ClipData;",
            ">;"
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    move-object v2, v0

    #@3
    move-object v3, v2

    #@4
    .line 277
    :goto_4
    invoke-virtual {p0}, Landroid/content/ClipData;->getItemCount()I

    #@7
    move-result v4

    #@8
    if-ge v1, v4, :cond_2c

    #@a
    .line 278
    invoke-virtual {p0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    #@d
    move-result-object v4

    #@e
    .line 279
    invoke-interface {p1, v4}, Landroidx/core/util/Predicate;->test(Ljava/lang/Object;)Z

    #@11
    move-result v5

    #@12
    if-eqz v5, :cond_1f

    #@14
    if-nez v2, :cond_1b

    #@16
    .line 280
    new-instance v2, Ljava/util/ArrayList;

    #@18
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@1b
    .line 281
    :cond_1b
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1e
    goto :goto_29

    #@1f
    :cond_1f
    if-nez v3, :cond_26

    #@21
    .line 283
    new-instance v3, Ljava/util/ArrayList;

    #@23
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@26
    .line 284
    :cond_26
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@29
    :goto_29
    add-int/lit8 v1, v1, 0x1

    #@2b
    goto :goto_4

    #@2c
    :cond_2c
    if-nez v2, :cond_33

    #@2e
    .line 288
    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    #@31
    move-result-object p0

    #@32
    return-object p0

    #@33
    :cond_33
    if-nez v3, :cond_3a

    #@35
    .line 291
    invoke-static {p0, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    #@38
    move-result-object p0

    #@39
    return-object p0

    #@3a
    .line 294
    :cond_3a
    invoke-virtual {p0}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    #@3d
    move-result-object p1

    #@3e
    invoke-static {p1, v2}, Landroidx/core/view/ContentInfoCompat;->buildClipData(Landroid/content/ClipDescription;Ljava/util/List;)Landroid/content/ClipData;

    #@41
    move-result-object p1

    #@42
    .line 295
    invoke-virtual {p0}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    #@45
    move-result-object p0

    #@46
    invoke-static {p0, v3}, Landroidx/core/view/ContentInfoCompat;->buildClipData(Landroid/content/ClipDescription;Ljava/util/List;)Landroid/content/ClipData;

    #@49
    move-result-object p0

    #@4a
    .line 293
    invoke-static {p1, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    #@4d
    move-result-object p0

    #@4e
    return-object p0
.end method

.method public static partition(Landroid/view/ContentInfo;Ljava/util/function/Predicate;)Landroid/util/Pair;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ContentInfo;",
            "Ljava/util/function/Predicate<",
            "Landroid/content/ClipData$Item;",
            ">;)",
            "Landroid/util/Pair<",
            "Landroid/view/ContentInfo;",
            "Landroid/view/ContentInfo;",
            ">;"
        }
    .end annotation

    #@0
    .line 328
    invoke-static {p0, p1}, Landroidx/core/view/ContentInfoCompat$Api31Impl;->partition(Landroid/view/ContentInfo;Ljava/util/function/Predicate;)Landroid/util/Pair;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method static sourceToString(I)Ljava/lang/String;
    .registers 2

    #@0
    if-eqz p0, :cond_25

    #@2
    const/4 v0, 0x1

    #@3
    if-eq p0, v0, :cond_22

    #@5
    const/4 v0, 0x2

    #@6
    if-eq p0, v0, :cond_1f

    #@8
    const/4 v0, 0x3

    #@9
    if-eq p0, v0, :cond_1c

    #@b
    const/4 v0, 0x4

    #@c
    if-eq p0, v0, :cond_19

    #@e
    const/4 v0, 0x5

    #@f
    if-eq p0, v0, :cond_16

    #@11
    .line 114
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@14
    move-result-object p0

    #@15
    return-object p0

    #@16
    :cond_16
    const-string p0, "SOURCE_PROCESS_TEXT"

    #@18
    return-object p0

    #@19
    :cond_19
    const-string p0, "SOURCE_AUTOFILL"

    #@1b
    return-object p0

    #@1c
    :cond_1c
    const-string p0, "SOURCE_DRAG_AND_DROP"

    #@1e
    return-object p0

    #@1f
    :cond_1f
    const-string p0, "SOURCE_INPUT_METHOD"

    #@21
    return-object p0

    #@22
    :cond_22
    const-string p0, "SOURCE_CLIPBOARD"

    #@24
    return-object p0

    #@25
    :cond_25
    const-string p0, "SOURCE_APP"

    #@27
    return-object p0
.end method

.method public static toContentInfoCompat(Landroid/view/ContentInfo;)Landroidx/core/view/ContentInfoCompat;
    .registers 3

    #@0
    .line 167
    new-instance v0, Landroidx/core/view/ContentInfoCompat;

    #@2
    new-instance v1, Landroidx/core/view/ContentInfoCompat$Compat31Impl;

    #@4
    invoke-direct {v1, p0}, Landroidx/core/view/ContentInfoCompat$Compat31Impl;-><init>(Landroid/view/ContentInfo;)V

    #@7
    invoke-direct {v0, v1}, Landroidx/core/view/ContentInfoCompat;-><init>(Landroidx/core/view/ContentInfoCompat$Compat;)V

    #@a
    return-object v0
.end method


# virtual methods
.method public getClip()Landroid/content/ClipData;
    .registers 2

    #@0
    .line 196
    iget-object v0, p0, Landroidx/core/view/ContentInfoCompat;->mCompat:Landroidx/core/view/ContentInfoCompat$Compat;

    #@2
    invoke-interface {v0}, Landroidx/core/view/ContentInfoCompat$Compat;->getClip()Landroid/content/ClipData;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .registers 2

    #@0
    .line 234
    iget-object v0, p0, Landroidx/core/view/ContentInfoCompat;->mCompat:Landroidx/core/view/ContentInfoCompat$Compat;

    #@2
    invoke-interface {v0}, Landroidx/core/view/ContentInfoCompat$Compat;->getExtras()Landroid/os/Bundle;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getFlags()I
    .registers 2

    #@0
    .line 213
    iget-object v0, p0, Landroidx/core/view/ContentInfoCompat;->mCompat:Landroidx/core/view/ContentInfoCompat$Compat;

    #@2
    invoke-interface {v0}, Landroidx/core/view/ContentInfoCompat$Compat;->getFlags()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getLinkUri()Landroid/net/Uri;
    .registers 2

    #@0
    .line 224
    iget-object v0, p0, Landroidx/core/view/ContentInfoCompat;->mCompat:Landroidx/core/view/ContentInfoCompat$Compat;

    #@2
    invoke-interface {v0}, Landroidx/core/view/ContentInfoCompat$Compat;->getLinkUri()Landroid/net/Uri;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getSource()I
    .registers 2

    #@0
    .line 205
    iget-object v0, p0, Landroidx/core/view/ContentInfoCompat;->mCompat:Landroidx/core/view/ContentInfoCompat$Compat;

    #@2
    invoke-interface {v0}, Landroidx/core/view/ContentInfoCompat$Compat;->getSource()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public partition(Landroidx/core/util/Predicate;)Landroid/util/Pair;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Predicate<",
            "Landroid/content/ClipData$Item;",
            ">;)",
            "Landroid/util/Pair<",
            "Landroidx/core/view/ContentInfoCompat;",
            "Landroidx/core/view/ContentInfoCompat;",
            ">;"
        }
    .end annotation

    #@0
    .line 256
    iget-object v0, p0, Landroidx/core/view/ContentInfoCompat;->mCompat:Landroidx/core/view/ContentInfoCompat$Compat;

    #@2
    invoke-interface {v0}, Landroidx/core/view/ContentInfoCompat$Compat;->getClip()Landroid/content/ClipData;

    #@5
    move-result-object v0

    #@6
    .line 257
    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    #@9
    move-result v1

    #@a
    const/4 v2, 0x1

    #@b
    const/4 v3, 0x0

    #@c
    if-ne v1, v2, :cond_25

    #@e
    const/4 v1, 0x0

    #@f
    .line 258
    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    #@12
    move-result-object v0

    #@13
    invoke-interface {p1, v0}, Landroidx/core/util/Predicate;->test(Ljava/lang/Object;)Z

    #@16
    move-result p1

    #@17
    if-eqz p1, :cond_1b

    #@19
    move-object v0, p0

    #@1a
    goto :goto_1c

    #@1b
    :cond_1b
    move-object v0, v3

    #@1c
    :goto_1c
    if-eqz p1, :cond_1f

    #@1e
    goto :goto_20

    #@1f
    :cond_1f
    move-object v3, p0

    #@20
    .line 259
    :goto_20
    invoke-static {v0, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    #@23
    move-result-object p1

    #@24
    return-object p1

    #@25
    .line 261
    :cond_25
    invoke-static {v0, p1}, Landroidx/core/view/ContentInfoCompat;->partition(Landroid/content/ClipData;Landroidx/core/util/Predicate;)Landroid/util/Pair;

    #@28
    move-result-object p1

    #@29
    .line 262
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@2b
    if-nez v0, :cond_32

    #@2d
    .line 263
    invoke-static {v3, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    #@30
    move-result-object p1

    #@31
    return-object p1

    #@32
    .line 264
    :cond_32
    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@34
    if-nez v0, :cond_3b

    #@36
    .line 265
    invoke-static {p0, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    #@39
    move-result-object p1

    #@3a
    return-object p1

    #@3b
    .line 267
    :cond_3b
    new-instance v0, Landroidx/core/view/ContentInfoCompat$Builder;

    #@3d
    invoke-direct {v0, p0}, Landroidx/core/view/ContentInfoCompat$Builder;-><init>(Landroidx/core/view/ContentInfoCompat;)V

    #@40
    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@42
    check-cast v1, Landroid/content/ClipData;

    #@44
    .line 268
    invoke-virtual {v0, v1}, Landroidx/core/view/ContentInfoCompat$Builder;->setClip(Landroid/content/ClipData;)Landroidx/core/view/ContentInfoCompat$Builder;

    #@47
    move-result-object v0

    #@48
    invoke-virtual {v0}, Landroidx/core/view/ContentInfoCompat$Builder;->build()Landroidx/core/view/ContentInfoCompat;

    #@4b
    move-result-object v0

    #@4c
    new-instance v1, Landroidx/core/view/ContentInfoCompat$Builder;

    #@4e
    invoke-direct {v1, p0}, Landroidx/core/view/ContentInfoCompat$Builder;-><init>(Landroidx/core/view/ContentInfoCompat;)V

    #@51
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@53
    check-cast p1, Landroid/content/ClipData;

    #@55
    .line 269
    invoke-virtual {v1, p1}, Landroidx/core/view/ContentInfoCompat$Builder;->setClip(Landroid/content/ClipData;)Landroidx/core/view/ContentInfoCompat$Builder;

    #@58
    move-result-object p1

    #@59
    invoke-virtual {p1}, Landroidx/core/view/ContentInfoCompat$Builder;->build()Landroidx/core/view/ContentInfoCompat;

    #@5c
    move-result-object p1

    #@5d
    .line 267
    invoke-static {v0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    #@60
    move-result-object p1

    #@61
    return-object p1
.end method

.method public toContentInfo()Landroid/view/ContentInfo;
    .registers 2

    #@0
    .line 182
    iget-object v0, p0, Landroidx/core/view/ContentInfoCompat;->mCompat:Landroidx/core/view/ContentInfoCompat$Compat;

    #@2
    invoke-interface {v0}, Landroidx/core/view/ContentInfoCompat$Compat;->getWrapped()Landroid/view/ContentInfo;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroid/view/ContentInfo;

    #@c
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    #@0
    .line 188
    iget-object v0, p0, Landroidx/core/view/ContentInfoCompat;->mCompat:Landroidx/core/view/ContentInfoCompat$Compat;

    #@2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
