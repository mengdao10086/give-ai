.class public Lcom/blankj/utilcode/util/AppUtils$AppInfo;
.super Ljava/lang/Object;
.source "AppUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blankj/utilcode/util/AppUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppInfo"
.end annotation


# instance fields
.field private icon:Landroid/graphics/drawable/Drawable;

.field private isSystem:Z

.field private minSdkVersion:I

.field private name:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private packagePath:Ljava/lang/String;

.field private targetSdkVersion:I

.field private versionCode:I

.field private versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;IIIZ)V
    .registers 10

    #@0
    .line 996
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 997
    invoke-virtual {p0, p2}, Lcom/blankj/utilcode/util/AppUtils$AppInfo;->setName(Ljava/lang/String;)V

    #@6
    .line 998
    invoke-virtual {p0, p3}, Lcom/blankj/utilcode/util/AppUtils$AppInfo;->setIcon(Landroid/graphics/drawable/Drawable;)V

    #@9
    .line 999
    invoke-virtual {p0, p1}, Lcom/blankj/utilcode/util/AppUtils$AppInfo;->setPackageName(Ljava/lang/String;)V

    #@c
    .line 1000
    invoke-virtual {p0, p4}, Lcom/blankj/utilcode/util/AppUtils$AppInfo;->setPackagePath(Ljava/lang/String;)V

    #@f
    .line 1001
    invoke-virtual {p0, p5}, Lcom/blankj/utilcode/util/AppUtils$AppInfo;->setVersionName(Ljava/lang/String;)V

    #@12
    .line 1002
    invoke-virtual {p0, p6}, Lcom/blankj/utilcode/util/AppUtils$AppInfo;->setVersionCode(I)V

    #@15
    .line 1003
    invoke-virtual {p0, p7}, Lcom/blankj/utilcode/util/AppUtils$AppInfo;->setMinSdkVersion(I)V

    #@18
    .line 1004
    invoke-virtual {p0, p8}, Lcom/blankj/utilcode/util/AppUtils$AppInfo;->setTargetSdkVersion(I)V

    #@1b
    .line 1005
    invoke-virtual {p0, p9}, Lcom/blankj/utilcode/util/AppUtils$AppInfo;->setSystem(Z)V

    #@1e
    return-void
.end method


# virtual methods
.method public getIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    #@0
    .line 925
    iget-object v0, p0, Lcom/blankj/utilcode/util/AppUtils$AppInfo;->icon:Landroid/graphics/drawable/Drawable;

    #@2
    return-object v0
.end method

.method public getMinSdkVersion()I
    .registers 2

    #@0
    .line 981
    iget v0, p0, Lcom/blankj/utilcode/util/AppUtils$AppInfo;->minSdkVersion:I

    #@2
    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    #@0
    .line 949
    iget-object v0, p0, Lcom/blankj/utilcode/util/AppUtils$AppInfo;->name:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    #@0
    .line 941
    iget-object v0, p0, Lcom/blankj/utilcode/util/AppUtils$AppInfo;->packageName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPackagePath()Ljava/lang/String;
    .registers 2

    #@0
    .line 957
    iget-object v0, p0, Lcom/blankj/utilcode/util/AppUtils$AppInfo;->packagePath:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getTargetSdkVersion()I
    .registers 2

    #@0
    .line 989
    iget v0, p0, Lcom/blankj/utilcode/util/AppUtils$AppInfo;->targetSdkVersion:I

    #@2
    return v0
.end method

.method public getVersionCode()I
    .registers 2

    #@0
    .line 965
    iget v0, p0, Lcom/blankj/utilcode/util/AppUtils$AppInfo;->versionCode:I

    #@2
    return v0
.end method

.method public getVersionName()Ljava/lang/String;
    .registers 2

    #@0
    .line 973
    iget-object v0, p0, Lcom/blankj/utilcode/util/AppUtils$AppInfo;->versionName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public isSystem()Z
    .registers 2

    #@0
    .line 933
    iget-boolean v0, p0, Lcom/blankj/utilcode/util/AppUtils$AppInfo;->isSystem:Z

    #@2
    return v0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    #@0
    .line 929
    iput-object p1, p0, Lcom/blankj/utilcode/util/AppUtils$AppInfo;->icon:Landroid/graphics/drawable/Drawable;

    #@2
    return-void
.end method

