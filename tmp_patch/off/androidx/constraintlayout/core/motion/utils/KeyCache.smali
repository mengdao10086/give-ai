.class public Landroidx/constraintlayout/core/motion/utils/KeyCache;
.super Ljava/lang/Object;
.source "KeyCache.java"


# instance fields
.field map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[F>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 28
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCache;->map:Ljava/util/HashMap;

    #@a
    return-void
.end method


# virtual methods
.method public getFloatValue(Ljava/lang/Object;Ljava/lang/String;I)F
    .registers 6

    #@0
    .line 63
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCache;->map:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    const/high16 v1, 0x7fc00000    # Float.NaN

    #@8
    if-nez v0, :cond_b

    #@a
    return v1

    #@b
    .line 66
    :cond_b
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCache;->map:Ljava/util/HashMap;

    #@d
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    move-result-object p1

    #@11
    check-cast p1, Ljava/util/HashMap;

    #@13
    if-eqz p1, :cond_2b

    #@15
    .line 67
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@18
    move-result v0

    #@19
    if-nez v0, :cond_1c

    #@1b
    goto :goto_2b

    #@1c
    .line 70
    :cond_1c
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1f
    move-result-object p1

    #@20
    check-cast p1, [F

    #@22
    if-nez p1, :cond_25

    #@24
    return v1

    #@25
    .line 74
    :cond_25
    array-length p2, p1

    #@26
    if-le p2, p3, :cond_2b

    #@28
    .line 75
    aget p1, p1, p3

    #@2a
    return p1

    #@2b
    :cond_2b
    :goto_2b
    return v1
.end method

.method public setFloatValue(Ljava/lang/Object;Ljava/lang/String;IF)V
    .registers 7

    #@0
    .line 31
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCache;->map:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_1c

    #@8
    .line 32
    new-instance v0, Ljava/util/HashMap;

    #@a
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@d
    add-int/lit8 v1, p3, 0x1

    #@f
    .line 33
    new-array v1, v1, [F

    #@11
    .line 34
    aput p4, v1, p3

    #@13
    .line 35
    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    .line 36
    iget-object p2, p0, Landroidx/constraintlayout/core/motion/utils/KeyCache;->map:Ljava/util/HashMap;

    #@18
    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1b
    goto :goto_59

    #@1c
    .line 38
    :cond_1c
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCache;->map:Ljava/util/HashMap;

    #@1e
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@21
    move-result-object v0

    #@22
    check-cast v0, Ljava/util/HashMap;

    #@24
    if-nez v0, :cond_2b

    #@26
    .line 40
    new-instance v0, Ljava/util/HashMap;

    #@28
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@2b
    .line 43
    :cond_2b
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@2e
    move-result v1

    #@2f
    if-nez v1, :cond_40

    #@31
    add-int/lit8 v1, p3, 0x1

    #@33
    .line 44
    new-array v1, v1, [F

    #@35
    .line 45
    aput p4, v1, p3

    #@37
    .line 46
    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3a
    .line 47
    iget-object p2, p0, Landroidx/constraintlayout/core/motion/utils/KeyCache;->map:Ljava/util/HashMap;

    #@3c
    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3f
    goto :goto_59

    #@40
    .line 49
    :cond_40
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@43
    move-result-object p1

    #@44
    check-cast p1, [F

    #@46
    if-nez p1, :cond_4b

    #@48
    const/4 p1, 0x0

    #@49
    new-array p1, p1, [F

    #@4b
    .line 53
    :cond_4b
    array-length v1, p1

    #@4c
    if-gt v1, p3, :cond_54

    #@4e
    add-int/lit8 v1, p3, 0x1

    #@50
    .line 54
    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    #@53
    move-result-object p1

    #@54
    .line 56
    :cond_54
    aput p4, p1, p3

    #@56
    .line 57
    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@59
    :goto_59
    return-void
.end method
