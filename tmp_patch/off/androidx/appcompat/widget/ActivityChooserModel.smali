.class Landroidx/appcompat/widget/ActivityChooserModel;
.super Landroid/database/DataSetObservable;
.source "ActivityChooserModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/ActivityChooserModel$PersistHistoryAsyncTask;,
        Landroidx/appcompat/widget/ActivityChooserModel$DefaultSorter;,
        Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;,
        Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;,
        Landroidx/appcompat/widget/ActivityChooserModel$OnChooseActivityListener;,
        Landroidx/appcompat/widget/ActivityChooserModel$ActivitySorter;,
        Landroidx/appcompat/widget/ActivityChooserModel$ActivityChooserModelClient;
    }
.end annotation


# static fields
.field static final ATTRIBUTE_ACTIVITY:Ljava/lang/String; = "activity"

.field static final ATTRIBUTE_TIME:Ljava/lang/String; = "time"

.field static final ATTRIBUTE_WEIGHT:Ljava/lang/String; = "weight"

.field static final DEBUG:Z = false

.field private static final DEFAULT_ACTIVITY_INFLATION:I = 0x5

.field private static final DEFAULT_HISTORICAL_RECORD_WEIGHT:F = 1.0f

.field public static final DEFAULT_HISTORY_FILE_NAME:Ljava/lang/String; = "activity_choser_model_history.xml"

.field public static final DEFAULT_HISTORY_MAX_LENGTH:I = 0x32

.field private static final HISTORY_FILE_EXTENSION:Ljava/lang/String; = ".xml"

.field private static final INVALID_INDEX:I = -0x1

.field static final LOG_TAG:Ljava/lang/String; = "ActivityChooserModel"

.field static final TAG_HISTORICAL_RECORD:Ljava/lang/String; = "historical-record"

.field static final TAG_HISTORICAL_RECORDS:Ljava/lang/String; = "historical-records"

.field private static final sDataModelRegistry:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/appcompat/widget/ActivityChooserModel;",
            ">;"
        }
    .end annotation
.end field

.field private static final sRegistryLock:Ljava/lang/Object;


# instance fields
.field private final mActivities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mActivityChoserModelPolicy:Landroidx/appcompat/widget/ActivityChooserModel$OnChooseActivityListener;

.field private mActivitySorter:Landroidx/appcompat/widget/ActivityChooserModel$ActivitySorter;

.field mCanReadHistoricalData:Z

.field final mContext:Landroid/content/Context;

.field private final mHistoricalRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mHistoricalRecordsChanged:Z

.field final mHistoryFileName:Ljava/lang/String;

.field private mHistoryMaxSize:I

.field private final mInstanceLock:Ljava/lang/Object;

.field private mIntent:Landroid/content/Intent;

.field private mReadShareHistoryCalled:Z