.method public setMinSdkVersion(I)V
    .registers 2

    #@0
    .line 985
    iput p1, p0, Lcom/blankj/utilcode/util/AppUtils$AppInfo;->minSdkVersion:I

    #@2
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    #@0
    .line 953
    iput-object p1, p0, Lcom/blankj/utilcode/util/AppUtils$AppInfo;->name:Ljava/lang/String;

    #@2
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .registers 2

    #@0
    .line 945
    iput-object p1, p0, Lcom/blankj/utilcode/util/AppUtils$AppInfo;->packageName:Ljava/lang/String;

    #@2
    return-void
.end method

.method public setPackagePath(Ljava/lang/String;)V
    .registers 2

    #@0
    .line 961
    iput-object p1, p0, Lcom/blankj/utilcode/util/AppUtils$AppInfo;->packagePath:Ljava/lang/String;

    #@2
    return-void
.end method

.method public setSystem(Z)V
    .registers 2

    #@0
    .line 937
    iput-boolean p1, p0, Lcom/blankj/utilcode/util/AppUtils$AppInfo;->isSystem:Z

    #@2
    return-void
.end method

.method public setTargetSdkVersion(I)V
    .registers 2

    #@0
    .line 993
    iput p1, p0, Lcom/blankj/utilcode/util/AppUtils$AppInfo;->targetSdkVersion:I

    #@2
    return-void
.end method

.method public setVersionCode(I)V
    .registers 2

    #@0
    .line 969
    iput p1, p0, Lcom/blankj/utilcode/util/AppUtils$AppInfo;->versionCode:I

    #@2
    return-void
.end method

.method public setVersionName(Ljava/lang/String;)V
    .registers 2

    #@0
    .line 977
    iput-object p1, p0, Lcom/blankj/utilcode/util/AppUtils$AppInfo;->versionName:Ljava/lang/String;

    #@2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    #@0
    .line 1011
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string v1, "{\n    pkg name: "

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@7
    .line 1012
    invoke-virtual {p0}, Lcom/blankj/utilcode/util/AppUtils$AppInfo;->getPackageName()Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    const-string v1, "\n    app icon: "

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v0

    #@15
    .line 1013
    invoke-virtual {p0}, Lcom/blankj/utilcode/util/AppUtils$AppInfo;->getIcon()Landroid/graphics/drawable/Drawable;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    const-string v1, "\n    app name: "

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    .line 1014
    invoke-virtual {p0}, Lcom/blankj/utilcode/util/AppUtils$AppInfo;->getName()Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v0

    #@2b
    const-string v1, "\n    app path: "

    #@2d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v0

    #@31
    .line 1015
    invoke-virtual {p0}, Lcom/blankj/utilcode/util/AppUtils$AppInfo;->getPackagePath()Ljava/lang/String;

    #@34
    move-result-object v1

    #@35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v0

    #@39
    const-string v1, "\n    app v name: "

    #@3b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v0

    #@3f
    .line 1016
    invoke-virtual {p0}, Lcom/blankj/utilcode/util/AppUtils$AppInfo;->getVersionName()Ljava/lang/String;

    #@42
    move-result-object v1

    #@43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v0

    #@47
    const-string v1, "\n    app v code: "

    #@49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v0

    #@4d
    .line 1017
    invoke-virtual {p0}, Lcom/blankj/utilcode/util/AppUtils$AppInfo;->getVersionCode()I

    #@50
    move-result v1

    #@51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@54
    move-result-object v0

    #@55
    const-string v1, "\n    app v min: "

    #@57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v0

    #@5b
    .line 1018
    invoke-virtual {p0}, Lcom/blankj/utilcode/util/AppUtils$AppInfo;->getMinSdkVersion()I

    #@5e
    move-result v1

    #@5f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@62
    move-result-object v0

    #@63
    const-string v1, "\n    app v target: "

    #@65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v0

    #@69
    .line 1019
    invoke-virtual {p0}, Lcom/blankj/utilcode/util/AppUtils$AppInfo;->getTargetSdkVersion()I

    #@6c
    move-result v1

    #@6d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@70
    move-result-object v0

    #@71
    const-string v1, "\n    is system: "

    #@73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v0

    #@77
    .line 1020
    invoke-virtual {p0}, Lcom/blankj/utilcode/util/AppUtils$AppInfo;->isSystem()Z

    #@7a
    move-result v1

    #@7b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v0

    #@7f
    const-string v1, "\n}"

    #@81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v0

    #@85
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@88
    move-result-object v0

    #@89
    return-object v0
.end method
