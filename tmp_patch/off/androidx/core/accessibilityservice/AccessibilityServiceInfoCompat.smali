.class public final Landroidx/core/accessibilityservice/AccessibilityServiceInfoCompat;
.super Ljava/lang/Object;
.source "AccessibilityServiceInfoCompat.java"


# static fields
.field public static final CAPABILITY_CAN_FILTER_KEY_EVENTS:I = 0x8

.field public static final CAPABILITY_CAN_REQUEST_ENHANCED_WEB_ACCESSIBILITY:I = 0x4

.field public static final CAPABILITY_CAN_REQUEST_TOUCH_EXPLORATION:I = 0x2

.field public static final CAPABILITY_CAN_RETRIEVE_WINDOW_CONTENT:I = 0x1

.field public static final FEEDBACK_ALL_MASK:I = -0x1

.field public static final FEEDBACK_BRAILLE:I = 0x20

.field public static final FLAG_INCLUDE_NOT_IMPORTANT_VIEWS:I = 0x2

.field public static final FLAG_REPORT_VIEW_IDS:I = 0x10

.field public static final FLAG_REQUEST_ENHANCED_WEB_ACCESSIBILITY:I = 0x8

.field public static final FLAG_REQUEST_FILTER_KEY_EVENTS:I = 0x20

.field public static final FLAG_REQUEST_TOUCH_EXPLORATION_MODE:I = 0x4


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static capabilityToString(I)Ljava/lang/String;
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    if-eq p0, v0, :cond_19

    #@3
    const/4 v0, 0x2

    #@4
    if-eq p0, v0, :cond_16

    #@6
    const/4 v0, 0x4

    #@7
    if-eq p0, v0, :cond_13

    #@9
    const/16 v0, 0x8

    #@b
    if-eq p0, v0, :cond_10

    #@d
    const-string p0, "UNKNOWN"

    #@f
    return-object p0

    #@10
    :cond_10
    const-string p0, "CAPABILITY_CAN_FILTER_KEY_EVENTS"

    #@12
    return-object p0

    #@13
    :cond_13
    const-string p0, "CAPABILITY_CAN_REQUEST_ENHANCED_WEB_ACCESSIBILITY"

    #@15
    return-object p0

    #@16
    :cond_16
    const-string p0, "CAPABILITY_CAN_REQUEST_TOUCH_EXPLORATION"

    #@18
    return-object p0

    #@19
    :cond_19
    const-string p0, "CAPABILITY_CAN_RETRIEVE_WINDOW_CONTENT"

    #@1b
    return-object p0
.end method

.method public static feedbackTypeToString(I)Ljava/lang/String;
    .registers 5

    #@0
    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string v1, "["

    #@7
    .line 216
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    :goto_a
    if-lez p0, :cond_4f

    #@c
    .line 218
    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    #@f
    move-result v1

    #@10
    const/4 v2, 0x1

    #@11
    shl-int v1, v2, v1

    #@13
    not-int v3, v1

    #@14
    and-int/2addr p0, v3

    #@15
    .line 220
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@18
    move-result v3

    #@19
    if-le v3, v2, :cond_20

    #@1b
    const-string v3, ", "

    #@1d
    .line 221
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    :cond_20
    if-eq v1, v2, :cond_49

    #@22
    const/4 v2, 0x2

    #@23
    if-eq v1, v2, :cond_43

    #@25
    const/4 v2, 0x4

    #@26
    if-eq v1, v2, :cond_3d

    #@28
    const/16 v2, 0x8

    #@2a
    if-eq v1, v2, :cond_37

    #@2c
    const/16 v2, 0x10

    #@2e
    if-eq v1, v2, :cond_31

    #@30
    goto :goto_a

    #@31
    :cond_31
    const-string v1, "FEEDBACK_GENERIC"

    #@33
    .line 231
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    goto :goto_a

    #@37
    :cond_37
    const-string v1, "FEEDBACK_VISUAL"

    #@39
    .line 237
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    goto :goto_a

    #@3d
    :cond_3d
    const-string v1, "FEEDBACK_AUDIBLE"

    #@3f
    .line 225
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    goto :goto_a

    #@43
    :cond_43
    const-string v1, "FEEDBACK_HAPTIC"

    #@45
    .line 228
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    goto :goto_a

    #@49
    :cond_49
    const-string v1, "FEEDBACK_SPOKEN"

    #@4b
    .line 234
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    goto :goto_a

    #@4f
    :cond_4f
    const-string p0, "]"

    #@51
    .line 241
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    .line 242
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object p0

    #@58
    return-object p0
.end method

.method public static flagToString(I)Ljava/lang/String;
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    if-eq p0, v0, :cond_26

    #@3
    const/4 v0, 0x2

    #@4
    if-eq p0, v0, :cond_23

    #@6
    const/4 v0, 0x4

    #@7
    if-eq p0, v0, :cond_20

    #@9
    const/16 v0, 0x8

    #@b
    if-eq p0, v0, :cond_1d

    #@d
    const/16 v0, 0x10

    #@f
    if-eq p0, v0, :cond_1a

    #@11
    const/16 v0, 0x20

    #@13
    if-eq p0, v0, :cond_17

    #@15
    const/4 p0, 0x0

    #@16
    return-object p0

    #@17
    :cond_17
    const-string p0, "FLAG_REQUEST_FILTER_KEY_EVENTS"

    #@19
    return-object p0

    #@1a
    :cond_1a
    const-string p0, "FLAG_REPORT_VIEW_IDS"

    #@1c
    return-object p0

    #@1d
    :cond_1d
    const-string p0, "FLAG_REQUEST_ENHANCED_WEB_ACCESSIBILITY"

    #@1f
    return-object p0

    #@20
    :cond_20
    const-string p0, "FLAG_REQUEST_TOUCH_EXPLORATION_MODE"

    #@22
    return-object p0

    #@23
    :cond_23
    const-string p0, "FLAG_INCLUDE_NOT_IMPORTANT_VIEWS"

    #@25
    return-object p0

    #@26
    :cond_26
    const-string p0, "DEFAULT"

    #@28
    return-object p0
.end method

.method public static getCapabilities(Landroid/accessibilityservice/AccessibilityServiceInfo;)I
    .registers 1

    #@0
    .line 288
    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getCapabilities()I

    #@3
    move-result p0

    #@4
    return p0
.end method

.method public static loadDescription(Landroid/accessibilityservice/AccessibilityServiceInfo;Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .registers 2

    #@0
    .line 199
    invoke-virtual {p0, p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method
