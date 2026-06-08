.class public Landroidx/core/app/ShareCompat$IntentReader;
.super Ljava/lang/Object;
.source "ShareCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/ShareCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntentReader"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "IntentReader"


# instance fields
.field private final mCallingActivity:Landroid/content/ComponentName;

.field private final mCallingPackage:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mIntent:Landroid/content/Intent;

.field private mStreams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3

    #@0
    .line 743
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/content/Context;

    #@6
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    #@9
    move-result-object p1

    #@a
    invoke-direct {p0, v0, p1}, Landroidx/core/app/ShareCompat$IntentReader;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    #@d
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    #@0
    .line 753
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 754
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object p1

    #@7
    check-cast p1, Landroid/content/Context;

    #@9
    iput-object p1, p0, Landroidx/core/app/ShareCompat$IntentReader;->mContext:Landroid/content/Context;

    #@b
    .line 755
    invoke-static {p2}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@e
    move-result-object p1

    #@f
    check-cast p1, Landroid/content/Intent;

    #@11
    iput-object p1, p0, Landroidx/core/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    #@13
    .line 756
    invoke-static {p2}, Landroidx/core/app/ShareCompat;->getCallingPackage(Landroid/content/Intent;)Ljava/lang/String;

    #@16
    move-result-object p1

    #@17
    iput-object p1, p0, Landroidx/core/app/ShareCompat$IntentReader;->mCallingPackage:Ljava/lang/String;

    #@19
    .line 757
    invoke-static {p2}, Landroidx/core/app/ShareCompat;->getCallingActivity(Landroid/content/Intent;)Landroid/content/ComponentName;

    #@1c
    move-result-object p1

    #@1d
    iput-object p1, p0, Landroidx/core/app/ShareCompat$IntentReader;->mCallingActivity:Landroid/content/ComponentName;

    #@1f
    return-void
.end method

.method public static from(Landroid/app/Activity;)Landroidx/core/app/ShareCompat$IntentReader;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 733
    new-instance v0, Landroidx/core/app/ShareCompat$IntentReader;

    #@2
    invoke-direct {v0, p0}, Landroidx/core/app/ShareCompat$IntentReader;-><init>(Landroid/app/Activity;)V

    #@5
    return-object v0
.end method

.method private static withinStyle(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;II)V
    .registers 7

    #@0
    :goto_0
    if-ge p2, p3, :cond_5a

    #@2
    .line 851
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    #@5
    move-result v0

    #@6
    const/16 v1, 0x3c

    #@8
    if-ne v0, v1, :cond_10

    #@a
    const-string v0, "&lt;"

    #@c
    .line 854
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    goto :goto_57

    #@10
    :cond_10
    const/16 v1, 0x3e

    #@12
    if-ne v0, v1, :cond_1a

    #@14
    const-string v0, "&gt;"

    #@16
    .line 856
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    goto :goto_57

    #@1a
    :cond_1a
    const/16 v1, 0x26

    #@1c
    if-ne v0, v1, :cond_24

    #@1e
    const-string v0, "&amp;"

    #@20
    .line 858
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    goto :goto_57

    #@24
    :cond_24
    const/16 v1, 0x7e

    #@26
    if-gt v0, v1, :cond_48

    #@28
    const/16 v1, 0x20

    #@2a
    if-ge v0, v1, :cond_2d

    #@2c
    goto :goto_48

    #@2d
    :cond_2d
    if-ne v0, v1, :cond_44

    #@2f
    :goto_2f
    add-int/lit8 v0, p2, 0x1

    #@31
    if-ge v0, p3, :cond_40

    #@33
    .line 862
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    #@36
    move-result v2

    #@37
    if-ne v2, v1, :cond_40

    #@39
    const-string p2, "&nbsp;"

    #@3b
    .line 863
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move p2, v0

    #@3f
    goto :goto_2f

    #@40
    .line 867
    :cond_40
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@43
    goto :goto_57

    #@44
    .line 869
    :cond_44
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@47
    goto :goto_57

    #@48
    :cond_48
    :goto_48
    const-string v1, "&#"

    #@4a
    .line 860
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v1

    #@4e
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@51
    move-result-object v0

    #@52
    const-string v1, ";"

    #@54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    :goto_57
    add-int/lit8 p2, p2, 0x1

    #@59
    goto :goto_0

    #@5a
    :cond_5a
    return-void
.end method


# virtual methods
.method public getCallingActivity()Landroid/content/ComponentName;
    .registers 2

    #@0
    .line 1013
    iget-object v0, p0, Landroidx/core/app/ShareCompat$IntentReader;->mCallingActivity:Landroid/content/ComponentName;

    #@2
    return-object v0
.end method

