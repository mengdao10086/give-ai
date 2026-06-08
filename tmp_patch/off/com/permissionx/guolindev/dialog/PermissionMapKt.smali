.class public final Lcom/permissionx/guolindev/dialog/PermissionMapKt;
.super Ljava/lang/Object;
.source "PermissionMap.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010$\n\u0002\u0008\t\"\u0017\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0003\u0010\u0004\"\"\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\"\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u0008\"\"\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u0008\"\"\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u0008\u00a8\u0006\u000f"
    }
    d2 = {
        "allSpecialPermissions",
        "",
        "",
        "getAllSpecialPermissions",
        "()Ljava/util/Set;",
        "permissionMapOnQ",
        "",
        "getPermissionMapOnQ",
        "()Ljava/util/Map;",
        "permissionMapOnR",
        "getPermissionMapOnR",
        "permissionMapOnS",
        "getPermissionMapOnS",
        "permissionMapOnT",
        "getPermissionMapOnT",
        "permissionx_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field private static final allSpecialPermissions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final permissionMapOnQ:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final permissionMapOnR:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final permissionMapOnS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final permissionMapOnT:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 12

    #@0
    const-string v0, "android.permission.ACCESS_BACKGROUND_LOCATION"

    #@2
    const-string v1, "android.permission.SYSTEM_ALERT_WINDOW"

    #@4
    const-string v2, "android.permission.WRITE_SETTINGS"

    #@6
    const-string v3, "android.permission.MANAGE_EXTERNAL_STORAGE"

    #@8
    const-string v4, "android.permission.REQUEST_INSTALL_PACKAGES"

    #@a
    const-string v5, "android.permission.POST_NOTIFICATIONS"

    #@c
    const-string v6, "android.permission.BODY_SENSORS_BACKGROUND"

    #@e
    .line 38
    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    .line 31
    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    #@15
    move-result-object v0

    #@16
    sput-object v0, Lcom/permissionx/guolindev/dialog/PermissionMapKt;->allSpecialPermissions:Ljava/util/Set;

    #@18
    const/16 v0, 0x1e

    #@1a
    new-array v0, v0, [Lkotlin/Pair;

    #@1c
    const-string v1, "android.permission.READ_CALENDAR"

    #@1e
    const-string v2, "android.permission-group.CALENDAR"

    #@20
    .line 49
    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    #@23
    move-result-object v1

    #@24
    const/4 v3, 0x0

    #@25
    aput-object v1, v0, v3

    #@27
    const-string v1, "android.permission.WRITE_CALENDAR"

    #@29
    .line 50
    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    #@2c
    move-result-object v1

    #@2d
    const/4 v2, 0x1

    #@2e
    aput-object v1, v0, v2

    #@30
    const-string v1, "android.permission.READ_CALL_LOG"

    #@32
    const-string v4, "android.permission-group.CALL_LOG"

    #@34
    .line 51
    invoke-static {v1, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    #@37
    move-result-object v1

    #@38
    const/4 v5, 0x2

    #@39
    aput-object v1, v0, v5

    #@3b
    const-string v1, "android.permission.WRITE_CALL_LOG"

    #@3d
    .line 52
    invoke-static {v1, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    #@40
    move-result-object v1

    #@41
    const/4 v6, 0x3

    #@42
    aput-object v1, v0, v6

    #@44
    const-string v1, "android.permission.PROCESS_OUTGOING_CALLS"

    #@46
    .line 53
    invoke-static {v1, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    #@49
    move-result-object v1

    #@4a
    const/4 v4, 0x4

    #@4b
    aput-object v1, v0, v4

    #@4d
    const-string v1, "android.permission.CAMERA"

    #@4f
    const-string v7, "android.permission-group.CAMERA"

    #@51
    .line 54
    invoke-static {v1, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    #@54
    move-result-object v1

    #@55
    const/4 v7, 0x5

    #@56
    aput-object v1, v0, v7

    #@58
    const-string v1, "android.permission.READ_CONTACTS"

    #@5a
    const-string v8, "android.permission-group.CONTACTS"

    #@5c
    .line 55
    invoke-static {v1, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    #@5f
    move-result-object v1

    #@60
    const/4 v9, 0x6

    #@61
    aput-object v1, v0, v9

    #@63
    const-string v1, "android.permission.WRITE_CONTACTS"

    #@65
    .line 56
    invoke-static {v1, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    #@68
    move-result-object v1

    #@69
    const/4 v10, 0x7

    #@6a
    aput-object v1, v0, v10

    #@6c
    const-string v1, "android.permission.GET_ACCOUNTS"

    #@6e
    .line 57
    invoke-static {v1, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    #@71
    move-result-object v1

    #@72
    const/16 v8, 0x8

    #@74
    aput-object v1, v0, v8

    #@76
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    #@78
    const-string v8, "android.permission-group.LOCATION"

    #@7a
    .line 58
    invoke-static {v1, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    #@7d
    move-result-object v1

    #@7e
    const/16 v10, 0x9

    #@80
    aput-object v1, v0, v10

    #@82
    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    #@84
    .line 59
    invoke-static {v1, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    #@87
    move-result-object v1

    #@88
    const/16 v10, 0xa

    #@8a
    aput-object v1, v0, v10

    #@8c
    const-string v1, "android.permission.ACCESS_BACKGROUND_LOCATION"

    #@8e
    .line 60
    invoke-static {v1, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    #@91
    move-result-object v1

    #@92
    const/16 v8, 0xb

    #@94
    aput-object v1, v0, v8

    #@96
    const-string v1, "android.permission.RECORD_AUDIO"

    #@98
    const-string v8, "android.permission-group.MICROPHONE"

    #@9a
    .line 61
    invoke-static {v1, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    #@9d
    move-result-object v1

    #@9e
    const/16 v8, 0xc

    #@a0
    aput-object v1, v0, v8

    #@a2
    const-string v1, "android.permission.READ_PHONE_STATE"

    #@a4
    const-string v8, "android.permission-group.PHONE"

    #@a6
    .line 62
    invoke-static {v1, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    #@a9
    move-result-object v1

    #@aa
    const/16 v10, 0xd

    #@ac
    aput-object v1, v0, v10

    #@ae
    const-string v1, "android.permission.READ_PHONE_NUMBERS"

    #@b0
    .line 63
    invoke-static {v1, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    #@b3
    move-result-object v1

    #@b4
    const/16 v10, 0xe

    #@b6
    aput-object v1, v0, v10

    #@b8
    const-string v1, "android.permission.CALL_PHONE"

    #@ba
    .line 64
    invoke-static {v1, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    #@bd
    move-result-object v1

    #@be
    const/16 v10, 0xf

    #@c0
    aput-object v1, v0, v10

    #@c2
    const-string v1, "android.permission.ANSWER_PHONE_CALLS"

    #@c4
    .line 65
    invoke-static {v1, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    #@c7
    move-result-object v1

    #@c8
    const/16 v10, 0x10

    #@ca
    aput-object v1, v0, v10

    #@cc
    const-string v1, "com.android.voicemail.permission.ADD_VOICEMAIL"

    #@ce
    .line 66
    invoke-static {v1, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    #@d1
    move-result-object v1

    #@d2
    const/16 v10, 0x11

    #@d4
    aput-object v1, v0, v10

    #@d6
    const-string v1, "android.permission.USE_SIP"

    #@d8
    .line 67
    invoke-static {v1, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    #@db
    move-result-object v1

    #@dc
    const/16 v10, 0x12

    #@de
    aput-object v1, v0, v10

    #@e0
    const-string v1, "android.permission.ACCEPT_HANDOVER"

    #@e2
    .line 68
    invoke-static {v1, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    #@e5
    move-result-object v1

    #@e6
    const/16 v8, 0x13

    #@e8
    aput-object v1, v0, v8

    #@ea
    const-string v1, "android.permission.BODY_SENSORS"

    #@ec
    const-string v8, "android.permission-group.SENSORS"

    #@ee
    .line 69
    invoke-static {v1, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    #@f1
    move-result-object v1

    #@f2
    const/16 v10, 0x14

    #@f4
    aput-object v1, v0, v10

    #@f6
    const-string v1, "android.permission.ACTIVITY_RECOGNITION"

    #@f8
    const-string v10, "android.permission-group.ACTIVITY_RECOGNITION"

    #@fa
    .line 70
    invoke-static {v1, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    #@fd
    move-result-object v1

    #@fe
    const/16 v10, 0x15

    #@100
    aput-object v1, v0, v10

    #@102
    const-string v1, "android.permission.SEND_SMS"

    #@104
    const-string v10, "android.permission-group.SMS"

    #@106
    .line 71
    invoke-static {v1, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    #@109
    move-result-object v1

    #@10a
    const/16 v11, 0x16

    #@10c
    aput-object v1, v0, v11

    #@10e
    const-string v1, "android.permission.RECEIVE_SMS"

    #@110
    .line 72
    invoke-static {v1, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    #@113
    move-result-object v1

    #@114
    const/16 v11, 0x17

    #@116
    aput-object v1, v0, v11

    #@118
    const-string v1, "android.permission.READ_SMS"

    #@11a
    .line 73
    invoke-static {v1, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    #@11d
    move-result-object v1

    #@11e
    const/16 v11, 0x18

    #@120
    aput-object v1, v0, v11

    #@122
    const-string v1, "android.permission.RECEIVE_WAP_PUSH"

    #@124
    .line 74
    invoke-static {v1, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    #@127
    move-result-object v1

    #@128
    const/16 v11, 0x19

    #@12a
    aput-object v1, v0, v11

    #@12c
    const-string v1, "android.permission.RECEIVE_MMS"

    #@12e
    .line 75
    invoke-static {v1, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    #@131
    move-result-object v1

    #@132
    const/16 v10, 0x1a

    #@134
    aput-object v1, v0, v10

    #@136
    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    #@138
    const-string v10, "android.permission-group.STORAGE"

    #@13a
    .line 76
    invoke-static {v1, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    #@13d
    move-result-object v1

    #@13e
    const/16 v11, 0x1b

    #@140
    aput-object v1, v0, v11

    #@142
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    #@144
    .line 77
    invoke-static {v1, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    #@147
    move-result-object v1

    #@148
    const/16 v11, 0x1c

    #@14a
    aput-object v1, v0, v11

    #@14c
    const-string v1, "android.permission.ACCESS_MEDIA_LOCATION"

    #@14e
    .line 78
    invoke-static {v1, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    #@151
    move-result-object v1

    #@152
    const/16 v11, 0x1d

    #@154
    aput-object v1, v0, v11

    #@156
    .line 48
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    #@159
    move-result-object v0

    #@15a
    sput-object v0, Lcom/permissionx/guolindev/dialog/PermissionMapKt;->permissionMapOnQ:Ljava/util/Map;

    #@15c
    const-string v1, "android.permission.MANAGE_EXTERNAL_STORAGE"

    #@15e
    .line 86
    invoke-static {v1, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    #@161
    move-result-object v1

    #@162
    .line 85
    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    #@165
    move-result-object v1

    #@166
    .line 87
    invoke-static {v1}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    #@169
    move-result-object v1

    #@16a
    .line 88
    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    #@16d
    .line 89
    invoke-static {v1}, Lkotlin/collections/MapsKt;->toMap(Ljava/util/Map;)Ljava/util/Map;

    #@170
    move-result-object v0

    #@171
    sput-object v0, Lcom/permissionx/guolindev/dialog/PermissionMapKt;->permissionMapOnR:Ljava/util/Map;

    #@173
    new-array v1, v6, [Lkotlin/Pair;

    #@175
    const-string v10, "android.permission.BLUETOOTH_SCAN"

    #@177
    const-string v11, "android.permission-group.NEARBY_DEVICES"

    #@179
    .line 96
    invoke-static {v10, v11}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    #@17c
    move-result-object v10

    #@17d
    aput-object v10, v1, v3

    #@17f
    const-string v10, "android.permission.BLUETOOTH_ADVERTISE"

    #@181
    .line 97
    invoke-static {v10, v11}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    #@184
    move-result-object v10

    #@185
    aput-object v10, v1, v2

    #@187
    const-string v10, "android.permission.BLUETOOTH_CONNECT"

    #@189
    .line 98
    invoke-static {v10, v11}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    #@18c
    move-result-object v10

    #@18d
    aput-object v10, v1, v5

    #@18f
    .line 95
    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    #@192
    move-result-object v1

    #@193
    .line 99
    invoke-static {v1}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    #@196
    move-result-object v1

    #@197
    .line 100
    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    #@19a
    .line 101
    invoke-static {v1}, Lkotlin/collections/MapsKt;->toMap(Ljava/util/Map;)Ljava/util/Map;

    #@19d
    move-result-object v0

    #@19e
    sput-object v0, Lcom/permissionx/guolindev/dialog/PermissionMapKt;->permissionMapOnS:Ljava/util/Map;

    #@1a0
    new-array v1, v9, [Lkotlin/Pair;

    #@1a2
    const-string v9, "android.permission.READ_MEDIA_IMAGES"

    #@1a4
    const-string v10, "android.permission-group.READ_MEDIA_VISUAL"

    #@1a6
    .line 108
    invoke-static {v9, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    #@1a9
    move-result-object v9

    #@1aa
    aput-object v9, v1, v3

    #@1ac
    const-string v3, "android.permission.READ_MEDIA_VIDEO"

    #@1ae
    .line 109
    invoke-static {v3, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    #@1b1
    move-result-object v3

    #@1b2
    aput-object v3, v1, v2

    #@1b4
    const-string v2, "android.permission.READ_MEDIA_AUDIO"

    #@1b6
    const-string v3, "android.permission-group.READ_MEDIA_AURAL"

    #@1b8
    .line 110
    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    #@1bb
    move-result-object v2

    #@1bc
    aput-object v2, v1, v5

    #@1be
    const-string v2, "android.permission.POST_NOTIFICATIONS"

    #@1c0
    const-string v3, "android.permission-group.NOTIFICATIONS"

    #@1c2
    .line 111
    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    #@1c5
    move-result-object v2

    #@1c6
    aput-object v2, v1, v6

    #@1c8
    const-string v2, "android.permission.NEARBY_WIFI_DEVICES"

    #@1ca
    .line 112
    invoke-static {v2, v11}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    #@1cd
    move-result-object v2

    #@1ce
    aput-object v2, v1, v4

    #@1d0
    const-string v2, "android.permission.BODY_SENSORS_BACKGROUND"

    #@1d2
    .line 113
    invoke-static {v2, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    #@1d5
    move-result-object v2

    #@1d6
    aput-object v2, v1, v7

    #@1d8
    .line 107
    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    #@1db
    move-result-object v1

    #@1dc
    .line 114
    invoke-static {v1}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    #@1df
    move-result-object v1

    #@1e0
    .line 115
    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    #@1e3
    .line 116
    invoke-static {v1}, Lkotlin/collections/MapsKt;->toMap(Ljava/util/Map;)Ljava/util/Map;

    #@1e6
    move-result-object v0

    #@1e7
    sput-object v0, Lcom/permissionx/guolindev/dialog/PermissionMapKt;->permissionMapOnT:Ljava/util/Map;

    #@1e9
    return-void
.end method

.method public static final getAllSpecialPermissions()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .line 31
    sget-object v0, Lcom/permissionx/guolindev/dialog/PermissionMapKt;->allSpecialPermissions:Ljava/util/Set;

    #@2
    return-object v0
.end method

.method public static final getPermissionMapOnQ()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .line 48
    sget-object v0, Lcom/permissionx/guolindev/dialog/PermissionMapKt;->permissionMapOnQ:Ljava/util/Map;

    #@2
    return-object v0
.end method

.method public static final getPermissionMapOnR()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .line 85
    sget-object v0, Lcom/permissionx/guolindev/dialog/PermissionMapKt;->permissionMapOnR:Ljava/util/Map;

    #@2
    return-object v0
.end method

.method public static final getPermissionMapOnS()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .line 95
    sget-object v0, Lcom/permissionx/guolindev/dialog/PermissionMapKt;->permissionMapOnS:Ljava/util/Map;

    #@2
    return-object v0
.end method

.method public static final getPermissionMapOnT()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .line 107
    sget-object v0, Lcom/permissionx/guolindev/dialog/PermissionMapKt;->permissionMapOnT:Ljava/util/Map;

    #@2
    return-object v0
.end method
