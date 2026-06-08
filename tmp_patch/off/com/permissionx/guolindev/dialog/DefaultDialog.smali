.class public final Lcom/permissionx/guolindev/dialog/DefaultDialog;
.super Lcom/permissionx/guolindev/dialog/RationaleDialog;
.source "DefaultDialog.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001BE\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\u0008\u001a\u00020\u0006\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\rJ\u0008\u0010\u0010\u001a\u00020\u0011H\u0002J\n\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016J\u000e\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\u0016J\u0008\u0010\u0015\u001a\u00020\u0013H\u0016J\u0008\u0010\u0016\u001a\u00020\u0017H\u0002J\r\u0010\u0018\u001a\u00020\u0017H\u0000\u00a2\u0006\u0002\u0008\u0019J\u0012\u0010\u001a\u001a\u00020\u00112\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0014J\u0008\u0010\u001d\u001a\u00020\u0011H\u0002J\u0008\u0010\u001e\u001a\u00020\u0011H\u0002R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/permissionx/guolindev/dialog/DefaultDialog;",
        "Lcom/permissionx/guolindev/dialog/RationaleDialog;",
        "context",
        "Landroid/content/Context;",
        "permissions",
        "",
        "",
        "message",
        "positiveText",
        "negativeText",
        "lightColor",
        "",
        "darkColor",
        "(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V",
        "binding",
        "Lcom/permissionx/guolindev/databinding/PermissionxDefaultDialogLayoutBinding;",
        "buildPermissionsLayout",
        "",
        "getNegativeButton",
        "Landroid/view/View;",
        "getPermissionsToRequest",
        "getPositiveButton",
        "isDarkTheme",
        "",
        "isPermissionLayoutEmpty",
        "isPermissionLayoutEmpty$permissionx_release",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "setupText",
        "setupWindow",
        "permissionx_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private binding:Lcom/permissionx/guolindev/databinding/PermissionxDefaultDialogLayoutBinding;

.field private final darkColor:I

.field private final lightColor:I

.field private final message:Ljava/lang/String;

.field private final negativeText:Ljava/lang/String;

.field private final permissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final positiveText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    #@0
    const-string v0, "context"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    const-string v0, "permissions"

    #@7
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@a
    const-string v0, "message"

    #@c
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@f
    const-string v0, "positiveText"

    #@11
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@14
    .line 46
    sget v0, Lcom/permissionx/guolindev/R$style;->PermissionXDefaultDialog:I

    #@16
    invoke-direct {p0, p1, v0}, Lcom/permissionx/guolindev/dialog/RationaleDialog;-><init>(Landroid/content/Context;I)V

    #@19
    .line 40
    iput-object p2, p0, Lcom/permissionx/guolindev/dialog/DefaultDialog;->permissions:Ljava/util/List;

    #@1b
    .line 41
    iput-object p3, p0, Lcom/permissionx/guolindev/dialog/DefaultDialog;->message:Ljava/lang/String;

    #@1d
    .line 42
    iput-object p4, p0, Lcom/permissionx/guolindev/dialog/DefaultDialog;->positiveText:Ljava/lang/String;

    #@1f
    .line 43
    iput-object p5, p0, Lcom/permissionx/guolindev/dialog/DefaultDialog;->negativeText:Ljava/lang/String;

    #@21
    .line 44
    iput p6, p0, Lcom/permissionx/guolindev/dialog/DefaultDialog;->lightColor:I

    #@23
    .line 45
    iput p7, p0, Lcom/permissionx/guolindev/dialog/DefaultDialog;->darkColor:I

    #@25
    return-void
.end method