.field private mReloadActivities:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 217
    new-instance v0, Ljava/lang/Object;

    #@2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@5
    sput-object v0, Landroidx/appcompat/widget/ActivityChooserModel;->sRegistryLock:Ljava/lang/Object;

    #@7
    .line 222
    new-instance v0, Ljava/util/HashMap;

    #@9
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@c
    sput-object v0, Landroidx/appcompat/widget/ActivityChooserModel;->sDataModelRegistry:Ljava/util/Map;

    #@e
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    #@0
    .line 345
    invoke-direct {p0}, Landroid/database/DataSetObservable;-><init>()V

    #@3
    .line 228
    new-instance v0, Ljava/lang/Object;

    #@5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v0, p0, Landroidx/appcompat/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    #@a
    .line 233
    new-instance v0, Ljava/util/ArrayList;

    #@c
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@f
    iput-object v0, p0, Landroidx/appcompat/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    #@11
    .line 238
    new-instance v0, Ljava/util/ArrayList;

    #@13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@16
    iput-object v0, p0, Landroidx/appcompat/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    #@18
    .line 258
    new-instance v0, Landroidx/appcompat/widget/ActivityChooserModel$DefaultSorter;

    #@1a
    invoke-direct {v0}, Landroidx/appcompat/widget/ActivityChooserModel$DefaultSorter;-><init>()V

    #@1d
    iput-object v0, p0, Landroidx/appcompat/widget/ActivityChooserModel;->mActivitySorter:Landroidx/appcompat/widget/ActivityChooserModel$ActivitySorter;

    #@1f
    const/16 v0, 0x32

    #@21
    .line 263
    iput v0, p0, Landroidx/appcompat/widget/ActivityChooserModel;->mHistoryMaxSize:I

    #@23
    const/4 v0, 0x1

    #@24
    .line 273
    iput-boolean v0, p0, Landroidx/appcompat/widget/ActivityChooserModel;->mCanReadHistoricalData:Z

    #@26
    const/4 v1, 0x0

    #@27
    .line 284
    iput-boolean v1, p0, Landroidx/appcompat/widget/ActivityChooserModel;->mReadShareHistoryCalled:Z

    #@29
    .line 292
    iput-boolean v0, p0, Landroidx/appcompat/widget/ActivityChooserModel;->mHistoricalRecordsChanged:Z

    #@2b
    .line 297
    iput-boolean v1, p0, Landroidx/appcompat/widget/ActivityChooserModel;->mReloadActivities:Z

    #@2d
    .line 346
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    #@30
    move-result-object p1

    #@31
    iput-object p1, p0, Landroidx/appcompat/widget/ActivityChooserModel;->mContext:Landroid/content/Context;

    #@33
    .line 347
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@36
    move-result p1

    #@37
    if-nez p1, :cond_55

    #@39
    const-string p1, ".xml"

    #@3b
    .line 348
    invoke-virtual {p2, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@3e
    move-result v0

    #@3f
    if-nez v0, :cond_55

    #@41
    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    #@43
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@46
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object p2

    #@4a
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object p1

    #@4e
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object p1

    #@52
    iput-object p1, p0, Landroidx/appcompat/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    #@54
    goto :goto_57

    #@55
    .line 351
    :cond_55
    iput-object p2, p0, Landroidx/appcompat/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    #@57
    :goto_57
    return-void
.end method

.method private addHistoricalRecord(Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;)Z
    .registers 3

    #@0
    .line 727
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    #@2
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@5
    move-result p1

    #@6
    if-eqz p1, :cond_17

    #@8
    const/4 v0, 0x1

    #@9
    .line 729
    iput-boolean v0, p0, Landroidx/appcompat/widget/ActivityChooserModel;->mHistoricalRecordsChanged:Z

    #@b
    .line 730
    invoke-direct {p0}, Landroidx/appcompat/widget/ActivityChooserModel;->pruneExcessiveHistoricalRecordsIfNeeded()V

    #@e
    .line 731
    invoke-direct {p0}, Landroidx/appcompat/widget/ActivityChooserModel;->persistHistoricalDataIfNeeded()V

    #@11
    .line 732
    invoke-direct {p0}, Landroidx/appcompat/widget/ActivityChooserModel;->sortActivitiesIfNeeded()Z

    #@14
    .line 733
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActivityChooserModel;->notifyChanged()V

    #@17
    :cond_17
    return p1
.end method

.method private ensureConsistentState()V
    .registers 3

    #@0
    .line 654
    invoke-direct {p0}, Landroidx/appcompat/widget/ActivityChooserModel;->loadActivitiesIfNeeded()Z

    #@3
    move-result v0

    #@4
    .line 655
    invoke-direct {p0}, Landroidx/appcompat/widget/ActivityChooserModel;->readHistoricalDataIfNeeded()Z

    #@7
    move-result v1

    #@8
    or-int/2addr v0, v1

    #@9
    .line 656
    invoke-direct {p0}, Landroidx/appcompat/widget/ActivityChooserModel;->pruneExcessiveHistoricalRecordsIfNeeded()V

    #@c
    if-eqz v0, :cond_14

    #@e
    .line 658
    invoke-direct {p0}, Landroidx/appcompat/widget/ActivityChooserModel;->sortActivitiesIfNeeded()Z

    #@11
    .line 659
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActivityChooserModel;->notifyChanged()V

    #@14
    :cond_14
    return-void
.end method

.method public static get(Landroid/content/Context;Ljava/lang/String;)Landroidx/appcompat/widget/ActivityChooserModel;
    .registers 5

    #@0
    .line 329
    sget-object v0, Landroidx/appcompat/widget/ActivityChooserModel;->sRegistryLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 330
    :try_start_3
    sget-object v1, Landroidx/appcompat/widget/ActivityChooserModel;->sDataModelRegistry:Ljava/util/Map;

    #@5
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v2

    #@9
    check-cast v2, Landroidx/appcompat/widget/ActivityChooserModel;

    #@b
    if-nez v2, :cond_15

    #@d
    .line 332
    new-instance v2, Landroidx/appcompat/widget/ActivityChooserModel;

    #@f
    invoke-direct {v2, p0, p1}, Landroidx/appcompat/widget/ActivityChooserModel;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    #@12
    .line 333
    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    .line 335
    :cond_15
    monitor-exit v0

    #@16
    return-object v2

    #@17
    :catchall_17
    move-exception p0

    #@18
    .line 336
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    #@19
    throw p0
.end method

.method private loadActivitiesIfNeeded()Z
    .registers 7

    #@0
    .line 687
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActivityChooserModel;->mReloadActivities:Z

    #@2
    const/4 v1, 0x0

    #@3
    if-eqz v0, :cond_37

    #@5
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;

    #@7
    if-eqz v0, :cond_37

    #@9
    .line 688
    iput-boolean v1, p0, Landroidx/appcompat/widget/ActivityChooserModel;->mReloadActivities:Z

    #@b
    .line 689
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    #@d
    invoke-interface {v0}, Ljava/util/List;->clear()V

    #@10
    .line 690
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserModel;->mContext:Landroid/content/Context;

    #@12
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@15
    move-result-object v0

    #@16
    iget-object v2, p0, Landroidx/appcompat/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;

    #@18
    .line 691
    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    #@1b
    move-result-object v0

    #@1c
    .line 692
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@1f
    move-result v2

    #@20
    :goto_20
    if-ge v1, v2, :cond_35

    #@22
    .line 694
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@25
    move-result-object v3

    #@26
    check-cast v3, Landroid/content/pm/ResolveInfo;

    #@28
    .line 695
    iget-object v4, p0, Landroidx/appcompat/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    #@2a
    new-instance v5, Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;

    #@2c
    invoke-direct {v5, v3}, Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;-><init>(Landroid/content/pm/ResolveInfo;)V

    #@2f
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@32
    add-int/lit8 v1, v1, 0x1

    #@34
    goto :goto_20

    #@35
    :cond_35
    const/4 v0, 0x1

    #@36
    return v0

    #@37
    :cond_37
    return v1
.end method

.method private persistHistoricalDataIfNeeded()V
    .registers 7

    #@0
    .line 565
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActivityChooserModel;->mReadShareHistoryCalled:Z

    #@2
    if-eqz v0, :cond_30

    #@4
    .line 568
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActivityChooserModel;->mHistoricalRecordsChanged:Z

    #@6
    if-nez v0, :cond_9

    #@8
    return-void

    #@9
    :cond_9
    const/4 v0, 0x0

    #@a
    .line 571
    iput-boolean v0, p0, Landroidx/appcompat/widget/ActivityChooserModel;->mHistoricalRecordsChanged:Z

    #@c
    .line 572
    iget-object v1, p0, Landroidx/appcompat/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    #@e
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@11
    move-result v1

    #@12
    if-nez v1, :cond_2f

    #@14
    .line 573
    new-instance v1, Landroidx/appcompat/widget/ActivityChooserModel$PersistHistoryAsyncTask;

    #@16
    invoke-direct {v1, p0}, Landroidx/appcompat/widget/ActivityChooserModel$PersistHistoryAsyncTask;-><init>(Landroidx/appcompat/widget/ActivityChooserModel;)V

    #@19
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    #@1b
    const/4 v3, 0x2

    #@1c
    new-array v3, v3, [Ljava/lang/Object;

    #@1e
    new-instance v4, Ljava/util/ArrayList;

    #@20
    iget-object v5, p0, Landroidx/appcompat/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    #@22
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@25
    aput-object v4, v3, v0

    #@27
    const/4 v0, 0x1

    #@28
    iget-object v4, p0, Landroidx/appcompat/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    #@2a
    aput-object v4, v3, v0

    #@2c
    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/widget/ActivityChooserModel$PersistHistoryAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    #@2f
    :cond_2f
    return-void

    #@30
    .line 566
    :cond_30
    new-instance v0, Ljava/lang/IllegalStateException;

    #@32
    const-string v1, "No preceding call to #readHistoricalData"

    #@34
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@37
    throw v0
.end method

.method private pruneExcessiveHistoricalRecordsIfNeeded()V
    .registers 5

    #@0
    .line 742
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@5
    move-result v0

    #@6
    iget v1, p0, Landroidx/appcompat/widget/ActivityChooserModel;->mHistoryMaxSize:I

    #@8
    sub-int/2addr v0, v1

    #@9
    if-gtz v0, :cond_c

    #@b
    return-void

    #@c
    :cond_c
    const/4 v1, 0x1

    #@d
    .line 746
    iput-boolean v1, p0, Landroidx/appcompat/widget/ActivityChooserModel;->mHistoricalRecordsChanged:Z

    #@f
    const/4 v1, 0x0

    #@10
    move v2, v1

    #@11
    :goto_11
    if-ge v2, v0, :cond_1e

    #@13
    .line 748
    iget-object v3, p0, Landroidx/appcompat/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    #@15
    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@18
    move-result-object v3

    #@19
    check-cast v3, Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;

    #@1b
    add-int/lit8 v2, v2, 0x1

    #@1d
    goto :goto_11

    #@1e
    :cond_1e
    return-void
.end method

.method private readHistoricalDataIfNeeded()Z
    .registers 3

    #@0
    .line 710
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActivityChooserModel;->mCanReadHistoricalData:Z

    #@2
    const/4 v1, 0x0

    #@3
    if-eqz v0, :cond_1a

    #@5
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActivityChooserModel;->mHistoricalRecordsChanged:Z

    #@7
    if-eqz v0, :cond_1a

    #@9
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    #@b
    .line 711
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@e
    move-result v0

    #@f
    if-nez v0, :cond_1a

    #@11
    .line 712
    iput-boolean v1, p0, Landroidx/appcompat/widget/ActivityChooserModel;->mCanReadHistoricalData:Z

    #@13
    const/4 v0, 0x1

    #@14
    .line 713
    iput-boolean v0, p0, Landroidx/appcompat/widget/ActivityChooserModel;->mReadShareHistoryCalled:Z

    #@16
    .line 714
    invoke-direct {p0}, Landroidx/appcompat/widget/ActivityChooserModel;->readHistoricalDataImpl()V

    #@19
    return v0

    #@1a
    :cond_1a
    return v1
.end method

.method private readHistoricalDataImpl()V
    .registers 11

    #@0
    const-string v0, "Error reading historical recrod file: "

    #@2
    .line 966
    :try_start_2
    iget-object v1, p0, Landroidx/appcompat/widget/ActivityChooserModel;->mContext:Landroid/content/Context;

    #@4
    iget-object v2, p0, Landroidx/appcompat/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    #@6
    invoke-virtual {v1, v2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    #@9
    move-result-object v1
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_a} :catch_c6

    #@a
    .line 974
    :try_start_a
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    #@d
    move-result-object v2

    #@e
    const-string v3, "UTF-8"

    #@10
    .line 975
    invoke-interface {v2, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    #@13
    const/4 v3, 0x0

    #@14
    :goto_14
    const/4 v4, 0x1

    #@15
    if-eq v3, v4, :cond_1f

    #@17
    const/4 v5, 0x2

    #@18
    if-eq v3, v5, :cond_1f

    #@1a
    .line 979
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@1d
    move-result v3

    #@1e
    goto :goto_14

    #@1f
    :cond_1f
    const-string v3, "historical-records"

    #@21
    .line 982
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@24
    move-result-object v5

    #@25
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@28
    move-result v3

    #@29
    if-eqz v3, :cond_7c

    #@2b
    .line 987
    iget-object v3, p0, Landroidx/appcompat/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    #@2d
    .line 988
    invoke-interface {v3}, Ljava/util/List;->clear()V

    #@30
    .line 991
    :cond_30
    :goto_30
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@33
    move-result v5
    :try_end_34
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_34} :catch_a2
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_34} :catch_86
    .catchall {:try_start_a .. :try_end_34} :catchall_84

    #@34
    if-ne v5, v4, :cond_3d

    #@36
    if-eqz v1, :cond_bf

    #@38
    .line 1026
    :goto_38
    :try_start_38
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_bf

    #@3b
    goto/16 :goto_bf

    #@3d
    :cond_3d
    const/4 v6, 0x3

    #@3e
    if-eq v5, v6, :cond_30

    #@40
    const/4 v6, 0x4

    #@41
    if-ne v5, v6, :cond_44

    #@43
    goto :goto_30

    #@44
    .line 998
    :cond_44
    :try_start_44
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@47
    move-result-object v5

    #@48
    const-string v6, "historical-record"

    #@4a
    .line 999
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4d
    move-result v5

    #@4e
    if-eqz v5, :cond_74

    #@50
    const-string v5, "activity"

    #@52
    const/4 v6, 0x0

    #@53
    .line 1003
    invoke-interface {v2, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@56
    move-result-object v5

    #@57
    const-string v7, "time"

    #@59
    .line 1005
    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@5c
    move-result-object v7

    #@5d
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@60
    move-result-wide v7

    #@61
    const-string v9, "weight"

    #@63
    .line 1007
    invoke-interface {v2, v6, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@66
    move-result-object v6

    #@67
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    #@6a
    move-result v6

    #@6b
    .line 1008
    new-instance v9, Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;

    #@6d
    invoke-direct {v9, v5, v7, v8, v6}, Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;-><init>(Ljava/lang/String;JF)V

    #@70
    .line 1009
    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@73
    goto :goto_30

    #@74
    .line 1000
    :cond_74
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    #@76
    const-string v3, "Share records file not well-formed."

    #@78
    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@7b
    throw v2

    #@7c
    .line 983
    :cond_7c
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    #@7e
    const-string v3, "Share records file does not start with historical-records tag."

    #@80
    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@83
    throw v2
    :try_end_84
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_44 .. :try_end_84} :catch_a2
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_84} :catch_86
    .catchall {:try_start_44 .. :try_end_84} :catchall_84

    #@84
    :catchall_84
    move-exception v0

    #@85
    goto :goto_c0

    #@86
    :catch_86
    move-exception v2

    #@87
    .line 1022
    :try_start_87
    sget-object v3, Landroidx/appcompat/widget/ActivityChooserModel;->LOG_TAG:Ljava/lang/String;

    #@89
    new-instance v4, Ljava/lang/StringBuilder;

    #@8b
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@8e
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91
    move-result-object v0

    #@92
    iget-object v4, p0, Landroidx/appcompat/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    #@94
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97
    move-result-object v0

    #@98
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9b
    move-result-object v0

    #@9c
    invoke-static {v3, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@9f
    if-eqz v1, :cond_bf

    #@a1
    goto :goto_38

    #@a2
    :catch_a2
    move-exception v2

    #@a3
    .line 1020
    sget-object v3, Landroidx/appcompat/widget/ActivityChooserModel;->LOG_TAG:Ljava/lang/String;

    #@a5
    new-instance v4, Ljava/lang/StringBuilder;

    #@a7
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@aa
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ad
    move-result-object v0

    #@ae
    iget-object v4, p0, Landroidx/appcompat/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    #@b0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b3
    move-result-object v0

    #@b4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b7
    move-result-object v0

    #@b8
    invoke-static {v3, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_bb
    .catchall {:try_start_87 .. :try_end_bb} :catchall_84

    #@bb
    if-eqz v1, :cond_bf

    #@bd
    goto/16 :goto_38

    #@bf
    :catch_bf
    :cond_bf
    :goto_bf
    return-void

    #@c0
    :goto_c0
    if-eqz v1, :cond_c5

    #@c2
    .line 1026
    :try_start_c2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_c5
    .catch Ljava/io/IOException; {:try_start_c2 .. :try_end_c5} :catch_c5

    #@c5
    .line 1031
    :catch_c5
    :cond_c5
    throw v0

    #@c6
    :catch_c6
    return-void
.end method

.method private sortActivitiesIfNeeded()Z
    .registers 5

    #@0
    .line 671
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserModel;->mActivitySorter:Landroidx/appcompat/widget/ActivityChooserModel$ActivitySorter;

    #@2
    if-eqz v0, :cond_29

    #@4
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;

    #@6
    if-eqz v0, :cond_29

    #@8
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    #@a
    .line 672
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@d
    move-result v0

    #@e
    if-nez v0, :cond_29

    #@10
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    #@12
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@15
    move-result v0

    #@16
    if-nez v0, :cond_29

    #@18
    .line 673
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserModel;->mActivitySorter:Landroidx/appcompat/widget/ActivityChooserModel$ActivitySorter;

    #@1a
    iget-object v1, p0, Landroidx/appcompat/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;

    #@1c
    iget-object v2, p0, Landroidx/appcompat/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    #@1e
    iget-object v3, p0, Landroidx/appcompat/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    #@20
    .line 674
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@23
    move-result-object v3

    #@24
    .line 673
    invoke-interface {v0, v1, v2, v3}, Landroidx/appcompat/widget/ActivityChooserModel$ActivitySorter;->sort(Landroid/content/Intent;Ljava/util/List;Ljava/util/List;)V

    #@27
    const/4 v0, 0x1

    #@28
    return v0

    #@29
    :cond_29
    const/4 v0, 0x0

    #@2a
    return v0
.end method


# virtual methods
.method public chooseActivity(I)Landroid/content/Intent;
    .registers 8

    #@0
    .line 456
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 457
    :try_start_3
    iget-object v1, p0, Landroidx/appcompat/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;

    #@5
    const/4 v2, 0x0

    #@6
    if-nez v1, :cond_a

    #@8
    .line 458
    monitor-exit v0

    #@9
    return-object v2

    #@a
    .line 461
    :cond_a
    invoke-direct {p0}, Landroidx/appcompat/widget/ActivityChooserModel;->ensureConsistentState()V

    #@d
    .line 463
    iget-object v1, p0, Landroidx/appcompat/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    #@f
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@12
    move-result-object p1

    #@13
    check-cast p1, Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;

    #@15
    .line 465
    new-instance v1, Landroid/content/ComponentName;

    #@17
    iget-object v3, p1, Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    #@19
    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@1b
    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@1d
    iget-object p1, p1, Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    #@1f
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@21
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@23
    invoke-direct {v1, v3, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@26
    .line 469
    new-instance p1, Landroid/content/Intent;

    #@28
    iget-object v3, p0, Landroidx/appcompat/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;

    #@2a
    invoke-direct {p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    #@2d
    .line 470
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@30
    .line 472
    iget-object v3, p0, Landroidx/appcompat/widget/ActivityChooserModel;->mActivityChoserModelPolicy:Landroidx/appcompat/widget/ActivityChooserModel$OnChooseActivityListener;

    #@32
    if-eqz v3, :cond_43

    #@34
    .line 474
    new-instance v3, Landroid/content/Intent;

    #@36
    invoke-direct {v3, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    #@39
    .line 475
    iget-object v4, p0, Landroidx/appcompat/widget/ActivityChooserModel;->mActivityChoserModelPolicy:Landroidx/appcompat/widget/ActivityChooserModel$OnChooseActivityListener;

    #@3b
    invoke-interface {v4, p0, v3}, Landroidx/appcompat/widget/ActivityChooserModel$OnChooseActivityListener;->onChooseActivity(Landroidx/appcompat/widget/ActivityChooserModel;Landroid/content/Intent;)Z

    #@3e
    move-result v3

    #@3f
    if-eqz v3, :cond_43

    #@41
    .line 478
    monitor-exit v0

    #@42
    return-object v2

    #@43
    .line 482
    :cond_43
    new-instance v2, Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;

    #@45
    .line 483
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@48
    move-result-wide v3

    #@49
    const/high16 v5, 0x3f800000    # 1.0f

    #@4b
    invoke-direct {v2, v1, v3, v4, v5}, Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;-><init>(Landroid/content/ComponentName;JF)V

    #@4e
    .line 484
    invoke-direct {p0, v2}, Landroidx/appcompat/widget/ActivityChooserModel;->addHistoricalRecord(Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;)Z

    #@51
    .line 486
    monitor-exit v0

    #@52
    return-object p1

    #@53
    :catchall_53
    move-exception p1

    #@54
    .line 487
    monitor-exit v0
    :try_end_55
    .catchall {:try_start_3 .. :try_end_55} :catchall_53

    #@55
    throw p1
.end method

.method public getActivity(I)Landroid/content/pm/ResolveInfo;
    .registers 4

    #@0
    .line 409
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 410
    :try_start_3
    invoke-direct {p0}, Landroidx/appcompat/widget/ActivityChooserModel;->ensureConsistentState()V

    #@6
    .line 411
    iget-object v1, p0, Landroidx/appcompat/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    #@8
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@b
    move-result-object p1

    #@c
    check-cast p1, Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;

    #@e
    iget-object p1, p1, Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    #@10
    monitor-exit v0

    #@11
    return-object p1

    #@12
    :catchall_12
    move-exception p1

    #@13
    .line 412
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    #@14
    throw p1
.end method

.method public getActivityCount()I
    .registers 3

    #@0
    .line 394
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 395
    :try_start_3
    invoke-direct {p0}, Landroidx/appcompat/widget/ActivityChooserModel;->ensureConsistentState()V

    #@6
    .line 396
    iget-object v1, p0, Landroidx/appcompat/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    #@8
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@b
    move-result v1

    #@c
    monitor-exit v0

    #@d
    return v1

    #@e
    :catchall_e
    move-exception v1

    #@f
    .line 397
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    #@10
    throw v1
.end method

.method public getActivityIndex(Landroid/content/pm/ResolveInfo;)I
    .registers 7

    #@0
    .line 423
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 424
    :try_start_3
    invoke-direct {p0}, Landroidx/appcompat/widget/ActivityChooserModel;->ensureConsistentState()V

    #@6
    .line 425
    iget-object v1, p0, Landroidx/appcompat/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    #@8
    .line 426
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@b
    move-result v2

    #@c
    const/4 v3, 0x0

    #@d
    :goto_d
    if-ge v3, v2, :cond_1e

    #@f
    .line 428
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v4

    #@13
    check-cast v4, Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;

    #@15
    .line 429
    iget-object v4, v4, Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    #@17
    if-ne v4, p1, :cond_1b

    #@19
    .line 430
    monitor-exit v0

    #@1a
    return v3

    #@1b
    :cond_1b
    add-int/lit8 v3, v3, 0x1

    #@1d
    goto :goto_d

    #@1e
    .line 433
    :cond_1e
    monitor-exit v0

    #@1f
    const/4 p1, -0x1

    #@20
    return p1

    #@21
    :catchall_21
    move-exception p1

    #@22
    .line 434
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    #@23
    throw p1
.end method

.method public getDefaultActivity()Landroid/content/pm/ResolveInfo;
    .registers 4

    #@0
    .line 511
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 512
    :try_start_3
    invoke-direct {p0}, Landroidx/appcompat/widget/ActivityChooserModel;->ensureConsistentState()V

    #@6
    .line 513
    iget-object v1, p0, Landroidx/appcompat/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    #@8
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    #@b
    move-result v1

    #@c
    if-nez v1, :cond_1b

    #@e
    .line 514
    iget-object v1, p0, Landroidx/appcompat/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    #@10
    const/4 v2, 0x0

    #@11
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v1

    #@15
    check-cast v1, Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;

    #@17
    iget-object v1, v1, Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    #@19
    monitor-exit v0

    #@1a
    return-object v1

    #@1b
    .line 516
    :cond_1b
    monitor-exit v0

    #@1c
    const/4 v0, 0x0

    #@1d
    return-object v0

    #@1e
    :catchall_1e
    move-exception v1

    #@1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    #@20
    throw v1
.end method

.method public getHistoryMaxSize()I
    .registers 3

    #@0
    .line 630
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 631
    :try_start_3
    iget v1, p0, Landroidx/appcompat/widget/ActivityChooserModel;->mHistoryMaxSize:I

    #@5
    monitor-exit v0

    #@6
    return v1

    #@7
    :catchall_7
    move-exception v1

    #@8
    .line 632
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    #@9
    throw v1
.end method

.method public getHistorySize()I
    .registers 3

    #@0
    .line 641
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 642
    :try_start_3
    invoke-direct {p0}, Landroidx/appcompat/widget/ActivityChooserModel;->ensureConsistentState()V

    #@6
    .line 643
    iget-object v1, p0, Landroidx/appcompat/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    #@8
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@b
    move-result v1

    #@c
    monitor-exit v0

    #@d
    return v1

    #@e
    :catchall_e
    move-exception v1

    #@f
    .line 644
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    #@10
    throw v1
.end method

.method public getIntent()Landroid/content/Intent;
    .registers 3

    #@0
    .line 381
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 382
    :try_start_3
    iget-object v1, p0, Landroidx/appcompat/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;

    #@5
    monitor-exit v0

    #@6
    return-object v1

    #@7
    :catchall_7
    move-exception v1

    #@8
    .line 383
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    #@9
    throw v1
.end method

.method public setActivitySorter(Landroidx/appcompat/widget/ActivityChooserModel$ActivitySorter;)V
    .registers 4

    #@0
    .line 587
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 588
    :try_start_3
    iget-object v1, p0, Landroidx/appcompat/widget/ActivityChooserModel;->mActivitySorter:Landroidx/appcompat/widget/ActivityChooserModel$ActivitySorter;

    #@5
    if-ne v1, p1, :cond_9

    #@7
    .line 589
    monitor-exit v0

    #@8
    return-void

    #@9
    .line 591
    :cond_9
    iput-object p1, p0, Landroidx/appcompat/widget/ActivityChooserModel;->mActivitySorter:Landroidx/appcompat/widget/ActivityChooserModel$ActivitySorter;

    #@b
    .line 592
    invoke-direct {p0}, Landroidx/appcompat/widget/ActivityChooserModel;->sortActivitiesIfNeeded()Z

    #@e
    move-result p1

    #@f
    if-eqz p1, :cond_14

    #@11
    .line 593
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActivityChooserModel;->notifyChanged()V

    #@14
    .line 595
    :cond_14
    monitor-exit v0

    #@15
    return-void

    #@16
    :catchall_16
    move-exception p1

    #@17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    #@18
    throw p1
.end method

.method public setDefaultActivity(I)V
    .registers 7

    #@0
    .line 531
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 532
    :try_start_3
    invoke-direct {p0}, Landroidx/appcompat/widget/ActivityChooserModel;->ensureConsistentState()V

    #@6
    .line 534
    iget-object v1, p0, Landroidx/appcompat/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    #@8
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@b
    move-result-object p1

    #@c
    check-cast p1, Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;

    #@e
    .line 535
    iget-object v1, p0, Landroidx/appcompat/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    #@10
    const/4 v2, 0x0

    #@11
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v1

    #@15
    check-cast v1, Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;

    #@17
    if-eqz v1, :cond_22

    #@19
    .line 540
    iget v1, v1, Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    #@1b
    iget v2, p1, Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    #@1d
    sub-float/2addr v1, v2

    #@1e
    const/high16 v2, 0x40a00000    # 5.0f

    #@20
    add-float/2addr v1, v2

    #@21
    goto :goto_24

    #@22
    :cond_22
    const/high16 v1, 0x3f800000    # 1.0f

    #@24
    .line 546
    :goto_24
    new-instance v2, Landroid/content/ComponentName;

    #@26
    iget-object v3, p1, Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    #@28
    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@2a
    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@2c
    iget-object p1, p1, Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    #@2e
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@30
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@32
    invoke-direct {v2, v3, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@35
    .line 549
    new-instance p1, Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;

    #@37
    .line 550
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3a
    move-result-wide v3

    #@3b
    invoke-direct {p1, v2, v3, v4, v1}, Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;-><init>(Landroid/content/ComponentName;JF)V

    #@3e
    .line 551
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/ActivityChooserModel;->addHistoricalRecord(Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;)Z

    #@41
    .line 552
    monitor-exit v0

    #@42
    return-void

    #@43
    :catchall_43
    move-exception p1

    #@44
    monitor-exit v0
    :try_end_45
    .catchall {:try_start_3 .. :try_end_45} :catchall_43

    #@45
    throw p1
.end method

.method public setHistoryMaxSize(I)V
    .registers 4

    #@0
    .line 612
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 613
    :try_start_3
    iget v1, p0, Landroidx/appcompat/widget/ActivityChooserModel;->mHistoryMaxSize:I

    #@5
    if-ne v1, p1, :cond_9

    #@7
    .line 614
    monitor-exit v0

    #@8
    return-void

    #@9
    .line 616
    :cond_9
    iput p1, p0, Landroidx/appcompat/widget/ActivityChooserModel;->mHistoryMaxSize:I

    #@b
    .line 617
    invoke-direct {p0}, Landroidx/appcompat/widget/ActivityChooserModel;->pruneExcessiveHistoricalRecordsIfNeeded()V

    #@e
    .line 618
    invoke-direct {p0}, Landroidx/appcompat/widget/ActivityChooserModel;->sortActivitiesIfNeeded()Z

    #@11
    move-result p1

    #@12
    if-eqz p1, :cond_17

    #@14
    .line 619
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActivityChooserModel;->notifyChanged()V

    #@17
    .line 621
    :cond_17
    monitor-exit v0

    #@18
    return-void

    #@19
    :catchall_19
    move-exception p1

    #@1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    #@1b
    throw p1
.end method

.method public setIntent(Landroid/content/Intent;)V
    .registers 4

    #@0
    .line 365
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 366
    :try_start_3
    iget-object v1, p0, Landroidx/appcompat/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;

    #@5
    if-ne v1, p1, :cond_9

    #@7
    .line 367
    monitor-exit v0

    #@8
    return-void

    #@9
    .line 369
    :cond_9
    iput-object p1, p0, Landroidx/appcompat/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;

    #@b
    const/4 p1, 0x1

    #@c
    .line 370
    iput-boolean p1, p0, Landroidx/appcompat/widget/ActivityChooserModel;->mReloadActivities:Z

    #@e
    .line 371
    invoke-direct {p0}, Landroidx/appcompat/widget/ActivityChooserModel;->ensureConsistentState()V

    #@11
    .line 372
    monitor-exit v0

    #@12
    return-void

    #@13
    :catchall_13
    move-exception p1

    #@14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    #@15
    throw p1
.end method

.method public setOnChooseActivityListener(Landroidx/appcompat/widget/ActivityChooserModel$OnChooseActivityListener;)V
    .registers 3

    #@0
    .line 496
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 497
    :try_start_3
    iput-object p1, p0, Landroidx/appcompat/widget/ActivityChooserModel;->mActivityChoserModelPolicy:Landroidx/appcompat/widget/ActivityChooserModel$OnChooseActivityListener;

    #@5
    .line 498
    monitor-exit v0

    #@6
    return-void

    #@7
    :catchall_7
    move-exception p1

    #@8
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    #@9
    throw p1
.end method
