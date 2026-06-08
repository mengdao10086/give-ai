.class public final enum Landroidx/constraintlayout/core/state/State$Constraint;
.super Ljava/lang/Enum;
.source "State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/state/State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Constraint"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/constraintlayout/core/state/State$Constraint;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/constraintlayout/core/state/State$Constraint;

.field public static final enum BASELINE_TO_BASELINE:Landroidx/constraintlayout/core/state/State$Constraint;

.field public static final enum BASELINE_TO_BOTTOM:Landroidx/constraintlayout/core/state/State$Constraint;

.field public static final enum BASELINE_TO_TOP:Landroidx/constraintlayout/core/state/State$Constraint;

.field public static final enum BOTTOM_TO_BOTTOM:Landroidx/constraintlayout/core/state/State$Constraint;

.field public static final enum BOTTOM_TO_TOP:Landroidx/constraintlayout/core/state/State$Constraint;

.field public static final enum CENTER_HORIZONTALLY:Landroidx/constraintlayout/core/state/State$Constraint;

.field public static final enum CENTER_VERTICALLY:Landroidx/constraintlayout/core/state/State$Constraint;

.field public static final enum CIRCULAR_CONSTRAINT:Landroidx/constraintlayout/core/state/State$Constraint;

.field public static final enum END_TO_END:Landroidx/constraintlayout/core/state/State$Constraint;

.field public static final enum END_TO_START:Landroidx/constraintlayout/core/state/State$Constraint;

.field public static final enum LEFT_TO_LEFT:Landroidx/constraintlayout/core/state/State$Constraint;

.field public static final enum LEFT_TO_RIGHT:Landroidx/constraintlayout/core/state/State$Constraint;

.field public static final enum RIGHT_TO_LEFT:Landroidx/constraintlayout/core/state/State$Constraint;

.field public static final enum RIGHT_TO_RIGHT:Landroidx/constraintlayout/core/state/State$Constraint;

.field public static final enum START_TO_END:Landroidx/constraintlayout/core/state/State$Constraint;

.field public static final enum START_TO_START:Landroidx/constraintlayout/core/state/State$Constraint;

.field public static final enum TOP_TO_BOTTOM:Landroidx/constraintlayout/core/state/State$Constraint;

.field public static final enum TOP_TO_TOP:Landroidx/constraintlayout/core/state/State$Constraint;


