.class Landroidx/appcompat/app/LayoutIncludeDetector;
.super Ljava/lang/Object;
.source "LayoutIncludeDetector.java"


# instance fields
.field private final mXmlParserStack:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Ljava/lang/ref/WeakReference<",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    #@0
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 38
    new-instance v0, Ljava/util/ArrayDeque;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    #@8
    iput-object v0, p0, Landroidx/appcompat/app/LayoutIncludeDetector;->mXmlParserStack:Ljava/util/Deque;

    #@a
    return-void
.end method

.method private static isParserOutdated(Lorg/xmlpull/v1/XmlPullParser;)Z
    .registers 4

    #@0
    const/4 v0, 0x1

    #@1
    if-eqz p0, :cond_13

    #@3
    .line 108
    :try_start_3
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    #@6
    move-result v1

    #@7
    const/4 v2, 0x3

    #@8
    if-eq v1, v2, :cond_13

    #@a
    .line 109
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    #@d
    move-result p0
    :try_end_e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_e} :catch_13

    #@e
    if-ne p0, v0, :cond_11

    #@10
    goto :goto_13

    #@11
    :cond_11
    const/4 v0, 0x0

    #@12
    nop

    #@13
    :catch_13
    :cond_13
    :goto_13
    return v0
.end method

.method private static popOutdatedAttrHolders(Ljava/util/Deque;)Lorg/xmlpull/v1/XmlPullParser;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Deque<",
            "Ljava/lang/ref/WeakReference<",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ">;>;)",
            "Lorg/xmlpull/v1/XmlPullParser;"
        }
    .end annotation

    #@0
    .line 95
    :goto_0
    invoke-interface {p0}, Ljava/util/Deque;->isEmpty()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_1d

    #@6
    .line 96
    invoke-interface {p0}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Ljava/lang/ref/WeakReference;

    #@c
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lorg/xmlpull/v1/XmlPullParser;

    #@12
    .line 97
    invoke-static {v0}, Landroidx/appcompat/app/LayoutIncludeDetector;->isParserOutdated(Lorg/xmlpull/v1/XmlPullParser;)Z

    #@15
    move-result v1

    #@16
    if-eqz v1, :cond_1c

    #@18
    .line 98
    invoke-interface {p0}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    #@1b
    goto :goto_0

    #@1c
    :cond_1c
    return-object v0

    #@1d
    :cond_1d
    const/4 p0, 0x0

    #@1e
    return-object p0
.end method

.method private static shouldInheritContext(Lorg/xmlpull/v1/XmlPullParser;Lorg/xmlpull/v1/XmlPullParser;)Z
    .registers 3

    #@0
    if-eqz p1, :cond_16

    #@2
    if-eq p0, p1, :cond_16

    #@4
    .line 75
    :try_start_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    #@7
    move-result p0

    #@8
    const/4 v0, 0x2

    #@9
    if-ne p0, v0, :cond_16

    #@b
    const-string p0, "include"

    #@d
    .line 78
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@10
    move-result-object p1

    #@11
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14
    move-result p0
    :try_end_15
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_15} :catch_16

    #@15
    return p0

    #@16
    :catch_16
    :cond_16
    const/4 p0, 0x0

    #@17
    return p0
.end method


# virtual methods
.method detect(Landroid/util/AttributeSet;)Z
    .registers 6

    #@0
    .line 45
    instance-of v0, p1, Lorg/xmlpull/v1/XmlPullParser;

    #@2
    if-eqz v0, :cond_24

    #@4
    .line 46
    check-cast p1, Lorg/xmlpull/v1/XmlPullParser;

    #@6
    .line 47
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@9
    move-result v0

    #@a
    const/4 v1, 0x1

    #@b
    if-ne v0, v1, :cond_24

    #@d
    .line 51
    iget-object v0, p0, Landroidx/appcompat/app/LayoutIncludeDetector;->mXmlParserStack:Ljava/util/Deque;

    #@f
    invoke-static {v0}, Landroidx/appcompat/app/LayoutIncludeDetector;->popOutdatedAttrHolders(Ljava/util/Deque;)Lorg/xmlpull/v1/XmlPullParser;

    #@12
    move-result-object v0

    #@13
    .line 53
    iget-object v2, p0, Landroidx/appcompat/app/LayoutIncludeDetector;->mXmlParserStack:Ljava/util/Deque;

    #@15
    new-instance v3, Ljava/lang/ref/WeakReference;

    #@17
    invoke-direct {v3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@1a
    invoke-interface {v2, v3}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    #@1d
    .line 56
    invoke-static {p1, v0}, Landroidx/appcompat/app/LayoutIncludeDetector;->shouldInheritContext(Lorg/xmlpull/v1/XmlPullParser;Lorg/xmlpull/v1/XmlPullParser;)Z

    #@20
    move-result p1

    #@21
    if-eqz p1, :cond_24

    #@23
    return v1

    #@24
    :cond_24
    const/4 p1, 0x0

    #@25
    return p1
.end method
