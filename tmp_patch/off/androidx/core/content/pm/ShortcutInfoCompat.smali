.class public Landroidx/core/content/pm/ShortcutInfoCompat;
.super Ljava/lang/Object;
.source "ShortcutInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/content/pm/ShortcutInfoCompat$Builder;,
        Landroidx/core/content/pm/ShortcutInfoCompat$Surface;
    }
.end annotation


# static fields
.field private static final EXTRA_LOCUS_ID:Ljava/lang/String; = "extraLocusId"

.field private static final EXTRA_LONG_LIVED:Ljava/lang/String; = "extraLongLived"

.field private static final EXTRA_PERSON_:Ljava/lang/String; = "extraPerson_"

.field private static final EXTRA_PERSON_COUNT:Ljava/lang/String; = "extraPersonCount"

.field private static final EXTRA_SLICE_URI:Ljava/lang/String; = "extraSliceUri"

.field public static final SURFACE_LAUNCHER:I = 0x1


# instance fields
.field mActivity:Landroid/content/ComponentName;

.field mCategories:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field mDisabledMessage:Ljava/lang/CharSequence;

.field mDisabledReason:I

.field mExcludedSurfaces:I

.field mExtras:Landroid/os/PersistableBundle;

.field mHasKeyFieldsOnly:Z

.field mIcon:Landroidx/core/graphics/drawable/IconCompat;

.field mId:Ljava/lang/String;

