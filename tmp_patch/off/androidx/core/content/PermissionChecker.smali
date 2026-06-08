.class public final Landroidx/core/content/PermissionChecker;
.super Ljava/lang/Object;
.source "PermissionChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/content/PermissionChecker$PermissionResult;
    }
.end annotation


# static fields
.field public static final PERMISSION_DENIED:I = -0x1

.field public static final PERMISSION_DENIED_APP_OP:I = -0x2

.field public static final PERMISSION_GRANTED:I


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static checkCallingOrSelfPermission(Landroid/content/Context;Ljava/lang/String;)I
    .registers 5

    #@0
    .line 180
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@3
    move-result v0

    #@4
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@7
    move-result v1

    #@8
    if-ne v0, v1, :cond_f

    #@a
    .line 181
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    goto :goto_10

    #@f
    :cond_f
    const/4 v0, 0x0

    #@10
    .line 182
    :goto_10
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@13
    move-result v1

    #@14
    .line 183
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@17
    move-result v2

    #@18
    .line 182
    invoke-static {p0, p1, v1, v2, v0}, Landroidx/core/content/PermissionChecker;->checkPermission(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    #@1b
    move-result p0

    #@1c
    return p0
.end method

.method public static checkCallingPermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .registers 5

    #@0
    .line 161
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@3
    move-result v0

    #@4
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@7
    move-result v1

    #@8
    if-ne v0, v1, :cond_c

    #@a
    const/4 p0, -0x1

    #@b
    return p0

    #@c
    .line 164
    :cond_c
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@f
    move-result v0

    #@10
    .line 165
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@13
    move-result v1

    #@14
    .line 164
    invoke-static {p0, p1, v0, v1, p2}, Landroidx/core/content/PermissionChecker;->checkPermission(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    #@17
    move-result p0

    #@18
    return p0
.end method

.method public static checkPermission(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I
    .registers 7

    #@0
    .line 98
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    #@3
    move-result p2

    #@4
    const/4 v0, -0x1

    #@5
    if-ne p2, v0, :cond_8

    #@7
    return v0

    #@8
    .line 102
    :cond_8
    invoke-static {p1}, Landroidx/core/app/AppOpsManagerCompat;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    #@b
    move-result-object p1

    #@c
    const/4 p2, 0x0

    #@d
    if-nez p1, :cond_10

    #@f
    return p2

    #@10
    :cond_10
    if-nez p4, :cond_24

    #@12
    .line 108
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@15
    move-result-object p4

    #@16
    invoke-virtual {p4, p3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    #@19
    move-result-object p4

    #@1a
    if-eqz p4, :cond_23

    #@1c
    .line 109
    array-length v1, p4

    #@1d
    if-gtz v1, :cond_20

    #@1f
    goto :goto_23

    #@20
    .line 112
    :cond_20
    aget-object p4, p4, p2

    #@22
    goto :goto_24

    #@23
    :cond_23
    :goto_23
    return v0

    #@24
    .line 115
    :cond_24
    :goto_24
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@27
    move-result v0

    #@28
    .line 116
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@2b
    move-result-object v1

    #@2c
    if-ne v0, p3, :cond_36

    #@2e
    .line 118
    invoke-static {v1, p4}, Landroidx/core/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@31
    move-result v0

    #@32
    if-eqz v0, :cond_36

    #@34
    const/4 v0, 0x1

    #@35
    goto :goto_37

    #@36
    :cond_36
    move v0, p2

    #@37
    :goto_37
    if-eqz v0, :cond_3e

    #@39
    .line 122
    invoke-static {p0, p3, p1, p4}, Landroidx/core/app/AppOpsManagerCompat;->checkOrNoteProxyOp(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)I

    #@3c
    move-result p0

    #@3d
    goto :goto_42

    #@3e
    .line 124
    :cond_3e
    invoke-static {p0, p1, p4}, Landroidx/core/app/AppOpsManagerCompat;->noteProxyOpNoThrow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    #@41
    move-result p0

    #@42
    :goto_42
    if-nez p0, :cond_45

    #@44
    goto :goto_46

    #@45
    :cond_45
    const/4 p2, -0x2

    #@46
    :goto_46
    return p2
.end method

.method public static checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I
    .registers 5

    #@0
    .line 143
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@3
    move-result v0

    #@4
    .line 144
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@7
    move-result v1

    #@8
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@b
    move-result-object v2

    #@c
    .line 143
    invoke-static {p0, p1, v0, v1, v2}, Landroidx/core/content/PermissionChecker;->checkPermission(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    #@f
    move-result p0

    #@10
    return p0
.end method
