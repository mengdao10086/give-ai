.class public final Landroidx/core/app/RemoteInput;
.super Ljava/lang/Object;
.source "RemoteInput.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/RemoteInput$Api28Impl;,
        Landroidx/core/app/RemoteInput$Api29Impl;,
        Landroidx/core/app/RemoteInput$Api16Impl;,
        Landroidx/core/app/RemoteInput$Api20Impl;,
        Landroidx/core/app/RemoteInput$Api26Impl;,
        Landroidx/core/app/RemoteInput$Builder;,
        Landroidx/core/app/RemoteInput$EditChoicesBeforeSending;,
        Landroidx/core/app/RemoteInput$Source;
    }
.end annotation


# static fields
.field public static final EDIT_CHOICES_BEFORE_SENDING_AUTO:I = 0x0

.field public static final EDIT_CHOICES_BEFORE_SENDING_DISABLED:I = 0x1

.field public static final EDIT_CHOICES_BEFORE_SENDING_ENABLED:I = 0x2

.field private static final EXTRA_DATA_TYPE_RESULTS_DATA:Ljava/lang/String; = "android.remoteinput.dataTypeResultsData"

.field public static final EXTRA_RESULTS_DATA:Ljava/lang/String; = "android.remoteinput.resultsData"

.field private static final EXTRA_RESULTS_SOURCE:Ljava/lang/String; = "android.remoteinput.resultsSource"

.field public static final RESULTS_CLIP_LABEL:Ljava/lang/String; = "android.remoteinput.results"

.field public static final SOURCE_CHOICE:I = 0x1

.field public static final SOURCE_FREE_FORM_INPUT:I


# instance fields
.field private final mAllowFreeFormTextInput:Z