.method public getCallingActivityIcon()Landroid/graphics/drawable/Drawable;
    .registers 5

    #@0
    .line 1028
    iget-object v0, p0, Landroidx/core/app/ShareCompat$IntentReader;->mCallingActivity:Landroid/content/ComponentName;

    #@2
    const/4 v1, 0x0

    #@3
    if-nez v0, :cond_6

    #@5
    return-object v1

    #@6
    .line 1030
    :cond_6
    iget-object v0, p0, Landroidx/core/app/ShareCompat$IntentReader;->mContext:Landroid/content/Context;

    #@8
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@b
    move-result-object v0

    #@c
    .line 1032
    :try_start_c
    iget-object v2, p0, Landroidx/core/app/ShareCompat$IntentReader;->mCallingActivity:Landroid/content/ComponentName;

    #@e
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    #@11
    move-result-object v0
    :try_end_12
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_12} :catch_13

    #@12
    return-object v0

    #@13
    :catch_13
    move-exception v0

    #@14
    const-string v2, "IntentReader"

    #@16
    const-string v3, "Could not retrieve icon for calling activity"

    #@18
    .line 1034
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1b
    return-object v1
.end method

.method public getCallingApplicationIcon()Landroid/graphics/drawable/Drawable;
    .registers 5

    #@0
    .line 1051
    iget-object v0, p0, Landroidx/core/app/ShareCompat$IntentReader;->mCallingPackage:Ljava/lang/String;

    #@2
    const/4 v1, 0x0

    #@3
    if-nez v0, :cond_6

    #@5
    return-object v1

    #@6
    .line 1053
    :cond_6
    iget-object v0, p0, Landroidx/core/app/ShareCompat$IntentReader;->mContext:Landroid/content/Context;

    #@8
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@b
    move-result-object v0

    #@c
    .line 1055
    :try_start_c
    iget-object v2, p0, Landroidx/core/app/ShareCompat$IntentReader;->mCallingPackage:Ljava/lang/String;

    #@e
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    #@11
    move-result-object v0
    :try_end_12
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_12} :catch_13

    #@12
    return-object v0

    #@13
    :catch_13
    move-exception v0

    #@14
    const-string v2, "IntentReader"

    #@16
    const-string v3, "Could not retrieve icon for calling application"

    #@18
    .line 1057
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1b
    return-object v1
.end method

.method public getCallingApplicationLabel()Ljava/lang/CharSequence;
    .registers 5

    #@0
    .line 1075
    iget-object v0, p0, Landroidx/core/app/ShareCompat$IntentReader;->mCallingPackage:Ljava/lang/String;

    #@2
    const/4 v1, 0x0

    #@3
    if-nez v0, :cond_6

    #@5
    return-object v1

    #@6
    .line 1077
    :cond_6
    iget-object v0, p0, Landroidx/core/app/ShareCompat$IntentReader;->mContext:Landroid/content/Context;

    #@8
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@b
    move-result-object v0

    #@c
    .line 1079
    :try_start_c
    iget-object v2, p0, Landroidx/core/app/ShareCompat$IntentReader;->mCallingPackage:Ljava/lang/String;

    #@e
    const/4 v3, 0x0

    #@f
    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    #@16
    move-result-object v0
    :try_end_17
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_17} :catch_18

    #@17
    return-object v0

    #@18
    :catch_18
    move-exception v0

    #@19
    const-string v2, "IntentReader"

    #@1b
    const-string v3, "Could not retrieve label for calling application"

    #@1d
    .line 1081
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@20
    return-object v1
.end method