.field mIntents:[Landroid/content/Intent;

.field mIsAlwaysBadged:Z

.field mIsCached:Z

.field mIsDeclaredInManifest:Z

.field mIsDynamic:Z

.field mIsEnabled:Z

.field mIsImmutable:Z

.field mIsLongLived:Z

.field mIsPinned:Z

.field mLabel:Ljava/lang/CharSequence;

.field mLastChangedTimestamp:J

.field mLocusId:Landroidx/core/content/LocusIdCompat;

.field mLongLabel:Ljava/lang/CharSequence;

.field mPackageName:Ljava/lang/String;

.field mPersons:[Landroidx/core/app/Person;

.field mRank:I

.field mTransientExtras:Landroid/os/Bundle;

.field mUser:Landroid/os/UserHandle;


# direct methods
.method constructor <init>()V
    .registers 2

    #@0
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x1

    #@4
    .line 114
    iput-boolean v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mIsEnabled:Z

    #@6
    return-void
.end method

.method private buildLegacyExtrasBundle()Landroid/os/PersistableBundle;
    .registers 6

    #@0
    .line 175
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mExtras:Landroid/os/PersistableBundle;

    #@2
    if-nez v0, :cond_b

    #@4
    .line 176
    new-instance v0, Landroid/os/PersistableBundle;

    #@6
    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    #@9
    iput-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mExtras:Landroid/os/PersistableBundle;

    #@b
    .line 178
    :cond_b
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mPersons:[Landroidx/core/app/Person;

    #@d
    if-eqz v0, :cond_40

    #@f
    array-length v1, v0

    #@10
    if-lez v1, :cond_40

    #@12
    .line 179
    iget-object v1, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mExtras:Landroid/os/PersistableBundle;

    #@14
    const-string v2, "extraPersonCount"

    #@16
    array-length v0, v0

    #@17
    invoke-virtual {v1, v2, v0}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    #@1a
    const/4 v0, 0x0

    #@1b
    .line 180
    :goto_1b
    iget-object v1, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mPersons:[Landroidx/core/app/Person;

    #@1d
    array-length v1, v1

    #@1e
    if-ge v0, v1, :cond_40

    #@20
    .line 181
    iget-object v1, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mExtras:Landroid/os/PersistableBundle;

    #@22
    new-instance v2, Ljava/lang/StringBuilder;

    #@24
    const-string v3, "extraPerson_"

    #@26
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@29
    add-int/lit8 v3, v0, 0x1

    #@2b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v2

    #@2f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v2

    #@33
    iget-object v4, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mPersons:[Landroidx/core/app/Person;

    #@35
    aget-object v0, v4, v0

    #@37
    .line 182
    invoke-virtual {v0}, Landroidx/core/app/Person;->toPersistableBundle()Landroid/os/PersistableBundle;

    #@3a
    move-result-object v0

    #@3b
    .line 181
    invoke-virtual {v1, v2, v0}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    #@3e
    move v0, v3

    #@3f
    goto :goto_1b

    #@40
    .line 185
    :cond_40
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mLocusId:Landroidx/core/content/LocusIdCompat;

    #@42
    if-eqz v0, :cond_4f

    #@44
    .line 186
    iget-object v1, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mExtras:Landroid/os/PersistableBundle;

    #@46
    const-string v2, "extraLocusId"

    #@48
    invoke-virtual {v0}, Landroidx/core/content/LocusIdCompat;->getId()Ljava/lang/String;

    #@4b
    move-result-object v0

    #@4c
    invoke-virtual {v1, v2, v0}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@4f
    .line 188
    :cond_4f
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mExtras:Landroid/os/PersistableBundle;

    #@51
    const-string v1, "extraLongLived"

    #@53
    iget-boolean v2, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mIsLongLived:Z

    #@55
    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    #@58
    .line 189
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mExtras:Landroid/os/PersistableBundle;

    #@5a
    return-object v0
.end method

.method static fromShortcuts(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/core/content/pm/ShortcutInfoCompat;",
            ">;"
        }
    .end annotation

    #@0
    .line 388
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@5
    move-result v1

    #@6
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@9
    .line 389
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object p1

    #@d
    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_26

    #@13
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    check-cast v1, Landroid/content/pm/ShortcutInfo;

    #@19
    .line 390
    new-instance v2, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;

    #@1b
    invoke-direct {v2, p0, v1}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;-><init>(Landroid/content/Context;Landroid/content/pm/ShortcutInfo;)V

    #@1e
    invoke-virtual {v2}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->build()Landroidx/core/content/pm/ShortcutInfoCompat;

    #@21
    move-result-object v1

    #@22
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@25
    goto :goto_d

    #@26
    :cond_26
    return-object v0
.end method

.method static getLocusId(Landroid/content/pm/ShortcutInfo;)Landroidx/core/content/LocusIdCompat;
    .registers 3

    #@0
    .line 502
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1d

    #@4
    if-lt v0, v1, :cond_17

    #@6
    .line 503
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getLocusId()Landroid/content/LocusId;

    #@9
    move-result-object v0

    #@a
    if-nez v0, :cond_e

    #@c
    const/4 p0, 0x0

    #@d
    return-object p0

    #@e
    .line 504
    :cond_e
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getLocusId()Landroid/content/LocusId;

    #@11
    move-result-object p0

    #@12
    invoke-static {p0}, Landroidx/core/content/LocusIdCompat;->toLocusIdCompat(Landroid/content/LocusId;)Landroidx/core/content/LocusIdCompat;

    #@15
    move-result-object p0

    #@16
    return-object p0

    #@17
    .line 506
    :cond_17
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getExtras()Landroid/os/PersistableBundle;

    #@1a
    move-result-object p0

    #@1b
    invoke-static {p0}, Landroidx/core/content/pm/ShortcutInfoCompat;->getLocusIdFromExtra(Landroid/os/PersistableBundle;)Landroidx/core/content/LocusIdCompat;

    #@1e
    move-result-object p0

    #@1f
    return-object p0
.end method

.method private static getLocusIdFromExtra(Landroid/os/PersistableBundle;)Landroidx/core/content/LocusIdCompat;
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    if-nez p0, :cond_4

    #@3
    return-object v0

    #@4
    :cond_4
    const-string v1, "extraLocusId"

    #@6
    .line 535
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object p0

    #@a
    if-nez p0, :cond_d

    #@c
    goto :goto_12

    #@d
    .line 536
    :cond_d
    new-instance v0, Landroidx/core/content/LocusIdCompat;

    #@f
    invoke-direct {v0, p0}, Landroidx/core/content/LocusIdCompat;-><init>(Ljava/lang/String;)V

    #@12
    :goto_12
    return-object v0
.end method

.method static getLongLivedFromExtra(Landroid/os/PersistableBundle;)Z
    .registers 3

    #@0
    if-eqz p0, :cond_10

    #@2
    const-string v0, "extraLongLived"

    #@4
    .line 375
    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    #@7
    move-result v1

    #@8
    if-nez v1, :cond_b

    #@a
    goto :goto_10

    #@b
    .line 378
    :cond_b
    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    #@e
    move-result p0

    #@f
    return p0

    #@10
    :cond_10
    :goto_10
    const/4 p0, 0x0

    #@11
    return p0
.end method

.method static getPersonsFromExtra(Landroid/os/PersistableBundle;)[Landroidx/core/app/Person;
    .registers 6

    #@0
    if-eqz p0, :cond_32

    #@2
    const-string v0, "extraPersonCount"

    #@4
    .line 355
    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    #@7
    move-result v1

    #@8
    if-nez v1, :cond_b

    #@a
    goto :goto_32

    #@b
    .line 359
    :cond_b
    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    #@e
    move-result v0

    #@f
    .line 360
    new-array v1, v0, [Landroidx/core/app/Person;

    #@11
    const/4 v2, 0x0

    #@12
    :goto_12
    if-ge v2, v0, :cond_31

    #@14
    .line 362
    new-instance v3, Ljava/lang/StringBuilder;

    #@16
    const-string v4, "extraPerson_"

    #@18
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@1b
    add-int/lit8 v4, v2, 0x1

    #@1d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    move-result-object v3

    #@21
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v3

    #@25
    .line 363
    invoke-virtual {p0, v3}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    #@28
    move-result-object v3

    #@29
    .line 362
    invoke-static {v3}, Landroidx/core/app/Person;->fromPersistableBundle(Landroid/os/PersistableBundle;)Landroidx/core/app/Person;

    #@2c
    move-result-object v3

    #@2d
    aput-object v3, v1, v2

    #@2f
    move v2, v4

    #@30
    goto :goto_12

    #@31
    :cond_31
    return-object v1

    #@32
    :cond_32
    :goto_32
    const/4 p0, 0x0

    #@33
    return-object p0
.end method


# virtual methods
.method addToIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .registers 5

    #@0
    .line 193
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mIntents:[Landroid/content/Intent;

    #@2
    array-length v1, v0

    #@3
    add-int/lit8 v1, v1, -0x1

    #@5
    aget-object v0, v0, v1

    #@7
    const-string v1, "android.intent.extra.shortcut.INTENT"

    #@9
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@c
    move-result-object v0

    #@d
    iget-object v1, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mLabel:Ljava/lang/CharSequence;

    #@f
    .line 194
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    const-string v2, "android.intent.extra.shortcut.NAME"

    #@15
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@18
    .line 195
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    #@1a
    if-eqz v0, :cond_42

    #@1c
    .line 197
    iget-boolean v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mIsAlwaysBadged:Z

    #@1e
    const/4 v1, 0x0

    #@1f
    if-eqz v0, :cond_3b

    #@21
    .line 198
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mContext:Landroid/content/Context;

    #@23
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@26
    move-result-object v0

    #@27
    .line 199
    iget-object v2, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mActivity:Landroid/content/ComponentName;

    #@29
    if-eqz v2, :cond_2f

    #@2b
    .line 201
    :try_start_2b
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    #@2e
    move-result-object v1
    :try_end_2f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2b .. :try_end_2f} :catch_2f

    #@2f
    :catch_2f
    :cond_2f
    if-nez v1, :cond_3b

    #@31
    .line 207
    iget-object v1, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mContext:Landroid/content/Context;

    #@33
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@36
    move-result-object v1

    #@37
    invoke-virtual {v1, v0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    #@3a
    move-result-object v1

    #@3b
    .line 210
    :cond_3b
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    #@3d
    iget-object v2, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mContext:Landroid/content/Context;

    #@3f
    invoke-virtual {v0, p1, v1, v2}, Landroidx/core/graphics/drawable/IconCompat;->addToShortcutIntent(Landroid/content/Intent;Landroid/graphics/drawable/Drawable;Landroid/content/Context;)V

    #@42
    :cond_42
    return-object p1
.end method

.method public getActivity()Landroid/content/ComponentName;
    .registers 2

    #@0
    .line 246
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mActivity:Landroid/content/ComponentName;

    #@2
    return-object v0
.end method

.method public getCategories()Ljava/util/Set;
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
    .line 315
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mCategories:Ljava/util/Set;

    #@2
    return-object v0
.end method

.method public getDisabledMessage()Ljava/lang/CharSequence;
    .registers 2

    #@0
    .line 277
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mDisabledMessage:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public getDisabledReason()I
    .registers 2

    #@0
    .line 284
    iget v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mDisabledReason:I

    #@2
    return v0
.end method

.method public getExcludedFromSurfaces()I
    .registers 2

    #@0
    .line 524
    iget v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mExcludedSurfaces:I

    #@2
    return v0
.end method

.method public getExtras()Landroid/os/PersistableBundle;
    .registers 2

    #@0
    .line 397
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mExtras:Landroid/os/PersistableBundle;

    #@2
    return-object v0
.end method

.method public getIcon()Landroidx/core/graphics/drawable/IconCompat;
    .registers 2

    #@0
    .line 344
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    #@2
    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    #@0
    .line 224
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mId:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .registers 3

    #@0
    .line 295
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mIntents:[Landroid/content/Intent;

    #@2
    array-length v1, v0

    #@3
    add-int/lit8 v1, v1, -0x1

    #@5
    aget-object v0, v0, v1

    #@7
    return-object v0
.end method

.method public getIntents()[Landroid/content/Intent;
    .registers 3

    #@0
    .line 305
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mIntents:[Landroid/content/Intent;

    #@2
    array-length v1, v0

    #@3
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, [Landroid/content/Intent;

    #@9
    return-object v0
.end method

.method public getLastChangedTimestamp()J
    .registers 3

    #@0
    .line 423
    iget-wide v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mLastChangedTimestamp:J

    #@2
    return-wide v0
.end method

.method public getLocusId()Landroidx/core/content/LocusIdCompat;
    .registers 2

    #@0
    .line 327
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mLocusId:Landroidx/core/content/LocusIdCompat;

    #@2
    return-object v0
.end method

.method public getLongLabel()Ljava/lang/CharSequence;
    .registers 2

    #@0
    .line 266
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mLongLabel:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public getPackage()Ljava/lang/String;
    .registers 2

    #@0
    .line 232
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mPackageName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getRank()I
    .registers 2

    #@0
    .line 336
    iget v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mRank:I

    #@2
    return v0
.end method

.method public getShortLabel()Ljava/lang/CharSequence;
    .registers 2

    #@0
    .line 256
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mLabel:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public getTransientExtras()Landroid/os/Bundle;
    .registers 2

    #@0
    .line 408
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mTransientExtras:Landroid/os/Bundle;

    #@2
    return-object v0
.end method

.method public getUserHandle()Landroid/os/UserHandle;
    .registers 2

    #@0
    .line 416
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mUser:Landroid/os/UserHandle;

    #@2
    return-object v0
.end method

.method public hasKeyFieldsOnly()Z
    .registers 2

    #@0
    .line 496
    iget-boolean v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mHasKeyFieldsOnly:Z

    #@2
    return v0
.end method

.method public isCached()Z
    .registers 2

    #@0
    .line 428
    iget-boolean v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mIsCached:Z

    #@2
    return v0
.end method

.method public isDeclaredInManifest()Z
    .registers 2

    #@0
    .line 452
    iget-boolean v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mIsDeclaredInManifest:Z

    #@2
    return v0
.end method

.method public isDynamic()Z
    .registers 2

    #@0
    .line 433
    iget-boolean v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mIsDynamic:Z

    #@2
    return v0
.end method

.method public isEnabled()Z
    .registers 2

    #@0
    .line 476
    iget-boolean v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mIsEnabled:Z

    #@2
    return v0
.end method

.method public isExcludedFromSurfaces(I)Z
    .registers 3

    #@0
    .line 514
    iget v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mExcludedSurfaces:I

    #@2
    and-int/2addr p1, v0

    #@3
    if-eqz p1, :cond_7

    #@5
    const/4 p1, 0x1

    #@6
    goto :goto_8

    #@7
    :cond_7
    const/4 p1, 0x0

    #@8
    :goto_8
    return p1
.end method

.method public isImmutable()Z
    .registers 2

    #@0
    .line 468
    iget-boolean v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mIsImmutable:Z

    #@2
    return v0
.end method

.method public isPinned()Z
    .registers 2

    #@0
    .line 438
    iget-boolean v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mIsPinned:Z

    #@2
    return v0
.end method

.method public toShortcutInfo()Landroid/content/pm/ShortcutInfo;
    .registers 6

    #@0
    .line 126
    new-instance v0, Landroid/content/pm/ShortcutInfo$Builder;

    #@2
    iget-object v1, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mContext:Landroid/content/Context;

    #@4
    iget-object v2, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mId:Ljava/lang/String;

    #@6
    invoke-direct {v0, v1, v2}, Landroid/content/pm/ShortcutInfo$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    #@9
    iget-object v1, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mLabel:Ljava/lang/CharSequence;

    #@b
    .line 127
    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo$Builder;->setShortLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    #@e
    move-result-object v0

    #@f
    iget-object v1, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mIntents:[Landroid/content/Intent;

    #@11
    .line 128
    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo$Builder;->setIntents([Landroid/content/Intent;)Landroid/content/pm/ShortcutInfo$Builder;

    #@14
    move-result-object v0

    #@15
    .line 129
    iget-object v1, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    #@17
    if-eqz v1, :cond_22

    #@19
    .line 130
    iget-object v2, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mContext:Landroid/content/Context;

    #@1b
    invoke-virtual {v1, v2}, Landroidx/core/graphics/drawable/IconCompat;->toIcon(Landroid/content/Context;)Landroid/graphics/drawable/Icon;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/content/pm/ShortcutInfo$Builder;

    #@22
    .line 132
    :cond_22
    iget-object v1, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mLongLabel:Ljava/lang/CharSequence;

    #@24
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@27
    move-result v1

    #@28
    if-nez v1, :cond_2f

    #@2a
    .line 133
    iget-object v1, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mLongLabel:Ljava/lang/CharSequence;

    #@2c
    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo$Builder;->setLongLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    #@2f
    .line 135
    :cond_2f
    iget-object v1, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mDisabledMessage:Ljava/lang/CharSequence;

    #@31
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@34
    move-result v1

    #@35
    if-nez v1, :cond_3c

    #@37
    .line 136
    iget-object v1, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mDisabledMessage:Ljava/lang/CharSequence;

    #@39
    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo$Builder;->setDisabledMessage(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    #@3c
    .line 138
    :cond_3c
    iget-object v1, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mActivity:Landroid/content/ComponentName;

    #@3e
    if-eqz v1, :cond_43

    #@40
    .line 139
    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo$Builder;->setActivity(Landroid/content/ComponentName;)Landroid/content/pm/ShortcutInfo$Builder;

    #@43
    .line 141
    :cond_43
    iget-object v1, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mCategories:Ljava/util/Set;

    #@45
    if-eqz v1, :cond_4a

    #@47
    .line 142
    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo$Builder;->setCategories(Ljava/util/Set;)Landroid/content/pm/ShortcutInfo$Builder;

    #@4a
    .line 144
    :cond_4a
    iget v1, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mRank:I

    #@4c
    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo$Builder;->setRank(I)Landroid/content/pm/ShortcutInfo$Builder;

    #@4f
    .line 145
    iget-object v1, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mExtras:Landroid/os/PersistableBundle;

    #@51
    if-eqz v1, :cond_56

    #@53
    .line 146
    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/content/pm/ShortcutInfo$Builder;

    #@56
    .line 148
    :cond_56
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    #@58
    const/16 v2, 0x1d

    #@5a
    if-lt v1, v2, :cond_8a

    #@5c
    .line 149
    iget-object v1, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mPersons:[Landroidx/core/app/Person;

    #@5e
    if-eqz v1, :cond_79

    #@60
    array-length v2, v1

    #@61
    if-lez v2, :cond_79

    #@63
    .line 150
    array-length v1, v1

    #@64
    new-array v2, v1, [Landroid/app/Person;

    #@66
    const/4 v3, 0x0

    #@67
    :goto_67
    if-ge v3, v1, :cond_76

    #@69
    .line 152
    iget-object v4, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mPersons:[Landroidx/core/app/Person;

    #@6b
    aget-object v4, v4, v3

    #@6d
    invoke-virtual {v4}, Landroidx/core/app/Person;->toAndroidPerson()Landroid/app/Person;

    #@70
    move-result-object v4

    #@71
    aput-object v4, v2, v3

    #@73
    add-int/lit8 v3, v3, 0x1

    #@75
    goto :goto_67

    #@76
    .line 154
    :cond_76
    invoke-virtual {v0, v2}, Landroid/content/pm/ShortcutInfo$Builder;->setPersons([Landroid/app/Person;)Landroid/content/pm/ShortcutInfo$Builder;

    #@79
    .line 156
    :cond_79
    iget-object v1, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mLocusId:Landroidx/core/content/LocusIdCompat;

    #@7b
    if-eqz v1, :cond_84

    #@7d
    .line 157
    invoke-virtual {v1}, Landroidx/core/content/LocusIdCompat;->toLocusId()Landroid/content/LocusId;

    #@80
    move-result-object v1

    #@81
    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo$Builder;->setLocusId(Landroid/content/LocusId;)Landroid/content/pm/ShortcutInfo$Builder;

    #@84
    .line 159
    :cond_84
    iget-boolean v1, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mIsLongLived:Z

    #@86
    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo$Builder;->setLongLived(Z)Landroid/content/pm/ShortcutInfo$Builder;

    #@89
    goto :goto_91

    #@8a
    .line 164
    :cond_8a
    invoke-direct {p0}, Landroidx/core/content/pm/ShortcutInfoCompat;->buildLegacyExtrasBundle()Landroid/os/PersistableBundle;

    #@8d
    move-result-object v1

    #@8e
    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/content/pm/ShortcutInfo$Builder;

    #@91
    .line 166
    :goto_91
    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo$Builder;->build()Landroid/content/pm/ShortcutInfo;

    #@94
    move-result-object v0

    #@95
    return-object v0
.end method
