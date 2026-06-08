.class public Landroidx/appcompat/view/SupportMenuInflater;
.super Landroid/view/MenuInflater;
.source "SupportMenuInflater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/SupportMenuInflater$MenuState;,
        Landroidx/appcompat/view/SupportMenuInflater$InflatedOnMenuItemClickListener;
    }
.end annotation


# static fields
.field static final ACTION_PROVIDER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field static final ACTION_VIEW_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field static final LOG_TAG:Ljava/lang/String; = "SupportMenuInflater"

.field static final NO_ID:I = 0x0

.field private static final XML_GROUP:Ljava/lang/String; = "group"

.field private static final XML_ITEM:Ljava/lang/String; = "item"

.field private static final XML_MENU:Ljava/lang/String; = "menu"


# instance fields
.field final mActionProviderConstructorArguments:[Ljava/lang/Object;

.field final mActionViewConstructorArguments:[Ljava/lang/Object;

.field mContext:Landroid/content/Context;

.field private mRealOwner:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    #@0
    const/4 v0, 0x1

    #@1
    new-array v0, v0, [Ljava/lang/Class;

    #@3
    const/4 v1, 0x0

    #@4
    .line 83
    const-class v2, Landroid/content/Context;

    #@6
    aput-object v2, v0, v1

    #@8
    sput-object v0, Landroidx/appcompat/view/SupportMenuInflater;->ACTION_VIEW_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    #@a
    .line 85
    sput-object v0, Landroidx/appcompat/view/SupportMenuInflater;->ACTION_PROVIDER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    #@c
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    #@0
    .line 101
    invoke-direct {p0, p1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    #@3
    .line 102
    iput-object p1, p0, Landroidx/appcompat/view/SupportMenuInflater;->mContext:Landroid/content/Context;

    #@5
    const/4 v0, 0x1

    #@6
    new-array v0, v0, [Ljava/lang/Object;

    #@8
    const/4 v1, 0x0

    #@9
    aput-object p1, v0, v1

    #@b
    .line 103
    iput-object v0, p0, Landroidx/appcompat/view/SupportMenuInflater;->mActionViewConstructorArguments:[Ljava/lang/Object;

    #@d
    .line 104
    iput-object v0, p0, Landroidx/appcompat/view/SupportMenuInflater;->mActionProviderConstructorArguments:[Ljava/lang/Object;

    #@f
    return-void
.end method

.method private findRealOwner(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    #@0
    .line 231
    instance-of v0, p1, Landroid/app/Activity;

    #@2
    if-eqz v0, :cond_5

    #@4
    return-object p1

    #@5
    .line 234
    :cond_5
    instance-of v0, p1, Landroid/content/ContextWrapper;

    #@7
    if-eqz v0, :cond_13

    #@9
    .line 235
    check-cast p1, Landroid/content/ContextWrapper;

    #@b
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    #@e
    move-result-object p1

    #@f
    invoke-direct {p0, p1}, Landroidx/appcompat/view/SupportMenuInflater;->findRealOwner(Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    move-result-object p1

    #@13
    :cond_13
    return-object p1
.end method

.method private parseMenu(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 145
    new-instance v0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;

    #@2
    invoke-direct {v0, p0, p3}, Landroidx/appcompat/view/SupportMenuInflater$MenuState;-><init>(Landroidx/appcompat/view/SupportMenuInflater;Landroid/view/Menu;)V

    #@5
    .line 147
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    #@8
    move-result p3

    #@9
    :cond_9
    const/4 v1, 0x2

    #@a
    const-string v2, "menu"

    #@c
    const/4 v3, 0x1

    #@d
    if-ne p3, v1, :cond_33

    #@f
    .line 155
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@12
    move-result-object p3

    #@13
    .line 156
    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@16
    move-result v4

    #@17
    if-eqz v4, :cond_1e

    #@19
    .line 158
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@1c
    move-result p3

    #@1d
    goto :goto_39

    #@1e
    .line 162
    :cond_1e
    new-instance p1, Ljava/lang/RuntimeException;

    #@20
    new-instance p2, Ljava/lang/StringBuilder;

    #@22
    const-string v0, "Expecting menu, got "

    #@24
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@27
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object p2

    #@2b
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object p2

    #@2f
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@32
    throw p1

    #@33
    .line 164
    :cond_33
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@36
    move-result p3

    #@37
    if-ne p3, v3, :cond_9

    #@39
    :goto_39
    const/4 v4, 0x0

    #@3a
    const/4 v5, 0x0

    #@3b
    move v6, v4

    #@3c
    move v7, v6

    #@3d
    move-object v8, v5

    #@3e
    :goto_3e
    if-nez v6, :cond_c8

    #@40
    if-eq p3, v3, :cond_c0

    #@42
    const-string v9, "item"

    #@44
    const-string v10, "group"

    #@46
    if-eq p3, v1, :cond_8f

    #@48
    const/4 v11, 0x3

    #@49
    if-eq p3, v11, :cond_4d

    #@4b
    goto/16 :goto_ba

    #@4d
    .line 193
    :cond_4d
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@50
    move-result-object p3

    #@51
    if-eqz v7, :cond_5d

    #@53
    .line 194
    invoke-virtual {p3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@56
    move-result v11

    #@57
    if-eqz v11, :cond_5d

    #@59
    move v7, v4

    #@5a
    move-object v8, v5

    #@5b
    goto/16 :goto_ba

    #@5d
    .line 197
    :cond_5d
    invoke-virtual {p3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@60
    move-result v10

    #@61
    if-eqz v10, :cond_67

    #@63
    .line 198
    invoke-virtual {v0}, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->resetGroup()V

    #@66
    goto :goto_ba

    #@67
    .line 199
    :cond_67
    invoke-virtual {p3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6a
    move-result v9

    #@6b
    if-eqz v9, :cond_87

    #@6d
    .line 202
    invoke-virtual {v0}, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->hasAddedItem()Z

    #@70
    move-result p3

    #@71
    if-nez p3, :cond_ba

    #@73
    .line 203
    iget-object p3, v0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemActionProvider:Landroidx/core/view/ActionProvider;

    #@75
    if-eqz p3, :cond_83

    #@77
    iget-object p3, v0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemActionProvider:Landroidx/core/view/ActionProvider;

    #@79
    .line 204
    invoke-virtual {p3}, Landroidx/core/view/ActionProvider;->hasSubMenu()Z

    #@7c
    move-result p3

    #@7d
    if-eqz p3, :cond_83

    #@7f
    .line 205
    invoke-virtual {v0}, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->addSubMenuItem()Landroid/view/SubMenu;

    #@82
    goto :goto_ba

    #@83
    .line 207
    :cond_83
    invoke-virtual {v0}, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->addItem()V

    #@86
    goto :goto_ba

    #@87
    .line 210
    :cond_87
    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8a
    move-result p3

    #@8b
    if-eqz p3, :cond_ba

    #@8d
    move v6, v3

    #@8e
    goto :goto_ba

    #@8f
    :cond_8f
    if-eqz v7, :cond_92

    #@91
    goto :goto_ba

    #@92
    .line 175
    :cond_92
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@95
    move-result-object p3

    #@96
    .line 176
    invoke-virtual {p3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@99
    move-result v10

    #@9a
    if-eqz v10, :cond_a0

    #@9c
    .line 177
    invoke-virtual {v0, p2}, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->readGroup(Landroid/util/AttributeSet;)V

    #@9f
    goto :goto_ba

    #@a0
    .line 178
    :cond_a0
    invoke-virtual {p3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a3
    move-result v9

    #@a4
    if-eqz v9, :cond_aa

    #@a6
    .line 179
    invoke-virtual {v0, p2}, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->readItem(Landroid/util/AttributeSet;)V

    #@a9
    goto :goto_ba

    #@aa
    .line 180
    :cond_aa
    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ad
    move-result v9

    #@ae
    if-eqz v9, :cond_b8

    #@b0
    .line 182
    invoke-virtual {v0}, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->addSubMenuItem()Landroid/view/SubMenu;

    #@b3
    move-result-object p3

    #@b4
    .line 185
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/view/SupportMenuInflater;->parseMenu(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V

    #@b7
    goto :goto_ba

    #@b8
    :cond_b8
    move-object v8, p3

    #@b9
    move v7, v3

    #@ba
    .line 219
    :cond_ba
    :goto_ba
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@bd
    move-result p3

    #@be
    goto/16 :goto_3e

    #@c0
    .line 216
    :cond_c0
    new-instance p1, Ljava/lang/RuntimeException;

    #@c2
    const-string p2, "Unexpected end of document"

    #@c4
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@c7
    throw p1

    #@c8
    :cond_c8
    return-void
.end method


# virtual methods
.method getRealOwner()Ljava/lang/Object;
    .registers 2

    #@0
    .line 224
    iget-object v0, p0, Landroidx/appcompat/view/SupportMenuInflater;->mRealOwner:Ljava/lang/Object;

    #@2
    if-nez v0, :cond_c

    #@4
    .line 225
    iget-object v0, p0, Landroidx/appcompat/view/SupportMenuInflater;->mContext:Landroid/content/Context;

    #@6
    invoke-direct {p0, v0}, Landroidx/appcompat/view/SupportMenuInflater;->findRealOwner(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Landroidx/appcompat/view/SupportMenuInflater;->mRealOwner:Ljava/lang/Object;

    #@c
    .line 227
    :cond_c
    iget-object v0, p0, Landroidx/appcompat/view/SupportMenuInflater;->mRealOwner:Ljava/lang/Object;

    #@e
    return-object v0
.end method

.method public inflate(ILandroid/view/Menu;)V
    .registers 6

    #@0
    const-string v0, "Error inflating menu XML"

    #@2
    .line 119
    instance-of v1, p2, Landroidx/core/internal/view/SupportMenu;

    #@4
    if-nez v1, :cond_a

    #@6
    .line 120
    invoke-super {p0, p1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    #@9
    return-void

    #@a
    :cond_a
    const/4 v1, 0x0

    #@b
    .line 126
    :try_start_b
    iget-object v2, p0, Landroidx/appcompat/view/SupportMenuInflater;->mContext:Landroid/content/Context;

    #@d
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@10
    move-result-object v2

    #@11
    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    #@14
    move-result-object v1

    #@15
    .line 127
    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    #@18
    move-result-object p1

    #@19
    .line 129
    invoke-direct {p0, v1, p1, p2}, Landroidx/appcompat/view/SupportMenuInflater;->parseMenu(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V
    :try_end_1c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_1c} :catch_2b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_1c} :catch_24
    .catchall {:try_start_b .. :try_end_1c} :catchall_22

    #@1c
    if-eqz v1, :cond_21

    #@1e
    .line 135
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    #@21
    :cond_21
    return-void

    #@22
    :catchall_22
    move-exception p1

    #@23
    goto :goto_32

    #@24
    :catch_24
    move-exception p1

    #@25
    .line 133
    :try_start_25
    new-instance p2, Landroid/view/InflateException;

    #@27
    invoke-direct {p2, v0, p1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@2a
    throw p2

    #@2b
    :catch_2b
    move-exception p1

    #@2c
    .line 131
    new-instance p2, Landroid/view/InflateException;

    #@2e
    invoke-direct {p2, v0, p1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@31
    throw p2
    :try_end_32
    .catchall {:try_start_25 .. :try_end_32} :catchall_22

    #@32
    :goto_32
    if-eqz v1, :cond_37

    #@34
    .line 135
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    #@37
    .line 136
    :cond_37
    throw p1
.end method