.method public getCallingPackage()Ljava/lang/String;
    .registers 2

    #@0
    .line 994
    iget-object v0, p0, Landroidx/core/app/ShareCompat$IntentReader;->mCallingPackage:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getEmailBcc()[Ljava/lang/String;
    .registers 3

    #@0
    .line 964
    iget-object v0, p0, Landroidx/core/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    #@2
    const-string v1, "android.intent.extra.BCC"

    #@4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getEmailCc()[Ljava/lang/String;
    .registers 3

    #@0
    .line 953
    iget-object v0, p0, Landroidx/core/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    #@2
    const-string v1, "android.intent.extra.CC"

    #@4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getEmailTo()[Ljava/lang/String;
    .registers 3

    #@0
    .line 942
    iget-object v0, p0, Landroidx/core/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    #@2
    const-string v1, "android.intent.extra.EMAIL"

    #@4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getHtmlText()Ljava/lang/String;
    .registers 4

    #@0
    .line 830
    iget-object v0, p0, Landroidx/core/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    #@2
    const-string v1, "android.intent.extra.HTML_TEXT"

    #@4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    if-nez v0, :cond_1f

    #@a
    .line 832
    invoke-virtual {p0}, Landroidx/core/app/ShareCompat$IntentReader;->getText()Ljava/lang/CharSequence;

    #@d
    move-result-object v1

    #@e
    .line 833
    instance-of v2, v1, Landroid/text/Spanned;

    #@10
    if-eqz v2, :cond_19

    #@12
    .line 834
    check-cast v1, Landroid/text/Spanned;

    #@14
    invoke-static {v1}, Landroid/text/Html;->toHtml(Landroid/text/Spanned;)Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    goto :goto_1f

    #@19
    :cond_19
    if-eqz v1, :cond_1f

    #@1b
    .line 837
    invoke-static {v1}, Landroidx/core/app/ShareCompat$Api16Impl;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    :cond_1f
    :goto_1f
    return-object v0
.end method

.method public getStream()Landroid/net/Uri;
    .registers 3

    #@0
    .line 888
    iget-object v0, p0, Landroidx/core/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    #@2
    const-string v1, "android.intent.extra.STREAM"

    #@4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Landroid/net/Uri;

    #@a
    return-object v0
.end method

.method public getStream(I)Landroid/net/Uri;
    .registers 5

    #@0
    .line 903
    iget-object v0, p0, Landroidx/core/app/ShareCompat$IntentReader;->mStreams:Ljava/util/ArrayList;

    #@2
    const-string v1, "android.intent.extra.STREAM"

    #@4
    if-nez v0, :cond_14

    #@6
    invoke-virtual {p0}, Landroidx/core/app/ShareCompat$IntentReader;->isMultipleShare()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_14

    #@c
    .line 904
    iget-object v0, p0, Landroidx/core/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    #@e
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    #@11
    move-result-object v0

    #@12
    iput-object v0, p0, Landroidx/core/app/ShareCompat$IntentReader;->mStreams:Ljava/util/ArrayList;

    #@14
    .line 906
    :cond_14
    iget-object v0, p0, Landroidx/core/app/ShareCompat$IntentReader;->mStreams:Ljava/util/ArrayList;

    #@16
    if-eqz v0, :cond_1f

    #@18
    .line 907
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1b
    move-result-object p1

    #@1c
    check-cast p1, Landroid/net/Uri;

    #@1e
    return-object p1

    #@1f
    :cond_1f
    if-nez p1, :cond_2a

    #@21
    .line 910
    iget-object p1, p0, Landroidx/core/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    #@23
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    #@26
    move-result-object p1

    #@27
    check-cast p1, Landroid/net/Uri;

    #@29
    return-object p1

    #@2a
    .line 912
    :cond_2a
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@2c
    new-instance v1, Ljava/lang/StringBuilder;

    #@2e
    const-string v2, "Stream items available: "

    #@30
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@33
    invoke-virtual {p0}, Landroidx/core/app/ShareCompat$IntentReader;->getStreamCount()I

    #@36
    move-result v2

    #@37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v1

    #@3b
    const-string v2, " index requested: "

    #@3d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v1

    #@41
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@44
    move-result-object p1

    #@45
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object p1

    #@49
    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@4c
    throw v0
.end method

.method public getStreamCount()I
    .registers 3

    #@0
    .line 925
    iget-object v0, p0, Landroidx/core/app/ShareCompat$IntentReader;->mStreams:Ljava/util/ArrayList;

    #@2
    const-string v1, "android.intent.extra.STREAM"

    #@4
    if-nez v0, :cond_14

    #@6
    invoke-virtual {p0}, Landroidx/core/app/ShareCompat$IntentReader;->isMultipleShare()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_14

    #@c
    .line 926
    iget-object v0, p0, Landroidx/core/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    #@e
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    #@11
    move-result-object v0

    #@12
    iput-object v0, p0, Landroidx/core/app/ShareCompat$IntentReader;->mStreams:Ljava/util/ArrayList;

    #@14
    .line 928
    :cond_14
    iget-object v0, p0, Landroidx/core/app/ShareCompat$IntentReader;->mStreams:Ljava/util/ArrayList;

    #@16
    if-eqz v0, :cond_1d

    #@18
    .line 929
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@1b
    move-result v0

    #@1c
    return v0

    #@1d
    .line 931
    :cond_1d
    iget-object v0, p0, Landroidx/core/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    #@1f
    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    #@22
    move-result v0

    #@23
    return v0
.end method

.method public getSubject()Ljava/lang/String;
    .registers 3

    #@0
    .line 975
    iget-object v0, p0, Landroidx/core/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    #@2
    const-string v1, "android.intent.extra.SUBJECT"

    #@4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .registers 3

    #@0
    .line 815
    iget-object v0, p0, Landroidx/core/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    #@2
    const-string v1, "android.intent.extra.TEXT"

    #@4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    #@0
    .line 804
    iget-object v0, p0, Landroidx/core/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    #@2
    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public isMultipleShare()Z
    .registers 3

    #@0
    .line 793
    iget-object v0, p0, Landroidx/core/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    #@2
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    const-string v1, "android.intent.action.SEND_MULTIPLE"

    #@8
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public isShareIntent()Z
    .registers 3

    #@0
    .line 769
    iget-object v0, p0, Landroidx/core/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    #@2
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    const-string v1, "android.intent.action.SEND"

    #@8
    .line 770
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v1

    #@c
    if-nez v1, :cond_19

    #@e
    const-string v1, "android.intent.action.SEND_MULTIPLE"

    #@10
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_17

    #@16
    goto :goto_19

    #@17
    :cond_17
    const/4 v0, 0x0

    #@18
    goto :goto_1a

    #@19
    :cond_19
    :goto_19
    const/4 v0, 0x1

    #@1a
    :goto_1a
    return v0
.end method

.method public isSingleShare()Z
    .registers 3

    #@0
    .line 782
    iget-object v0, p0, Landroidx/core/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    #@2
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    const-string v1, "android.intent.action.SEND"

    #@8
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v0

    #@c
    return v0
.end method
