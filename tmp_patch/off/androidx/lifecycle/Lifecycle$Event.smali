.class public final enum Landroidx/lifecycle/Lifecycle$Event;
.super Ljava/lang/Enum;
.source "Lifecycle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/Lifecycle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Event"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/lifecycle/Lifecycle$Event;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/lifecycle/Lifecycle$Event;

.field public static final enum ON_ANY:Landroidx/lifecycle/Lifecycle$Event;

.field public static final enum ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

.field public static final enum ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

.field public static final enum ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

.field public static final enum ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

.field public static final enum ON_START:Landroidx/lifecycle/Lifecycle$Event;

.field public static final enum ON_STOP:Landroidx/lifecycle/Lifecycle$Event;


# direct methods
.method static constructor <clinit>()V
    .registers 15

    #@0
    .line 99
    new-instance v0, Landroidx/lifecycle/Lifecycle$Event;

    #@2
    const-string v1, "ON_CREATE"

    #@4
    const/4 v2, 0x0

    #@5
    invoke-direct {v0, v1, v2}, Landroidx/lifecycle/Lifecycle$Event;-><init>(Ljava/lang/String;I)V

    #@8
    sput-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    #@a
    .line 103
    new-instance v1, Landroidx/lifecycle/Lifecycle$Event;

    #@c
    const-string v3, "ON_START"

    #@e
    const/4 v4, 0x1

    #@f
    invoke-direct {v1, v3, v4}, Landroidx/lifecycle/Lifecycle$Event;-><init>(Ljava/lang/String;I)V

    #@12
    sput-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    #@14
    .line 107
    new-instance v3, Landroidx/lifecycle/Lifecycle$Event;

    #@16
    const-string v5, "ON_RESUME"

    #@18
    const/4 v6, 0x2

    #@19
    invoke-direct {v3, v5, v6}, Landroidx/lifecycle/Lifecycle$Event;-><init>(Ljava/lang/String;I)V

    #@1c
    sput-object v3, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    #@1e
    .line 111
    new-instance v5, Landroidx/lifecycle/Lifecycle$Event;

    #@20
    const-string v7, "ON_PAUSE"

    #@22
    const/4 v8, 0x3

    #@23
    invoke-direct {v5, v7, v8}, Landroidx/lifecycle/Lifecycle$Event;-><init>(Ljava/lang/String;I)V

    #@26
    sput-object v5, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    #@28
    .line 115
    new-instance v7, Landroidx/lifecycle/Lifecycle$Event;

    #@2a
    const-string v9, "ON_STOP"

    #@2c
    const/4 v10, 0x4

    #@2d
    invoke-direct {v7, v9, v10}, Landroidx/lifecycle/Lifecycle$Event;-><init>(Ljava/lang/String;I)V

    #@30
    sput-object v7, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    #@32
    .line 119
    new-instance v9, Landroidx/lifecycle/Lifecycle$Event;

    #@34
    const-string v11, "ON_DESTROY"

    #@36
    const/4 v12, 0x5

    #@37
    invoke-direct {v9, v11, v12}, Landroidx/lifecycle/Lifecycle$Event;-><init>(Ljava/lang/String;I)V

    #@3a
    sput-object v9, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    #@3c
    .line 123
    new-instance v11, Landroidx/lifecycle/Lifecycle$Event;

    #@3e
    const-string v13, "ON_ANY"

    #@40
    const/4 v14, 0x6

    #@41
    invoke-direct {v11, v13, v14}, Landroidx/lifecycle/Lifecycle$Event;-><init>(Ljava/lang/String;I)V

    #@44
    sput-object v11, Landroidx/lifecycle/Lifecycle$Event;->ON_ANY:Landroidx/lifecycle/Lifecycle$Event;

    #@46
    const/4 v13, 0x7

    #@47
    new-array v13, v13, [Landroidx/lifecycle/Lifecycle$Event;

    #@49
    aput-object v0, v13, v2

    #@4b
    aput-object v1, v13, v4

    #@4d
    aput-object v3, v13, v6

    #@4f
    aput-object v5, v13, v8

    #@51
    aput-object v7, v13, v10

    #@53
    aput-object v9, v13, v12

    #@55
    aput-object v11, v13, v14

    #@57
    .line 94
    sput-object v13, Landroidx/lifecycle/Lifecycle$Event;->$VALUES:[Landroidx/lifecycle/Lifecycle$Event;

    #@59
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
    .line 95
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static downFrom(Landroidx/lifecycle/Lifecycle$State;)Landroidx/lifecycle/Lifecycle$Event;
    .registers 2

    #@0
    .line 135
    sget-object v0, Landroidx/lifecycle/Lifecycle$1;->$SwitchMap$androidx$lifecycle$Lifecycle$State:[I

    #@2
    invoke-virtual {p0}, Landroidx/lifecycle/Lifecycle$State;->ordinal()I

    #@5
    move-result p0

    #@6
    aget p0, v0, p0

    #@8
    const/4 v0, 0x1

    #@9
    if-eq p0, v0, :cond_19

    #@b
    const/4 v0, 0x2

    #@c
    if-eq p0, v0, :cond_16

    #@e
    const/4 v0, 0x3

    #@f
    if-eq p0, v0, :cond_13

    #@11
    const/4 p0, 0x0

    #@12
    return-object p0

    #@13
    .line 141
    :cond_13
    sget-object p0, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    #@15
    return-object p0

    #@16
    .line 139
    :cond_16
    sget-object p0, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    #@18
    return-object p0

    #@19
    .line 137
    :cond_19
    sget-object p0, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    #@1b
    return-object p0
.end method

.method public static downTo(Landroidx/lifecycle/Lifecycle$State;)Landroidx/lifecycle/Lifecycle$Event;
    .registers 2

    #@0
    .line 157
    sget-object v0, Landroidx/lifecycle/Lifecycle$1;->$SwitchMap$androidx$lifecycle$Lifecycle$State:[I

    #@2
    invoke-virtual {p0}, Landroidx/lifecycle/Lifecycle$State;->ordinal()I

    #@5
    move-result p0

    #@6
    aget p0, v0, p0

    #@8
    const/4 v0, 0x1

    #@9
    if-eq p0, v0, :cond_19

    #@b
    const/4 v0, 0x2

    #@c
    if-eq p0, v0, :cond_16

    #@e
    const/4 v0, 0x4

    #@f
    if-eq p0, v0, :cond_13

    #@11
    const/4 p0, 0x0

    #@12
    return-object p0

    #@13
    .line 159
    :cond_13
    sget-object p0, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    #@15
    return-object p0

    #@16
    .line 163
    :cond_16
    sget-object p0, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    #@18
    return-object p0

    #@19
    .line 161
    :cond_19
    sget-object p0, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    #@1b
    return-object p0
.end method

.method public static upFrom(Landroidx/lifecycle/Lifecycle$State;)Landroidx/lifecycle/Lifecycle$Event;
    .registers 2

    #@0
    .line 179
    sget-object v0, Landroidx/lifecycle/Lifecycle$1;->$SwitchMap$androidx$lifecycle$Lifecycle$State:[I

    #@2
    invoke-virtual {p0}, Landroidx/lifecycle/Lifecycle$State;->ordinal()I

    #@5
    move-result p0

    #@6
    aget p0, v0, p0

    #@8
    const/4 v0, 0x1

    #@9
    if-eq p0, v0, :cond_19

    #@b
    const/4 v0, 0x2

    #@c
    if-eq p0, v0, :cond_16

    #@e
    const/4 v0, 0x5

    #@f
    if-eq p0, v0, :cond_13

    #@11
    const/4 p0, 0x0

    #@12
    return-object p0

    #@13
    .line 181
    :cond_13
    sget-object p0, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    #@15
    return-object p0

    #@16
    .line 185
    :cond_16
    sget-object p0, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    #@18
    return-object p0

    #@19
    .line 183
    :cond_19
    sget-object p0, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    #@1b
    return-object p0
.end method

.method public static upTo(Landroidx/lifecycle/Lifecycle$State;)Landroidx/lifecycle/Lifecycle$Event;
    .registers 2

    #@0
    .line 201
    sget-object v0, Landroidx/lifecycle/Lifecycle$1;->$SwitchMap$androidx$lifecycle$Lifecycle$State:[I

    #@2
    invoke-virtual {p0}, Landroidx/lifecycle/Lifecycle$State;->ordinal()I

    #@5
    move-result p0

    #@6
    aget p0, v0, p0

    #@8
    const/4 v0, 0x1

    #@9
    if-eq p0, v0, :cond_19

    #@b
    const/4 v0, 0x2

    #@c
    if-eq p0, v0, :cond_16

    #@e
    const/4 v0, 0x3

    #@f
    if-eq p0, v0, :cond_13

    #@11
    const/4 p0, 0x0

    #@12
    return-object p0

    #@13
    .line 207
    :cond_13
    sget-object p0, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    #@15
    return-object p0

    #@16
    .line 205
    :cond_16
    sget-object p0, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    #@18
    return-object p0

    #@19
    .line 203
    :cond_19
    sget-object p0, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    #@1b
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/lifecycle/Lifecycle$Event;
    .registers 2

    #@0
    .line 94
    const-class v0, Landroidx/lifecycle/Lifecycle$Event;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object p0

    #@6
    check-cast p0, Landroidx/lifecycle/Lifecycle$Event;

    #@8
    return-object p0
.end method

.method public static values()[Landroidx/lifecycle/Lifecycle$Event;
    .registers 1

    #@0
    .line 94
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->$VALUES:[Landroidx/lifecycle/Lifecycle$Event;

    #@2
    invoke-virtual {v0}, [Landroidx/lifecycle/Lifecycle$Event;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Landroidx/lifecycle/Lifecycle$Event;

    #@8
    return-object v0
.end method


# virtual methods
.method public getTargetState()Landroidx/lifecycle/Lifecycle$State;
    .registers 4

    #@0
    .line 224
    sget-object v0, Landroidx/lifecycle/Lifecycle$1;->$SwitchMap$androidx$lifecycle$Lifecycle$Event:[I

    #@2
    invoke-virtual {p0}, Landroidx/lifecycle/Lifecycle$Event;->ordinal()I

    #@5
    move-result v1

    #@6
    aget v0, v0, v1

    #@8
    packed-switch v0, :pswitch_data_30

    #@b
    .line 238
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@d
    new-instance v1, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    const-string v2, " has no target state"

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@23
    throw v0

    #@24
    .line 234
    :pswitch_24
    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    #@26
    return-object v0

    #@27
    .line 232
    :pswitch_27
    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    #@29
    return-object v0

    #@2a
    .line 230
    :pswitch_2a
    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    #@2c
    return-object v0

    #@2d
    .line 227
    :pswitch_2d
    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    #@2f
    return-object v0

    #@30
    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_2d
        :pswitch_2a
        :pswitch_2a
        :pswitch_27
        :pswitch_24
    .end packed-switch
.end method