.field private final mAllowedDataTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mChoices:[Ljava/lang/CharSequence;

.field private final mEditChoicesBeforeSending:I

.field private final mExtras:Landroid/os/Bundle;

.field private final mLabel:Ljava/lang/CharSequence;

.field private final mResultKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;ZILandroid/os/Bundle;Ljava/util/Set;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/CharSequence;",
            "[",
            "Ljava/lang/CharSequence;",
            "ZI",
            "Landroid/os/Bundle;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 97
    iput-object p1, p0, Landroidx/core/app/RemoteInput;->mResultKey:Ljava/lang/String;

    #@5
    .line 98
    iput-object p2, p0, Landroidx/core/app/RemoteInput;->mLabel:Ljava/lang/CharSequence;

    #@7
    .line 99
    iput-object p3, p0, Landroidx/core/app/RemoteInput;->mChoices:[Ljava/lang/CharSequence;

    #@9
    .line 100
    iput-boolean p4, p0, Landroidx/core/app/RemoteInput;->mAllowFreeFormTextInput:Z

    #@b
    .line 101
    iput p5, p0, Landroidx/core/app/RemoteInput;->mEditChoicesBeforeSending:I

    #@d
    .line 102
    iput-object p6, p0, Landroidx/core/app/RemoteInput;->mExtras:Landroid/os/Bundle;

    #@f
    .line 103
    iput-object p7, p0, Landroidx/core/app/RemoteInput;->mAllowedDataTypes:Ljava/util/Set;

    #@11
    .line 104
    invoke-virtual {p0}, Landroidx/core/app/RemoteInput;->getEditChoicesBeforeSending()I

    #@14
    move-result p1

    #@15
    const/4 p2, 0x2

    #@16
    if-ne p1, p2, :cond_27

    #@18
    .line 105
    invoke-virtual {p0}, Landroidx/core/app/RemoteInput;->getAllowFreeFormInput()Z

    #@1b
    move-result p1

    #@1c
    if-eqz p1, :cond_1f

    #@1e
    goto :goto_27

    #@1f
    .line 106
    :cond_1f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@21
    const-string p2, "setEditChoicesBeforeSending requires setAllowFreeFormInput"

    #@23
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@26
    throw p1

    #@27
    :cond_27
    :goto_27
    return-void
.end method

.method public static addDataResultToIntent(Landroidx/core/app/RemoteInput;Landroid/content/Intent;Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/app/RemoteInput;",
            "Landroid/content/Intent;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 480
    invoke-static {p0, p1, p2}, Landroidx/core/app/RemoteInput$Api26Impl;->addDataResultToIntent(Landroidx/core/app/RemoteInput;Landroid/content/Intent;Ljava/util/Map;)V

    #@3
    return-void
.end method

.method public static addResultsToIntent([Landroidx/core/app/RemoteInput;Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 3

    #@0
    .line 416
    invoke-static {p0}, Landroidx/core/app/RemoteInput;->fromCompat([Landroidx/core/app/RemoteInput;)[Landroid/app/RemoteInput;

    #@3
    move-result-object p0

    #@4
    invoke-static {p0, p1, p2}, Landroidx/core/app/RemoteInput$Api20Impl;->addResultsToIntent(Ljava/lang/Object;Landroid/content/Intent;Landroid/os/Bundle;)V

    #@7
    return-void
.end method

.method static fromCompat(Landroidx/core/app/RemoteInput;)Landroid/app/RemoteInput;
    .registers 1

    #@0
    .line 575
    invoke-static {p0}, Landroidx/core/app/RemoteInput$Api20Impl;->fromCompat(Landroidx/core/app/RemoteInput;)Landroid/app/RemoteInput;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method static fromCompat([Landroidx/core/app/RemoteInput;)[Landroid/app/RemoteInput;
    .registers 4

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 p0, 0x0

    #@3
    return-object p0

    #@4
    .line 566
    :cond_4
    array-length v0, p0

    #@5
    new-array v0, v0, [Landroid/app/RemoteInput;

    #@7
    const/4 v1, 0x0

    #@8
    .line 567
    :goto_8
    array-length v2, p0

    #@9
    if-ge v1, v2, :cond_16

    #@b
    .line 568
    aget-object v2, p0, v1

    #@d
    invoke-static {v2}, Landroidx/core/app/RemoteInput;->fromCompat(Landroidx/core/app/RemoteInput;)Landroid/app/RemoteInput;

    #@10
    move-result-object v2

    #@11
    aput-object v2, v0, v1

    #@13
    add-int/lit8 v1, v1, 0x1

    #@15
    goto :goto_8

    #@16
    :cond_16
    return-object v0
.end method

.method static fromPlatform(Landroid/app/RemoteInput;)Landroidx/core/app/RemoteInput;
    .registers 1

    #@0
    .line 580
    invoke-static {p0}, Landroidx/core/app/RemoteInput$Api20Impl;->fromPlatform(Ljava/lang/Object;)Landroidx/core/app/RemoteInput;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method private static getClipDataIntentFromIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .registers 4

    #@0
    .line 585
    invoke-static {p0}, Landroidx/core/app/RemoteInput$Api16Impl;->getClipData(Landroid/content/Intent;)Landroid/content/ClipData;

    #@3
    move-result-object p0

    #@4
    const/4 v0, 0x0

    #@5
    if-nez p0, :cond_8

    #@7
    return-object v0

    #@8
    .line 589
    :cond_8
    invoke-virtual {p0}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    #@b
    move-result-object v1

    #@c
    const-string v2, "text/vnd.android.intent"

    #@e
    .line 590
    invoke-virtual {v1, v2}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    #@11
    move-result v2

    #@12
    if-nez v2, :cond_15

    #@14
    return-object v0

    #@15
    .line 593
    :cond_15
    invoke-virtual {v1}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    const-string v2, "android.remoteinput.results"

    #@1f
    invoke-virtual {v1, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    #@22
    move-result v1

    #@23
    if-nez v1, :cond_26

    #@25
    return-object v0

    #@26
    :cond_26
    const/4 v0, 0x0

    #@27
    .line 596
    invoke-virtual {p0, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    #@2a
    move-result-object p0

    #@2b
    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    #@2e
    move-result-object p0

    #@2f
    return-object p0
.end method

.method public static getDataResultsFromIntent(Landroid/content/Intent;Ljava/lang/String;)Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    #@0
    .line 348
    invoke-static {p0, p1}, Landroidx/core/app/RemoteInput$Api26Impl;->getDataResultsFromIntent(Landroid/content/Intent;Ljava/lang/String;)Ljava/util/Map;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method private static getExtraResultsKeyForData(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    #@0
    .line 558
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string v1, "android.remoteinput.dataTypeResultsData"

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@7
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object p0

    #@b
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e
    move-result-object p0

    #@f
    return-object p0
.end method

.method public static getResultsFromIntent(Landroid/content/Intent;)Landroid/os/Bundle;
    .registers 1

    #@0
    .line 389
    invoke-static {p0}, Landroidx/core/app/RemoteInput$Api20Impl;->getResultsFromIntent(Landroid/content/Intent;)Landroid/os/Bundle;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method public static getResultsSource(Landroid/content/Intent;)I
    .registers 3

    #@0
    .line 544
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1c

    #@4
    if-lt v0, v1, :cond_b

    #@6
    .line 545
    invoke-static {p0}, Landroidx/core/app/RemoteInput$Api28Impl;->getResultsSource(Landroid/content/Intent;)I

    #@9
    move-result p0

    #@a
    return p0

    #@b
    .line 547
    :cond_b
    invoke-static {p0}, Landroidx/core/app/RemoteInput;->getClipDataIntentFromIntent(Landroid/content/Intent;)Landroid/content/Intent;

    #@e
    move-result-object p0

    #@f
    const/4 v0, 0x0

    #@10
    if-nez p0, :cond_13

    #@12
    return v0

    #@13
    .line 551
    :cond_13
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    #@16
    move-result-object p0

    #@17
    const-string v1, "android.remoteinput.resultsSource"

    #@19
    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@1c
    move-result p0

    #@1d
    return p0
.end method

.method public static setResultsSource(Landroid/content/Intent;I)V
    .registers 4

    #@0
    .line 519
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1c

    #@4
    if-lt v0, v1, :cond_a

    #@6
    .line 520
    invoke-static {p0, p1}, Landroidx/core/app/RemoteInput$Api28Impl;->setResultsSource(Landroid/content/Intent;I)V

    #@9
    goto :goto_23

    #@a
    .line 522
    :cond_a
    invoke-static {p0}, Landroidx/core/app/RemoteInput;->getClipDataIntentFromIntent(Landroid/content/Intent;)Landroid/content/Intent;

    #@d
    move-result-object v0

    #@e
    if-nez v0, :cond_15

    #@10
    .line 524
    new-instance v0, Landroid/content/Intent;

    #@12
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    #@15
    :cond_15
    const-string v1, "android.remoteinput.resultsSource"

    #@17
    .line 526
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@1a
    const-string p1, "android.remoteinput.results"

    #@1c
    .line 527
    invoke-static {p1, v0}, Landroid/content/ClipData;->newIntent(Ljava/lang/CharSequence;Landroid/content/Intent;)Landroid/content/ClipData;

    #@1f
    move-result-object p1

    #@20
    invoke-static {p0, p1}, Landroidx/core/app/RemoteInput$Api16Impl;->setClipData(Landroid/content/Intent;Landroid/content/ClipData;)V

    #@23
    :goto_23
    return-void
.end method


# virtual methods
.method public getAllowFreeFormInput()Z
    .registers 2

    #@0
    .line 162
    iget-boolean v0, p0, Landroidx/core/app/RemoteInput;->mAllowFreeFormTextInput:Z

    #@2
    return v0
.end method

.method public getAllowedDataTypes()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .line 140
    iget-object v0, p0, Landroidx/core/app/RemoteInput;->mAllowedDataTypes:Ljava/util/Set;

    #@2
    return-object v0
.end method

.method public getChoices()[Ljava/lang/CharSequence;
    .registers 2

    #@0
    .line 134
    iget-object v0, p0, Landroidx/core/app/RemoteInput;->mChoices:[Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public getEditChoicesBeforeSending()I
    .registers 2

    #@0
    .line 170
    iget v0, p0, Landroidx/core/app/RemoteInput;->mEditChoicesBeforeSending:I

    #@2
    return v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .registers 2

    #@0
    .line 178
    iget-object v0, p0, Landroidx/core/app/RemoteInput;->mExtras:Landroid/os/Bundle;

    #@2
    return-object v0
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .registers 2

    #@0
    .line 125
    iget-object v0, p0, Landroidx/core/app/RemoteInput;->mLabel:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public getResultKey()Ljava/lang/String;
    .registers 2

    #@0
    .line 117
    iget-object v0, p0, Landroidx/core/app/RemoteInput;->mResultKey:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public isDataOnly()Z
    .registers 2

    #@0
    .line 149
    invoke-virtual {p0}, Landroidx/core/app/RemoteInput;->getAllowFreeFormInput()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_25

    #@6
    .line 150
    invoke-virtual {p0}, Landroidx/core/app/RemoteInput;->getChoices()[Ljava/lang/CharSequence;

    #@9
    move-result-object v0

    #@a
    if-eqz v0, :cond_13

    #@c
    invoke-virtual {p0}, Landroidx/core/app/RemoteInput;->getChoices()[Ljava/lang/CharSequence;

    #@f
    move-result-object v0

    #@10
    array-length v0, v0

    #@11
    if-nez v0, :cond_25

    #@13
    .line 151
    :cond_13
    invoke-virtual {p0}, Landroidx/core/app/RemoteInput;->getAllowedDataTypes()Ljava/util/Set;

    #@16
    move-result-object v0

    #@17
    if-eqz v0, :cond_25

    #@19
    .line 152
    invoke-virtual {p0}, Landroidx/core/app/RemoteInput;->getAllowedDataTypes()Ljava/util/Set;

    #@1c
    move-result-object v0

    #@1d
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    #@20
    move-result v0

    #@21
    if-nez v0, :cond_25

    #@23
    const/4 v0, 0x1

    #@24
    goto :goto_26

    #@25
    :cond_25
    const/4 v0, 0x0

    #@26
    :goto_26
    return v0
.end method