# direct methods
.method static constructor <clinit>()V
    .registers 21

    #@0
    .line 51
    new-instance v0, Landroidx/constraintlayout/core/state/State$Constraint;

    #@2
    const-string v1, "LEFT_TO_LEFT"

    #@4
    const/4 v2, 0x0

    #@5
    invoke-direct {v0, v1, v2}, Landroidx/constraintlayout/core/state/State$Constraint;-><init>(Ljava/lang/String;I)V

    #@8
    sput-object v0, Landroidx/constraintlayout/core/state/State$Constraint;->LEFT_TO_LEFT:Landroidx/constraintlayout/core/state/State$Constraint;

    #@a
    .line 52
    new-instance v1, Landroidx/constraintlayout/core/state/State$Constraint;

    #@c
    const-string v3, "LEFT_TO_RIGHT"

    #@e
    const/4 v4, 0x1

    #@f
    invoke-direct {v1, v3, v4}, Landroidx/constraintlayout/core/state/State$Constraint;-><init>(Ljava/lang/String;I)V

    #@12
    sput-object v1, Landroidx/constraintlayout/core/state/State$Constraint;->LEFT_TO_RIGHT:Landroidx/constraintlayout/core/state/State$Constraint;

    #@14
    .line 53
    new-instance v3, Landroidx/constraintlayout/core/state/State$Constraint;

    #@16
    const-string v5, "RIGHT_TO_LEFT"

    #@18
    const/4 v6, 0x2

    #@19
    invoke-direct {v3, v5, v6}, Landroidx/constraintlayout/core/state/State$Constraint;-><init>(Ljava/lang/String;I)V

    #@1c
    sput-object v3, Landroidx/constraintlayout/core/state/State$Constraint;->RIGHT_TO_LEFT:Landroidx/constraintlayout/core/state/State$Constraint;

    #@1e
    .line 54
    new-instance v5, Landroidx/constraintlayout/core/state/State$Constraint;

    #@20
    const-string v7, "RIGHT_TO_RIGHT"

    #@22
    const/4 v8, 0x3

    #@23
    invoke-direct {v5, v7, v8}, Landroidx/constraintlayout/core/state/State$Constraint;-><init>(Ljava/lang/String;I)V

    #@26
    sput-object v5, Landroidx/constraintlayout/core/state/State$Constraint;->RIGHT_TO_RIGHT:Landroidx/constraintlayout/core/state/State$Constraint;

    #@28
    .line 55
    new-instance v7, Landroidx/constraintlayout/core/state/State$Constraint;

    #@2a
    const-string v9, "START_TO_START"

    #@2c
    const/4 v10, 0x4

    #@2d
    invoke-direct {v7, v9, v10}, Landroidx/constraintlayout/core/state/State$Constraint;-><init>(Ljava/lang/String;I)V

    #@30
    sput-object v7, Landroidx/constraintlayout/core/state/State$Constraint;->START_TO_START:Landroidx/constraintlayout/core/state/State$Constraint;

    #@32
    .line 56
    new-instance v9, Landroidx/constraintlayout/core/state/State$Constraint;

    #@34
    const-string v11, "START_TO_END"

    #@36
    const/4 v12, 0x5

    #@37
    invoke-direct {v9, v11, v12}, Landroidx/constraintlayout/core/state/State$Constraint;-><init>(Ljava/lang/String;I)V

    #@3a
    sput-object v9, Landroidx/constraintlayout/core/state/State$Constraint;->START_TO_END:Landroidx/constraintlayout/core/state/State$Constraint;

    #@3c
    .line 57
    new-instance v11, Landroidx/constraintlayout/core/state/State$Constraint;

    #@3e
    const-string v13, "END_TO_START"

    #@40
    const/4 v14, 0x6

    #@41
    invoke-direct {v11, v13, v14}, Landroidx/constraintlayout/core/state/State$Constraint;-><init>(Ljava/lang/String;I)V

    #@44
    sput-object v11, Landroidx/constraintlayout/core/state/State$Constraint;->END_TO_START:Landroidx/constraintlayout/core/state/State$Constraint;

    #@46
    .line 58
    new-instance v13, Landroidx/constraintlayout/core/state/State$Constraint;

    #@48
    const-string v15, "END_TO_END"

    #@4a
    const/4 v14, 0x7

    #@4b
    invoke-direct {v13, v15, v14}, Landroidx/constraintlayout/core/state/State$Constraint;-><init>(Ljava/lang/String;I)V

    #@4e
    sput-object v13, Landroidx/constraintlayout/core/state/State$Constraint;->END_TO_END:Landroidx/constraintlayout/core/state/State$Constraint;

    #@50
    .line 59
    new-instance v15, Landroidx/constraintlayout/core/state/State$Constraint;

    #@52
    const-string v14, "TOP_TO_TOP"

    #@54
    const/16 v12, 0x8

    #@56
    invoke-direct {v15, v14, v12}, Landroidx/constraintlayout/core/state/State$Constraint;-><init>(Ljava/lang/String;I)V

    #@59
    sput-object v15, Landroidx/constraintlayout/core/state/State$Constraint;->TOP_TO_TOP:Landroidx/constraintlayout/core/state/State$Constraint;

    #@5b
    .line 60
    new-instance v14, Landroidx/constraintlayout/core/state/State$Constraint;

    #@5d
    const-string v12, "TOP_TO_BOTTOM"

    #@5f
    const/16 v10, 0x9

    #@61
    invoke-direct {v14, v12, v10}, Landroidx/constraintlayout/core/state/State$Constraint;-><init>(Ljava/lang/String;I)V

    #@64
    sput-object v14, Landroidx/constraintlayout/core/state/State$Constraint;->TOP_TO_BOTTOM:Landroidx/constraintlayout/core/state/State$Constraint;

    #@66
    .line 61
    new-instance v12, Landroidx/constraintlayout/core/state/State$Constraint;

    #@68
    const-string v10, "BOTTOM_TO_TOP"

    #@6a
    const/16 v8, 0xa

    #@6c
    invoke-direct {v12, v10, v8}, Landroidx/constraintlayout/core/state/State$Constraint;-><init>(Ljava/lang/String;I)V

    #@6f
    sput-object v12, Landroidx/constraintlayout/core/state/State$Constraint;->BOTTOM_TO_TOP:Landroidx/constraintlayout/core/state/State$Constraint;

    #@71
    .line 62
    new-instance v10, Landroidx/constraintlayout/core/state/State$Constraint;

    #@73
    const-string v8, "BOTTOM_TO_BOTTOM"

    #@75
    const/16 v6, 0xb

    #@77
    invoke-direct {v10, v8, v6}, Landroidx/constraintlayout/core/state/State$Constraint;-><init>(Ljava/lang/String;I)V

    #@7a
    sput-object v10, Landroidx/constraintlayout/core/state/State$Constraint;->BOTTOM_TO_BOTTOM:Landroidx/constraintlayout/core/state/State$Constraint;

    #@7c
    .line 63
    new-instance v8, Landroidx/constraintlayout/core/state/State$Constraint;

    #@7e
    const-string v6, "BASELINE_TO_BASELINE"

    #@80
    const/16 v4, 0xc

    #@82
    invoke-direct {v8, v6, v4}, Landroidx/constraintlayout/core/state/State$Constraint;-><init>(Ljava/lang/String;I)V

    #@85
    sput-object v8, Landroidx/constraintlayout/core/state/State$Constraint;->BASELINE_TO_BASELINE:Landroidx/constraintlayout/core/state/State$Constraint;

    #@87
    .line 64
    new-instance v6, Landroidx/constraintlayout/core/state/State$Constraint;

    #@89
    const-string v4, "BASELINE_TO_TOP"

    #@8b
    const/16 v2, 0xd

    #@8d
    invoke-direct {v6, v4, v2}, Landroidx/constraintlayout/core/state/State$Constraint;-><init>(Ljava/lang/String;I)V

    #@90
    sput-object v6, Landroidx/constraintlayout/core/state/State$Constraint;->BASELINE_TO_TOP:Landroidx/constraintlayout/core/state/State$Constraint;

    #@92
    .line 65
    new-instance v4, Landroidx/constraintlayout/core/state/State$Constraint;

    #@94
    const-string v2, "BASELINE_TO_BOTTOM"

    #@96
    move-object/from16 v17, v6

    #@98
    const/16 v6, 0xe

    #@9a
    invoke-direct {v4, v2, v6}, Landroidx/constraintlayout/core/state/State$Constraint;-><init>(Ljava/lang/String;I)V

    #@9d
    sput-object v4, Landroidx/constraintlayout/core/state/State$Constraint;->BASELINE_TO_BOTTOM:Landroidx/constraintlayout/core/state/State$Constraint;

    #@9f
    .line 66
    new-instance v2, Landroidx/constraintlayout/core/state/State$Constraint;

    #@a1
    const-string v6, "CENTER_HORIZONTALLY"

    #@a3
    move-object/from16 v18, v4

    #@a5
    const/16 v4, 0xf

    #@a7
    invoke-direct {v2, v6, v4}, Landroidx/constraintlayout/core/state/State$Constraint;-><init>(Ljava/lang/String;I)V

    #@aa
    sput-object v2, Landroidx/constraintlayout/core/state/State$Constraint;->CENTER_HORIZONTALLY:Landroidx/constraintlayout/core/state/State$Constraint;

    #@ac
    .line 67
    new-instance v6, Landroidx/constraintlayout/core/state/State$Constraint;

    #@ae
    const-string v4, "CENTER_VERTICALLY"

    #@b0
    move-object/from16 v19, v2

    #@b2
    const/16 v2, 0x10

    #@b4
    invoke-direct {v6, v4, v2}, Landroidx/constraintlayout/core/state/State$Constraint;-><init>(Ljava/lang/String;I)V

    #@b7
    sput-object v6, Landroidx/constraintlayout/core/state/State$Constraint;->CENTER_VERTICALLY:Landroidx/constraintlayout/core/state/State$Constraint;

    #@b9
    .line 68
    new-instance v4, Landroidx/constraintlayout/core/state/State$Constraint;

    #@bb
    const-string v2, "CIRCULAR_CONSTRAINT"

    #@bd
    move-object/from16 v20, v6

    #@bf
    const/16 v6, 0x11

    #@c1
    invoke-direct {v4, v2, v6}, Landroidx/constraintlayout/core/state/State$Constraint;-><init>(Ljava/lang/String;I)V

    #@c4
    sput-object v4, Landroidx/constraintlayout/core/state/State$Constraint;->CIRCULAR_CONSTRAINT:Landroidx/constraintlayout/core/state/State$Constraint;

    #@c6
    const/16 v2, 0x12

    #@c8
    new-array v2, v2, [Landroidx/constraintlayout/core/state/State$Constraint;

    #@ca
    const/16 v16, 0x0

    #@cc
    aput-object v0, v2, v16

    #@ce
    const/4 v0, 0x1

    #@cf
    aput-object v1, v2, v0

    #@d1
    const/4 v0, 0x2

    #@d2
    aput-object v3, v2, v0

    #@d4
    const/4 v0, 0x3

    #@d5
    aput-object v5, v2, v0

    #@d7
    const/4 v0, 0x4

    #@d8
    aput-object v7, v2, v0

    #@da
    const/4 v0, 0x5

    #@db
    aput-object v9, v2, v0

    #@dd
    const/4 v0, 0x6

    #@de
    aput-object v11, v2, v0

    #@e0
    const/4 v0, 0x7

    #@e1
    aput-object v13, v2, v0

    #@e3
    const/16 v0, 0x8

    #@e5
    aput-object v15, v2, v0

    #@e7
    const/16 v0, 0x9

    #@e9
    aput-object v14, v2, v0

    #@eb
    const/16 v0, 0xa

    #@ed
    aput-object v12, v2, v0

    #@ef
    const/16 v0, 0xb

    #@f1
    aput-object v10, v2, v0

    #@f3
    const/16 v0, 0xc

    #@f5
    aput-object v8, v2, v0

    #@f7
    const/16 v0, 0xd

    #@f9
    aput-object v17, v2, v0

    #@fb
    const/16 v0, 0xe

    #@fd
    aput-object v18, v2, v0

    #@ff
    const/16 v0, 0xf

    #@101
    aput-object v19, v2, v0

    #@103
    const/16 v0, 0x10

    #@105
    aput-object v20, v2, v0

    #@107
    aput-object v4, v2, v6

    #@109
    .line 50
    sput-object v2, Landroidx/constraintlayout/core/state/State$Constraint;->$VALUES:[Landroidx/constraintlayout/core/state/State$Constraint;

    #@10b
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    #@0
    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/constraintlayout/core/state/State$Constraint;
    .registers 2

    #@0
    .line 50
    const-class v0, Landroidx/constraintlayout/core/state/State$Constraint;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object p0

    #@6
    check-cast p0, Landroidx/constraintlayout/core/state/State$Constraint;

    #@8
    return-object p0
.end method

.method public static values()[Landroidx/constraintlayout/core/state/State$Constraint;
    .registers 1

    #@0
    .line 50
    sget-object v0, Landroidx/constraintlayout/core/state/State$Constraint;->$VALUES:[Landroidx/constraintlayout/core/state/State$Constraint;

    #@2
    invoke-virtual {v0}, [Landroidx/constraintlayout/core/state/State$Constraint;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Landroidx/constraintlayout/core/state/State$Constraint;

    #@8
    return-object v0
.end method