.method private final buildPermissionsLayout()V
    .registers 13

    #@0
    .line 125
    new-instance v0, Ljava/util/HashSet;

    #@2
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@5
    .line 126
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    #@7
    .line 127
    iget-object v2, p0, Lcom/permissionx/guolindev/dialog/DefaultDialog;->permissions:Ljava/util/List;

    #@9
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v2

    #@d
    :cond_d
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v3

    #@11
    if-eqz v3, :cond_23d

    #@13
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v3

    #@17
    check-cast v3, Ljava/lang/String;

    #@19
    const/16 v4, 0x21

    #@1b
    const/16 v5, 0x1d

    #@1d
    const/4 v6, 0x0

    #@1e
    const/4 v7, 0x0

    #@1f
    if-ge v1, v5, :cond_39

    #@21
    .line 131
    :try_start_21
    invoke-virtual {p0}, Lcom/permissionx/guolindev/dialog/DefaultDialog;->getContext()Landroid/content/Context;

    #@24
    move-result-object v5

    #@25
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@28
    move-result-object v5

    #@29
    invoke-virtual {v5, v3, v7}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    #@2c
    move-result-object v5

    #@2d
    .line 132
    iget-object v5, v5, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;
    :try_end_2f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_21 .. :try_end_2f} :catch_30

    #@2f
    goto :goto_7b

    #@30
    :catch_30
    move-exception v5

    #@31
    .line 134
    invoke-virtual {v5}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    #@34
    .line 135
    move-object v5, v6

    #@35
    check-cast v5, Ljava/lang/String;

    #@37
    move-object v5, v6

    #@38
    goto :goto_7b

    #@39
    :cond_39
    if-ne v1, v5, :cond_46

    #@3b
    .line 138
    invoke-static {}, Lcom/permissionx/guolindev/dialog/PermissionMapKt;->getPermissionMapOnQ()Ljava/util/Map;

    #@3e
    move-result-object v5

    #@3f
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@42
    move-result-object v5

    #@43
    check-cast v5, Ljava/lang/String;

    #@45
    goto :goto_7b

    #@46
    :cond_46
    const/16 v5, 0x1e

    #@48
    if-ne v1, v5, :cond_55

    #@4a
    .line 139
    invoke-static {}, Lcom/permissionx/guolindev/dialog/PermissionMapKt;->getPermissionMapOnR()Ljava/util/Map;

    #@4d
    move-result-object v5

    #@4e
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@51
    move-result-object v5

    #@52
    check-cast v5, Ljava/lang/String;

    #@54
    goto :goto_7b

    #@55
    :cond_55
    const/16 v5, 0x1f

    #@57
    if-ne v1, v5, :cond_64

    #@59
    .line 140
    invoke-static {}, Lcom/permissionx/guolindev/dialog/PermissionMapKt;->getPermissionMapOnS()Ljava/util/Map;

    #@5c
    move-result-object v5

    #@5d
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@60
    move-result-object v5

    #@61
    check-cast v5, Ljava/lang/String;

    #@63
    goto :goto_7b

    #@64
    :cond_64
    if-ne v1, v4, :cond_71

    #@66
    .line 141
    invoke-static {}, Lcom/permissionx/guolindev/dialog/PermissionMapKt;->getPermissionMapOnT()Ljava/util/Map;

    #@69
    move-result-object v5

    #@6a
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6d
    move-result-object v5

    #@6e
    check-cast v5, Ljava/lang/String;

    #@70
    goto :goto_7b

    #@71
    .line 145
    :cond_71
    invoke-static {}, Lcom/permissionx/guolindev/dialog/PermissionMapKt;->getPermissionMapOnT()Ljava/util/Map;

    #@74
    move-result-object v5

    #@75
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@78
    move-result-object v5

    #@79
    check-cast v5, Ljava/lang/String;

    #@7b
    .line 148
    :goto_7b
    invoke-static {}, Lcom/permissionx/guolindev/dialog/PermissionMapKt;->getAllSpecialPermissions()Ljava/util/Set;

    #@7e
    move-result-object v8

    #@7f
    invoke-interface {v8, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@82
    move-result v8

    #@83
    if-eqz v8, :cond_8b

    #@85
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@88
    move-result v8

    #@89
    if-eqz v8, :cond_93

    #@8b
    :cond_8b
    if-eqz v5, :cond_d

    #@8d
    .line 149
    invoke-virtual {v0, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@90
    move-result v8

    #@91
    if-nez v8, :cond_d

    #@93
    .line 150
    :cond_93
    invoke-virtual {p0}, Lcom/permissionx/guolindev/dialog/DefaultDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    #@96
    move-result-object v8

    #@97
    iget-object v9, p0, Lcom/permissionx/guolindev/dialog/DefaultDialog;->binding:Lcom/permissionx/guolindev/databinding/PermissionxDefaultDialogLayoutBinding;

    #@99
    const-string v10, "binding"

    #@9b
    if-nez v9, :cond_a1

    #@9d
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    #@a0
    move-object v9, v6

    #@a1
    :cond_a1
    iget-object v9, v9, Lcom/permissionx/guolindev/databinding/PermissionxDefaultDialogLayoutBinding;->permissionsLayout:Landroid/widget/LinearLayout;

    #@a3
    check-cast v9, Landroid/view/ViewGroup;

    #@a5
    invoke-static {v8, v9, v7}, Lcom/permissionx/guolindev/databinding/PermissionxPermissionItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/permissionx/guolindev/databinding/PermissionxPermissionItemBinding;

    #@a8
    move-result-object v8

    #@a9
    const-string v9, "inflate(layoutInflater, \u2026permissionsLayout, false)"

    #@ab
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    #@ae
    const-string v9, "android.permission.ACCESS_BACKGROUND_LOCATION"

    #@b0
    .line 152
    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@b3
    move-result v9

    #@b4
    if-eqz v9, :cond_df

    #@b6
    .line 153
    iget-object v4, v8, Lcom/permissionx/guolindev/databinding/PermissionxPermissionItemBinding;->permissionText:Landroid/widget/TextView;

    #@b8
    invoke-virtual {p0}, Lcom/permissionx/guolindev/dialog/DefaultDialog;->getContext()Landroid/content/Context;

    #@bb
    move-result-object v9

    #@bc
    sget v11, Lcom/permissionx/guolindev/R$string;->permissionx_access_background_location:I

    #@be
    invoke-virtual {v9, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@c1
    move-result-object v9

    #@c2
    check-cast v9, Ljava/lang/CharSequence;

    #@c4
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@c7
    .line 154
    iget-object v4, v8, Lcom/permissionx/guolindev/databinding/PermissionxPermissionItemBinding;->permissionIcon:Landroid/widget/ImageView;

    #@c9
    invoke-virtual {p0}, Lcom/permissionx/guolindev/dialog/DefaultDialog;->getContext()Landroid/content/Context;

    #@cc
    move-result-object v9

    #@cd
    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@d0
    move-result-object v9

    #@d1
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    #@d4
    invoke-virtual {v9, v5, v7}, Landroid/content/pm/PackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    #@d7
    move-result-object v7

    #@d8
    iget v7, v7, Landroid/content/pm/PermissionGroupInfo;->icon:I

    #@da
    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    #@dd
    goto/16 :goto_1fe

    #@df
    :cond_df
    const-string v9, "android.permission.SYSTEM_ALERT_WINDOW"

    #@e1
    .line 156
    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@e4
    move-result v9

    #@e5
    if-eqz v9, :cond_101

    #@e7
    .line 157
    iget-object v4, v8, Lcom/permissionx/guolindev/databinding/PermissionxPermissionItemBinding;->permissionText:Landroid/widget/TextView;

    #@e9
    invoke-virtual {p0}, Lcom/permissionx/guolindev/dialog/DefaultDialog;->getContext()Landroid/content/Context;

    #@ec
    move-result-object v7

    #@ed
    sget v9, Lcom/permissionx/guolindev/R$string;->permissionx_system_alert_window:I

    #@ef
    invoke-virtual {v7, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@f2
    move-result-object v7

    #@f3
    check-cast v7, Ljava/lang/CharSequence;

    #@f5
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@f8
    .line 158
    iget-object v4, v8, Lcom/permissionx/guolindev/databinding/PermissionxPermissionItemBinding;->permissionIcon:Landroid/widget/ImageView;

    #@fa
    sget v7, Lcom/permissionx/guolindev/R$drawable;->permissionx_ic_alert:I

    #@fc
    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    #@ff
    goto/16 :goto_1fe

    #@101
    :cond_101
    const-string v9, "android.permission.WRITE_SETTINGS"

    #@103
    .line 160
    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@106
    move-result v9

    #@107
    if-eqz v9, :cond_123

    #@109
    .line 161
    iget-object v4, v8, Lcom/permissionx/guolindev/databinding/PermissionxPermissionItemBinding;->permissionText:Landroid/widget/TextView;

    #@10b
    invoke-virtual {p0}, Lcom/permissionx/guolindev/dialog/DefaultDialog;->getContext()Landroid/content/Context;

    #@10e
    move-result-object v7

    #@10f
    sget v9, Lcom/permissionx/guolindev/R$string;->permissionx_write_settings:I

    #@111
    invoke-virtual {v7, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@114
    move-result-object v7

    #@115
    check-cast v7, Ljava/lang/CharSequence;

    #@117
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@11a
    .line 162
    iget-object v4, v8, Lcom/permissionx/guolindev/databinding/PermissionxPermissionItemBinding;->permissionIcon:Landroid/widget/ImageView;

    #@11c
    sget v7, Lcom/permissionx/guolindev/R$drawable;->permissionx_ic_setting:I

    #@11e
    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    #@121
    goto/16 :goto_1fe

    #@123
    :cond_123
    const-string v9, "android.permission.MANAGE_EXTERNAL_STORAGE"

    #@125
    .line 164
    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@128
    move-result v9

    #@129
    if-eqz v9, :cond_154

    #@12b
    .line 165
    iget-object v4, v8, Lcom/permissionx/guolindev/databinding/PermissionxPermissionItemBinding;->permissionText:Landroid/widget/TextView;

    #@12d
    invoke-virtual {p0}, Lcom/permissionx/guolindev/dialog/DefaultDialog;->getContext()Landroid/content/Context;

    #@130
    move-result-object v9

    #@131
    sget v11, Lcom/permissionx/guolindev/R$string;->permissionx_manage_external_storage:I

    #@133
    invoke-virtual {v9, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@136
    move-result-object v9

    #@137
    check-cast v9, Ljava/lang/CharSequence;

    #@139
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@13c
    .line 166
    iget-object v4, v8, Lcom/permissionx/guolindev/databinding/PermissionxPermissionItemBinding;->permissionIcon:Landroid/widget/ImageView;

    #@13e
    invoke-virtual {p0}, Lcom/permissionx/guolindev/dialog/DefaultDialog;->getContext()Landroid/content/Context;

    #@141
    move-result-object v9

    #@142
    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@145
    move-result-object v9

    #@146
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    #@149
    invoke-virtual {v9, v5, v7}, Landroid/content/pm/PackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    #@14c
    move-result-object v7

    #@14d
    iget v7, v7, Landroid/content/pm/PermissionGroupInfo;->icon:I

    #@14f
    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    #@152
    goto/16 :goto_1fe

    #@154
    :cond_154
    const-string v9, "android.permission.REQUEST_INSTALL_PACKAGES"

    #@156
    .line 168
    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@159
    move-result v9

    #@15a
    if-eqz v9, :cond_176

    #@15c
    .line 169
    iget-object v4, v8, Lcom/permissionx/guolindev/databinding/PermissionxPermissionItemBinding;->permissionText:Landroid/widget/TextView;

    #@15e
    invoke-virtual {p0}, Lcom/permissionx/guolindev/dialog/DefaultDialog;->getContext()Landroid/content/Context;

    #@161
    move-result-object v7

    #@162
    sget v9, Lcom/permissionx/guolindev/R$string;->permissionx_request_install_packages:I

    #@164
    invoke-virtual {v7, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@167
    move-result-object v7

    #@168
    check-cast v7, Ljava/lang/CharSequence;

    #@16a
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@16d
    .line 170
    iget-object v4, v8, Lcom/permissionx/guolindev/databinding/PermissionxPermissionItemBinding;->permissionIcon:Landroid/widget/ImageView;

    #@16f
    sget v7, Lcom/permissionx/guolindev/R$drawable;->permissionx_ic_install:I

    #@171
    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    #@174
    goto/16 :goto_1fe

    #@176
    :cond_176
    const-string v9, "android.permission.POST_NOTIFICATIONS"

    #@178
    .line 172
    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@17b
    move-result v9

    #@17c
    if-eqz v9, :cond_19b

    #@17e
    .line 173
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    #@180
    if-ge v9, v4, :cond_19b

    #@182
    .line 176
    iget-object v4, v8, Lcom/permissionx/guolindev/databinding/PermissionxPermissionItemBinding;->permissionText:Landroid/widget/TextView;

    #@184
    invoke-virtual {p0}, Lcom/permissionx/guolindev/dialog/DefaultDialog;->getContext()Landroid/content/Context;

    #@187
    move-result-object v7

    #@188
    sget v9, Lcom/permissionx/guolindev/R$string;->permissionx_post_notification:I

    #@18a
    invoke-virtual {v7, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@18d
    move-result-object v7

    #@18e
    check-cast v7, Ljava/lang/CharSequence;

    #@190
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@193
    .line 177
    iget-object v4, v8, Lcom/permissionx/guolindev/databinding/PermissionxPermissionItemBinding;->permissionIcon:Landroid/widget/ImageView;

    #@195
    sget v7, Lcom/permissionx/guolindev/R$drawable;->permissionx_ic_notification:I

    #@197
    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    #@19a
    goto :goto_1fe

    #@19b
    :cond_19b
    const-string v4, "android.permission.BODY_SENSORS_BACKGROUND"

    #@19d
    .line 179
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@1a0
    move-result v4

    #@1a1
    if-eqz v4, :cond_1cb

    #@1a3
    .line 180
    iget-object v4, v8, Lcom/permissionx/guolindev/databinding/PermissionxPermissionItemBinding;->permissionText:Landroid/widget/TextView;

    #@1a5
    invoke-virtual {p0}, Lcom/permissionx/guolindev/dialog/DefaultDialog;->getContext()Landroid/content/Context;

    #@1a8
    move-result-object v9

    #@1a9
    sget v11, Lcom/permissionx/guolindev/R$string;->permissionx_body_sensor_background:I

    #@1ab
    invoke-virtual {v9, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@1ae
    move-result-object v9

    #@1af
    check-cast v9, Ljava/lang/CharSequence;

    #@1b1
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@1b4
    .line 181
    iget-object v4, v8, Lcom/permissionx/guolindev/databinding/PermissionxPermissionItemBinding;->permissionIcon:Landroid/widget/ImageView;

    #@1b6
    invoke-virtual {p0}, Lcom/permissionx/guolindev/dialog/DefaultDialog;->getContext()Landroid/content/Context;

    #@1b9
    move-result-object v9

    #@1ba
    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@1bd
    move-result-object v9

    #@1be
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    #@1c1
    invoke-virtual {v9, v5, v7}, Landroid/content/pm/PackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    #@1c4
    move-result-object v7

    #@1c5
    iget v7, v7, Landroid/content/pm/PermissionGroupInfo;->icon:I

    #@1c7
    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    #@1ca
    goto :goto_1fe

    #@1cb
    .line 184
    :cond_1cb
    iget-object v4, v8, Lcom/permissionx/guolindev/databinding/PermissionxPermissionItemBinding;->permissionText:Landroid/widget/TextView;

    #@1cd
    invoke-virtual {p0}, Lcom/permissionx/guolindev/dialog/DefaultDialog;->getContext()Landroid/content/Context;

    #@1d0
    move-result-object v9

    #@1d1
    invoke-virtual {p0}, Lcom/permissionx/guolindev/dialog/DefaultDialog;->getContext()Landroid/content/Context;

    #@1d4
    move-result-object v11

    #@1d5
    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@1d8
    move-result-object v11

    #@1d9
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    #@1dc
    invoke-virtual {v11, v5, v7}, Landroid/content/pm/PackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    #@1df
    move-result-object v11

    #@1e0
    iget v11, v11, Landroid/content/pm/PermissionGroupInfo;->labelRes:I

    #@1e2
    invoke-virtual {v9, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@1e5
    move-result-object v9

    #@1e6
    check-cast v9, Ljava/lang/CharSequence;

    #@1e8
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@1eb
    .line 185
    iget-object v4, v8, Lcom/permissionx/guolindev/databinding/PermissionxPermissionItemBinding;->permissionIcon:Landroid/widget/ImageView;

    #@1ed
    invoke-virtual {p0}, Lcom/permissionx/guolindev/dialog/DefaultDialog;->getContext()Landroid/content/Context;

    #@1f0
    move-result-object v9

    #@1f1
    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@1f4
    move-result-object v9

    #@1f5
    invoke-virtual {v9, v5, v7}, Landroid/content/pm/PackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    #@1f8
    move-result-object v7

    #@1f9
    iget v7, v7, Landroid/content/pm/PermissionGroupInfo;->icon:I

    #@1fb
    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    #@1fe
    .line 188
    :goto_1fe
    invoke-direct {p0}, Lcom/permissionx/guolindev/dialog/DefaultDialog;->isDarkTheme()Z

    #@201
    move-result v4

    #@202
    const/4 v7, -0x1

    #@203
    if-eqz v4, :cond_213

    #@205
    .line 189
    iget v4, p0, Lcom/permissionx/guolindev/dialog/DefaultDialog;->darkColor:I

    #@207
    if-eq v4, v7, :cond_220

    #@209
    .line 190
    iget-object v4, v8, Lcom/permissionx/guolindev/databinding/PermissionxPermissionItemBinding;->permissionIcon:Landroid/widget/ImageView;

    #@20b
    iget v7, p0, Lcom/permissionx/guolindev/dialog/DefaultDialog;->darkColor:I

    #@20d
    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    #@20f
    invoke-virtual {v4, v7, v9}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    #@212
    goto :goto_220

    #@213
    .line 193
    :cond_213
    iget v4, p0, Lcom/permissionx/guolindev/dialog/DefaultDialog;->lightColor:I

    #@215
    if-eq v4, v7, :cond_220

    #@217
    .line 194
    iget-object v4, v8, Lcom/permissionx/guolindev/databinding/PermissionxPermissionItemBinding;->permissionIcon:Landroid/widget/ImageView;

    #@219
    iget v7, p0, Lcom/permissionx/guolindev/dialog/DefaultDialog;->lightColor:I

    #@21b
    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    #@21d
    invoke-virtual {v4, v7, v9}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    #@220
    .line 197
    :cond_220
    :goto_220
    iget-object v4, p0, Lcom/permissionx/guolindev/dialog/DefaultDialog;->binding:Lcom/permissionx/guolindev/databinding/PermissionxDefaultDialogLayoutBinding;

    #@222
    if-nez v4, :cond_228

    #@224
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    #@227
    goto :goto_229

    #@228
    :cond_228
    move-object v6, v4

    #@229
    :goto_229
    iget-object v4, v6, Lcom/permissionx/guolindev/databinding/PermissionxDefaultDialogLayoutBinding;->permissionsLayout:Landroid/widget/LinearLayout;

    #@22b
    invoke-virtual {v8}, Lcom/permissionx/guolindev/databinding/PermissionxPermissionItemBinding;->getRoot()Landroid/widget/LinearLayout;

    #@22e
    move-result-object v6

    #@22f
    check-cast v6, Landroid/view/View;

    #@231
    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    #@234
    if-nez v5, :cond_237

    #@236
    goto :goto_238

    #@237
    :cond_237
    move-object v3, v5

    #@238
    .line 198
    :goto_238
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@23b
    goto/16 :goto_d

    #@23d
    :cond_23d
    return-void
.end method

.method private final isDarkTheme()Z
    .registers 3

    #@0
    .line 232
    invoke-virtual {p0}, Lcom/permissionx/guolindev/dialog/DefaultDialog;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@b
    move-result-object v0

    #@c
    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    #@e
    and-int/lit8 v0, v0, 0x30

    #@10
    const/16 v1, 0x20

    #@12
    if-ne v0, v1, :cond_16

    #@14
    const/4 v0, 0x1

    #@15
    goto :goto_17

    #@16
    :cond_16
    const/4 v0, 0x0

    #@17
    :goto_17
    return v0
.end method

.method private final setupText()V
    .registers 5

    #@0
    .line 99
    iget-object v0, p0, Lcom/permissionx/guolindev/dialog/DefaultDialog;->binding:Lcom/permissionx/guolindev/databinding/PermissionxDefaultDialogLayoutBinding;

    #@2
    const/4 v1, 0x0

    #@3
    const-string v2, "binding"

    #@5
    if-nez v0, :cond_b

    #@7
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    #@a
    move-object v0, v1

    #@b
    :cond_b
    iget-object v0, v0, Lcom/permissionx/guolindev/databinding/PermissionxDefaultDialogLayoutBinding;->messageText:Landroid/widget/TextView;

    #@d
    iget-object v3, p0, Lcom/permissionx/guolindev/dialog/DefaultDialog;->message:Ljava/lang/String;

    #@f
    check-cast v3, Ljava/lang/CharSequence;

    #@11
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@14
    .line 100
    iget-object v0, p0, Lcom/permissionx/guolindev/dialog/DefaultDialog;->binding:Lcom/permissionx/guolindev/databinding/PermissionxDefaultDialogLayoutBinding;

    #@16
    if-nez v0, :cond_1c

    #@18
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    #@1b
    move-object v0, v1

    #@1c
    :cond_1c
    iget-object v0, v0, Lcom/permissionx/guolindev/databinding/PermissionxDefaultDialogLayoutBinding;->positiveBtn:Landroid/widget/Button;

    #@1e
    iget-object v3, p0, Lcom/permissionx/guolindev/dialog/DefaultDialog;->positiveText:Ljava/lang/String;

    #@20
    check-cast v3, Ljava/lang/CharSequence;

    #@22
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    #@25
    .line 101
    iget-object v0, p0, Lcom/permissionx/guolindev/dialog/DefaultDialog;->negativeText:Ljava/lang/String;

    #@27
    if-eqz v0, :cond_49

    #@29
    .line 102
    iget-object v0, p0, Lcom/permissionx/guolindev/dialog/DefaultDialog;->binding:Lcom/permissionx/guolindev/databinding/PermissionxDefaultDialogLayoutBinding;

    #@2b
    if-nez v0, :cond_31

    #@2d
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    #@30
    move-object v0, v1

    #@31
    :cond_31
    iget-object v0, v0, Lcom/permissionx/guolindev/databinding/PermissionxDefaultDialogLayoutBinding;->negativeLayout:Landroid/widget/LinearLayout;

    #@33
    const/4 v3, 0x0

    #@34
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    #@37
    .line 103
    iget-object v0, p0, Lcom/permissionx/guolindev/dialog/DefaultDialog;->binding:Lcom/permissionx/guolindev/databinding/PermissionxDefaultDialogLayoutBinding;

    #@39
    if-nez v0, :cond_3f

    #@3b
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    #@3e
    move-object v0, v1

    #@3f
    :cond_3f
    iget-object v0, v0, Lcom/permissionx/guolindev/databinding/PermissionxDefaultDialogLayoutBinding;->negativeBtn:Landroid/widget/Button;

    #@41
    iget-object v3, p0, Lcom/permissionx/guolindev/dialog/DefaultDialog;->negativeText:Ljava/lang/String;

    #@43
    check-cast v3, Ljava/lang/CharSequence;

    #@45
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    #@48
    goto :goto_58

    #@49
    .line 105
    :cond_49
    iget-object v0, p0, Lcom/permissionx/guolindev/dialog/DefaultDialog;->binding:Lcom/permissionx/guolindev/databinding/PermissionxDefaultDialogLayoutBinding;

    #@4b
    if-nez v0, :cond_51

    #@4d
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    #@50
    move-object v0, v1

    #@51
    :cond_51
    iget-object v0, v0, Lcom/permissionx/guolindev/databinding/PermissionxDefaultDialogLayoutBinding;->negativeLayout:Landroid/widget/LinearLayout;

    #@53
    const/16 v3, 0x8

    #@55
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    #@58
    .line 107
    :goto_58
    invoke-direct {p0}, Lcom/permissionx/guolindev/dialog/DefaultDialog;->isDarkTheme()Z

    #@5b
    move-result v0

    #@5c
    const/4 v3, -0x1

    #@5d
    if-eqz v0, :cond_83

    #@5f
    .line 108
    iget v0, p0, Lcom/permissionx/guolindev/dialog/DefaultDialog;->darkColor:I

    #@61
    if-eq v0, v3, :cond_a6

    #@63
    .line 109
    iget-object v0, p0, Lcom/permissionx/guolindev/dialog/DefaultDialog;->binding:Lcom/permissionx/guolindev/databinding/PermissionxDefaultDialogLayoutBinding;

    #@65
    if-nez v0, :cond_6b

    #@67
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    #@6a
    move-object v0, v1

    #@6b
    :cond_6b
    iget-object v0, v0, Lcom/permissionx/guolindev/databinding/PermissionxDefaultDialogLayoutBinding;->positiveBtn:Landroid/widget/Button;

    #@6d
    iget v3, p0, Lcom/permissionx/guolindev/dialog/DefaultDialog;->darkColor:I

    #@6f
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextColor(I)V

    #@72
    .line 110
    iget-object v0, p0, Lcom/permissionx/guolindev/dialog/DefaultDialog;->binding:Lcom/permissionx/guolindev/databinding/PermissionxDefaultDialogLayoutBinding;

    #@74
    if-nez v0, :cond_7a

    #@76
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    #@79
    goto :goto_7b

    #@7a
    :cond_7a
    move-object v1, v0

    #@7b
    :goto_7b
    iget-object v0, v1, Lcom/permissionx/guolindev/databinding/PermissionxDefaultDialogLayoutBinding;->negativeBtn:Landroid/widget/Button;

    #@7d
    iget v1, p0, Lcom/permissionx/guolindev/dialog/DefaultDialog;->darkColor:I

    #@7f
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    #@82
    goto :goto_a6

    #@83
    .line 113
    :cond_83
    iget v0, p0, Lcom/permissionx/guolindev/dialog/DefaultDialog;->lightColor:I

    #@85
    if-eq v0, v3, :cond_a6

    #@87
    .line 114
    iget-object v0, p0, Lcom/permissionx/guolindev/dialog/DefaultDialog;->binding:Lcom/permissionx/guolindev/databinding/PermissionxDefaultDialogLayoutBinding;

    #@89
    if-nez v0, :cond_8f

    #@8b
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    #@8e
    move-object v0, v1

    #@8f
    :cond_8f
    iget-object v0, v0, Lcom/permissionx/guolindev/databinding/PermissionxDefaultDialogLayoutBinding;->positiveBtn:Landroid/widget/Button;

    #@91
    iget v3, p0, Lcom/permissionx/guolindev/dialog/DefaultDialog;->lightColor:I

    #@93
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextColor(I)V

    #@96
    .line 115
    iget-object v0, p0, Lcom/permissionx/guolindev/dialog/DefaultDialog;->binding:Lcom/permissionx/guolindev/databinding/PermissionxDefaultDialogLayoutBinding;

    #@98
    if-nez v0, :cond_9e

    #@9a
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    #@9d
    goto :goto_9f

    #@9e
    :cond_9e
    move-object v1, v0

    #@9f
    :goto_9f
    iget-object v0, v1, Lcom/permissionx/guolindev/databinding/PermissionxDefaultDialogLayoutBinding;->negativeBtn:Landroid/widget/Button;

    #@a1
    iget v1, p0, Lcom/permissionx/guolindev/dialog/DefaultDialog;->lightColor:I

    #@a3
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    #@a6
    :cond_a6
    :goto_a6
    return-void
.end method

.method private final setupWindow()V
    .registers 9

    #@0
    .line 207
    invoke-virtual {p0}, Lcom/permissionx/guolindev/dialog/DefaultDialog;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@b
    move-result-object v0

    #@c
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    #@e
    .line 208
    invoke-virtual {p0}, Lcom/permissionx/guolindev/dialog/DefaultDialog;->getContext()Landroid/content/Context;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@19
    move-result-object v1

    #@1a
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    #@1c
    const/16 v2, 0x11

    #@1e
    if-ge v0, v1, :cond_3b

    #@20
    .line 211
    invoke-virtual {p0}, Lcom/permissionx/guolindev/dialog/DefaultDialog;->getWindow()Landroid/view/Window;

    #@23
    move-result-object v1

    #@24
    if-eqz v1, :cond_55

    #@26
    .line 212
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    #@29
    move-result-object v3

    #@2a
    .line 213
    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    #@2d
    int-to-double v4, v0

    #@2e
    const-wide v6, 0x3feb851eb851eb85L    # 0.86

    #@33
    mul-double/2addr v4, v6

    #@34
    double-to-int v0, v4

    #@35
    .line 214
    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    #@37
    .line 215
    invoke-virtual {v1, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    #@3a
    goto :goto_55

    #@3b
    .line 219
    :cond_3b
    invoke-virtual {p0}, Lcom/permissionx/guolindev/dialog/DefaultDialog;->getWindow()Landroid/view/Window;

    #@3e
    move-result-object v1

    #@3f
    if-eqz v1, :cond_55

    #@41
    .line 220
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    #@44
    move-result-object v3

    #@45
    .line 221
    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    #@48
    int-to-double v4, v0

    #@49
    const-wide v6, 0x3fe3333333333333L    # 0.6

    #@4e
    mul-double/2addr v4, v6

    #@4f
    double-to-int v0, v4

    #@50
    .line 222
    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    #@52
    .line 223
    invoke-virtual {v1, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    #@55
    :cond_55
    :goto_55
    return-void
.end method


# virtual methods
.method public getNegativeButton()Landroid/view/View;
    .registers 3

    #@0
    .line 73
    iget-object v0, p0, Lcom/permissionx/guolindev/dialog/DefaultDialog;->negativeText:Ljava/lang/String;

    #@2
    const/4 v1, 0x0

    #@3
    if-eqz v0, :cond_15

    #@5
    .line 74
    iget-object v0, p0, Lcom/permissionx/guolindev/dialog/DefaultDialog;->binding:Lcom/permissionx/guolindev/databinding/PermissionxDefaultDialogLayoutBinding;

    #@7
    if-nez v0, :cond_f

    #@9
    const-string v0, "binding"

    #@b
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    #@e
    goto :goto_10

    #@f
    :cond_f
    move-object v1, v0

    #@10
    :goto_10
    iget-object v0, v1, Lcom/permissionx/guolindev/databinding/PermissionxDefaultDialogLayoutBinding;->negativeBtn:Landroid/widget/Button;

    #@12
    check-cast v0, Landroid/view/View;

    #@14
    return-object v0

    #@15
    :cond_15
    move-object v0, v1

    #@16
    check-cast v0, Landroid/view/View;

    #@18
    return-object v1
.end method

.method public getPermissionsToRequest()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .line 83
    iget-object v0, p0, Lcom/permissionx/guolindev/dialog/DefaultDialog;->permissions:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public getPositiveButton()Landroid/view/View;
    .registers 3

    #@0
    .line 64
    iget-object v0, p0, Lcom/permissionx/guolindev/dialog/DefaultDialog;->binding:Lcom/permissionx/guolindev/databinding/PermissionxDefaultDialogLayoutBinding;

    #@2
    if-nez v0, :cond_a

    #@4
    const-string v0, "binding"

    #@6
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    #@9
    const/4 v0, 0x0

    #@a
    :cond_a
    iget-object v0, v0, Lcom/permissionx/guolindev/databinding/PermissionxDefaultDialogLayoutBinding;->positiveBtn:Landroid/widget/Button;

    #@c
    const-string v1, "binding.positiveBtn"

    #@e
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    #@11
    check-cast v0, Landroid/view/View;

    #@13
    return-object v0
.end method

.method public final isPermissionLayoutEmpty$permissionx_release()Z
    .registers 2

    #@0
    .line 92
    iget-object v0, p0, Lcom/permissionx/guolindev/dialog/DefaultDialog;->binding:Lcom/permissionx/guolindev/databinding/PermissionxDefaultDialogLayoutBinding;

    #@2
    if-nez v0, :cond_a

    #@4
    const-string v0, "binding"

    #@6
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    #@9
    const/4 v0, 0x0

    #@a
    :cond_a
    iget-object v0, v0, Lcom/permissionx/guolindev/databinding/PermissionxDefaultDialogLayoutBinding;->permissionsLayout:Landroid/widget/LinearLayout;

    #@c
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    #@f
    move-result v0

    #@10
    if-nez v0, :cond_14

    #@12
    const/4 v0, 0x1

    #@13
    goto :goto_15

    #@14
    :cond_14
    const/4 v0, 0x0

    #@15
    :goto_15
    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    #@0
    .line 51
    invoke-super {p0, p1}, Lcom/permissionx/guolindev/dialog/RationaleDialog;->onCreate(Landroid/os/Bundle;)V

    #@3
    .line 52
    invoke-virtual {p0}, Lcom/permissionx/guolindev/dialog/DefaultDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    #@6
    move-result-object p1

    #@7
    invoke-static {p1}, Lcom/permissionx/guolindev/databinding/PermissionxDefaultDialogLayoutBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/permissionx/guolindev/databinding/PermissionxDefaultDialogLayoutBinding;

    #@a
    move-result-object p1

    #@b
    const-string v0, "inflate(layoutInflater)"

    #@d
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    #@10
    iput-object p1, p0, Lcom/permissionx/guolindev/dialog/DefaultDialog;->binding:Lcom/permissionx/guolindev/databinding/PermissionxDefaultDialogLayoutBinding;

    #@12
    if-nez p1, :cond_1a

    #@14
    const-string p1, "binding"

    #@16
    .line 53
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    #@19
    const/4 p1, 0x0

    #@1a
    :cond_1a
    invoke-virtual {p1}, Lcom/permissionx/guolindev/databinding/PermissionxDefaultDialogLayoutBinding;->getRoot()Landroid/widget/LinearLayout;

    #@1d
    move-result-object p1

    #@1e
    check-cast p1, Landroid/view/View;

    #@20
    invoke-virtual {p0, p1}, Lcom/permissionx/guolindev/dialog/DefaultDialog;->setContentView(Landroid/view/View;)V

    #@23
    .line 54
    invoke-direct {p0}, Lcom/permissionx/guolindev/dialog/DefaultDialog;->setupText()V

    #@26
    .line 55
    invoke-direct {p0}, Lcom/permissionx/guolindev/dialog/DefaultDialog;->buildPermissionsLayout()V

    #@29
    .line 56
    invoke-direct {p0}, Lcom/permissionx/guolindev/dialog/DefaultDialog;->setupWindow()V

    #@2c
    return-void
.end method
