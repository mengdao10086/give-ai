.class public Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;
.super Lcom/example/extool/databinding/ActivityExperimentalB6Binding;
.source "ActivityExperimentalB6BindingImpl.java"

# interfaces
.implements Lcom/example/extool/generated/callback/OnCheckedChangeListener$Listener;
.implements Lcom/example/extool/generated/callback/OnClickListener$Listener;
.implements Lcom/example/extool/generated/callback/OnProgressChanged$Listener;


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private final mCallback1:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private final mCallback10:Landroidx/databinding/adapters/SeekBarBindingAdapter$OnProgressChanged;

.field private final mCallback11:Landroid/view/View$OnClickListener;

.field private final mCallback12:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private final mCallback2:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private final mCallback3:Landroid/view/View$OnClickListener;

.field private final mCallback4:Landroidx/databinding/adapters/SeekBarBindingAdapter$OnProgressChanged;

.field private final mCallback5:Landroid/view/View$OnClickListener;

.field private final mCallback6:Landroid/view/View$OnClickListener;

.field private final mCallback7:Landroidx/databinding/adapters/SeekBarBindingAdapter$OnProgressChanged;

.field private final mCallback8:Landroid/view/View$OnClickListener;

.field private final mCallback9:Landroid/view/View$OnClickListener;

.field private mDirtyFlags:J

.field private final mboundView0:Landroidx/core/widget/NestedScrollView;

.field private final mboundView11:Landroid/widget/LinearLayout;

.field private final mboundView12:Landroid/widget/TextView;

.field private final mboundView13:Landroid/widget/LinearLayout;

.field private final mboundView14:Landroid/widget/Button;

.field private final mboundView15:Landroid/widget/SeekBar;

.field private final mboundView16:Landroid/widget/Button;

.field private final mboundView17:Landroid/widget/TextView;

.field private final mboundView18:Landroid/widget/Button;

.field private final mboundView2:Landroid/widget/TextView;

.field private final mboundView20:Landroid/widget/Button;

.field private final mboundView21:Landroid/widget/LinearLayout;

.field private final mboundView22:Landroid/widget/TextView;

.field private final mboundView23:Landroid/widget/LinearLayout;

.field private final mboundView24:Landroid/widget/Button;

.field private final mboundView26:Landroid/widget/Button;

.field private final mboundView27:Landroid/widget/LinearLayout;

.field private final mboundView28:Lcom/google/android/material/switchmaterial/SwitchMaterial;

.field private final mboundView29:Landroid/widget/TextView;

.field private final mboundView3:Landroid/widget/TextView;

.field private final mboundView30:Landroid/widget/TextView;

.field private final mboundView4:Landroid/widget/TextView;

.field private final mboundView5:Landroid/widget/TextView;

.field private final mboundView6:Landroid/widget/TextView;

.field private final mboundView7:Landroid/widget/TextView;

.field private final mboundView8:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    #@0
    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    #@2
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    #@5
    sput-object v0, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    #@7
    const v1, 0x7f080164

    #@a
    const/16 v2, 0x1f

    #@c
    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    #@f
    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .registers 6

    #@0
    .line 102
    sget-object v0, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    #@2
    sget-object v1, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    #@4
    const/16 v2, 0x20

    #@6
    invoke-static {p1, p2, v2, v0, v1}, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    invoke-direct {p0, p1, p2, v0}, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    #@d
    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .registers 19

    #@0
    move-object v10, p0

    #@1
    const/4 v3, 0x0

    #@2
    const/16 v11, 0xa

    #@4
    .line 105
    aget-object v0, p3, v11

    #@6
    move-object v4, v0

    #@7
    check-cast v4, Landroid/widget/RadioButton;

    #@9
    const/16 v12, 0x9

    #@b
    aget-object v0, p3, v12

    #@d
    move-object v5, v0

    #@e
    check-cast v5, Landroid/widget/RadioButton;

    #@10
    const/16 v0, 0x1f

    #@12
    aget-object v0, p3, v0

    #@14
    move-object v6, v0

    #@15
    check-cast v6, Landroid/widget/RadioGroup;

    #@17
    const/16 v0, 0x19

    #@19
    aget-object v0, p3, v0

    #@1b
    move-object v7, v0

    #@1c
    check-cast v7, Landroid/widget/SeekBar;

    #@1e
    const/16 v0, 0x13

    #@20
    aget-object v0, p3, v0

    #@22
    move-object v8, v0

    #@23
    check-cast v8, Landroid/widget/SeekBar;

    #@25
    const/4 v13, 0x1

    #@26
    aget-object v0, p3, v13

    #@28
    move-object v9, v0

    #@29
    check-cast v9, Landroid/widget/TextView;

    #@2b
    move-object v0, p0

    #@2c
    move-object/from16 v1, p1

    #@2e
    move-object/from16 v2, p2

    #@30
    invoke-direct/range {v0 .. v9}, Lcom/example/extool/databinding/ActivityExperimentalB6Binding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioGroup;Landroid/widget/SeekBar;Landroid/widget/SeekBar;Landroid/widget/TextView;)V

    #@33
    const-wide/16 v0, -0x1

    #@35
    .line 853
    iput-wide v0, v10, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->mDirtyFlags:J

    #@37
    const/4 v0, 0x0

    #@38
    .line 113
    aget-object v0, p3, v0

    #@3a
    check-cast v0, Landroidx/core/widget/NestedScrollView;

    #@3c
    iput-object v0, v10, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->mboundView0:Landroidx/core/widget/NestedScrollView;

    #@3e
    const/4 v1, 0x0

    #@3f
    .line 114
    invoke-virtual {v0, v1}, Landroidx/core/widget/NestedScrollView;->setTag(Ljava/lang/Object;)V

    #@42
    const/16 v0, 0xb

    #@44
    .line 115
    aget-object v2, p3, v0

    #@46
    check-cast v2, Landroid/widget/LinearLayout;

    #@48
    iput-object v2, v10, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->mboundView11:Landroid/widget/LinearLayout;

    #@4a
    .line 116
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    #@4d
    const/16 v2, 0xc

    #@4f
    .line 117
    aget-object v3, p3, v2

    #@51
    check-cast v3, Landroid/widget/TextView;

    #@53
    iput-object v3, v10, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->mboundView12:Landroid/widget/TextView;

    #@55
    .line 118
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    #@58
    const/16 v3, 0xd

    #@5a
    .line 119
    aget-object v3, p3, v3

    #@5c
    check-cast v3, Landroid/widget/LinearLayout;

    #@5e
    iput-object v3, v10, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->mboundView13:Landroid/widget/LinearLayout;

    #@60
    .line 120
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    #@63
    const/16 v3, 0xe

    #@65
    .line 121
    aget-object v3, p3, v3

    #@67
    check-cast v3, Landroid/widget/Button;

    #@69
    iput-object v3, v10, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->mboundView14:Landroid/widget/Button;

    #@6b
    .line 122
    invoke-virtual {v3, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    #@6e
    const/16 v3, 0xf

    #@70
    .line 123
    aget-object v3, p3, v3

    #@72
    check-cast v3, Landroid/widget/SeekBar;

    #@74
    iput-object v3, v10, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->mboundView15:Landroid/widget/SeekBar;

    #@76
    .line 124
    invoke-virtual {v3, v1}, Landroid/widget/SeekBar;->setTag(Ljava/lang/Object;)V

    #@79
    const/16 v3, 0x10

    #@7b
    .line 125
    aget-object v3, p3, v3

    #@7d
    check-cast v3, Landroid/widget/Button;

    #@7f
    iput-object v3, v10, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->mboundView16:Landroid/widget/Button;

    #@81
    .line 126
    invoke-virtual {v3, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    #@84
    const/16 v3, 0x11

    #@86
    .line 127
    aget-object v3, p3, v3

    #@88
    check-cast v3, Landroid/widget/TextView;

    #@8a
    iput-object v3, v10, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->mboundView17:Landroid/widget/TextView;

    #@8c
    .line 128
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    #@8f
    const/16 v3, 0x12

    #@91
    .line 129
    aget-object v3, p3, v3

    #@93
    check-cast v3, Landroid/widget/Button;

    #@95
    iput-object v3, v10, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->mboundView18:Landroid/widget/Button;

    #@97
    .line 130
    invoke-virtual {v3, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    #@9a
    const/4 v3, 0x2

    #@9b
    .line 131
    aget-object v4, p3, v3

    #@9d
    check-cast v4, Landroid/widget/TextView;

    #@9f
    iput-object v4, v10, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->mboundView2:Landroid/widget/TextView;

    #@a1
    .line 132
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    #@a4
    const/16 v4, 0x14

    #@a6
    .line 133
    aget-object v4, p3, v4

    #@a8
    check-cast v4, Landroid/widget/Button;

    #@aa
    iput-object v4, v10, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->mboundView20:Landroid/widget/Button;

    #@ac
    .line 134
    invoke-virtual {v4, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    #@af
    const/16 v4, 0x15

    #@b1
    .line 135
    aget-object v4, p3, v4

    #@b3
    check-cast v4, Landroid/widget/LinearLayout;

    #@b5
    iput-object v4, v10, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->mboundView21:Landroid/widget/LinearLayout;

    #@b7
    .line 136
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    #@ba
    const/16 v4, 0x16

    #@bc
    .line 137
    aget-object v4, p3, v4

    #@be
    check-cast v4, Landroid/widget/TextView;

    #@c0
    iput-object v4, v10, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->mboundView22:Landroid/widget/TextView;

    #@c2
    .line 138
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    #@c5
    const/16 v4, 0x17

    #@c7
    .line 139
    aget-object v4, p3, v4

    #@c9
    check-cast v4, Landroid/widget/LinearLayout;

    #@cb
    iput-object v4, v10, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->mboundView23:Landroid/widget/LinearLayout;

    #@cd
    .line 140
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    #@d0
    const/16 v4, 0x18

    #@d2
    .line 141
    aget-object v4, p3, v4

    #@d4
    check-cast v4, Landroid/widget/Button;

    #@d6
    iput-object v4, v10, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->mboundView24:Landroid/widget/Button;

    #@d8
    .line 142
    invoke-virtual {v4, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    #@db
    const/16 v4, 0x1a

    #@dd
    .line 143
    aget-object v4, p3, v4

    #@df
    check-cast v4, Landroid/widget/Button;

    #@e1
    iput-object v4, v10, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->mboundView26:Landroid/widget/Button;

    #@e3
    .line 144
    invoke-virtual {v4, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    #@e6
    const/16 v4, 0x1b

    #@e8
    .line 145
    aget-object v4, p3, v4

    #@ea
    check-cast v4, Landroid/widget/LinearLayout;

    #@ec
    iput-object v4, v10, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->mboundView27:Landroid/widget/LinearLayout;

    #@ee
    .line 146
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    #@f1
    const/16 v4, 0x1c

    #@f3
    .line 147
    aget-object v4, p3, v4

    #@f5
    check-cast v4, Lcom/google/android/material/switchmaterial/SwitchMaterial;

    #@f7
    iput-object v4, v10, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->mboundView28:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    #@f9
    .line 148
    invoke-virtual {v4, v1}, Lcom/google/android/material/switchmaterial/SwitchMaterial;->setTag(Ljava/lang/Object;)V

    #@fc
    const/16 v4, 0x1d

    #@fe
    .line 149
    aget-object v4, p3, v4

    #@100
    check-cast v4, Landroid/widget/TextView;

    #@102
    iput-object v4, v10, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->mboundView29:Landroid/widget/TextView;

    #@104
    .line 150
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    #@107
    const/4 v4, 0x3

    #@108
    .line 151
    aget-object v5, p3, v4

    #@10a
    check-cast v5, Landroid/widget/TextView;

    #@10c
    iput-object v5, v10, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->mboundView3:Landroid/widget/TextView;

    #@10e
    .line 152
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    #@111
    const/16 v5, 0x1e

    #@113
    .line 153
    aget-object v5, p3, v5

    #@115
    check-cast v5, Landroid/widget/TextView;

    #@117
    iput-object v5, v10, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->mboundView30:Landroid/widget/TextView;

    #@119
    .line 154
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    #@11c
    const/4 v5, 0x4

    #@11d
    .line 155
    aget-object v6, p3, v5

    #@11f
    check-cast v6, Landroid/widget/TextView;

    #@121
    iput-object v6, v10, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->mboundView4:Landroid/widget/TextView;

    #@123
    .line 156
    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    #@126
    const/4 v6, 0x5

    #@127
    .line 157
    aget-object v7, p3, v6

    #@129
    check-cast v7, Landroid/widget/TextView;

    #@12b
    iput-object v7, v10, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->mboundView5:Landroid/widget/TextView;

    #@12d
    .line 158
    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    #@130
    const/4 v7, 0x6

    #@131
    .line 159
    aget-object v8, p3, v7

    #@133
    check-cast v8, Landroid/widget/TextView;

    #@135
    iput-object v8, v10, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->mboundView6:Landroid/widget/TextView;

    #@137
    .line 160
    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    #@13a
    const/4 v8, 0x7

    #@13b
    .line 161
    aget-object v9, p3, v8

    #@13d
    check-cast v9, Landroid/widget/TextView;

    #@13f
    iput-object v9, v10, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->mboundView7:Landroid/widget/TextView;

    #@141
    .line 162
    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    #@144
    const/16 v9, 0x8

    #@146
    .line 163
    aget-object v14, p3, v9

    #@148
    check-cast v14, Landroid/widget/TextView;

    #@14a
    iput-object v14, v10, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->mboundView8:Landroid/widget/TextView;

    #@14c
    .line 164
    invoke-virtual {v14, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    #@14f
    .line 165
    iget-object v14, v10, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->rbManual:Landroid/widget/RadioButton;

    #@151
    invoke-virtual {v14, v1}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    #@154
    .line 166
    iget-object v14, v10, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->rbSmart:Landroid/widget/RadioButton;

    #@156
    invoke-virtual {v14, v1}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    #@159
    .line 167
    iget-object v14, v10, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->sbCold:Landroid/widget/SeekBar;

    #@15b
    invoke-virtual {v14, v1}, Landroid/widget/SeekBar;->setTag(Ljava/lang/Object;)V

    #@15e
    .line 168
    iget-object v14, v10, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->sbWind:Landroid/widget/SeekBar;

    #@160
    invoke-virtual {v14, v1}, Landroid/widget/SeekBar;->setTag(Ljava/lang/Object;)V

    #@163
    .line 169
    iget-object v14, v10, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->tvConnectState:Landroid/widget/TextView;

    #@165
    invoke-virtual {v14, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    #@168
    move-object/from16 v1, p2

    #@16a
    .line 170
    invoke-virtual {p0, v1}, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->setRootTag(Landroid/view/View;)V

    #@16d
    .line 172
    new-instance v1, Lcom/example/extool/generated/callback/OnCheckedChangeListener;

    #@16f
    invoke-direct {v1, p0, v3}, Lcom/example/extool/generated/callback/OnCheckedChangeListener;-><init>(Lcom/example/extool/generated/callback/OnCheckedChangeListener$Listener;I)V

    #@172
    iput-object v1, v10, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->mCallback2:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    #@174
    .line 173
    new-instance v1, Lcom/example/extool/generated/callback/OnClickListener;

    #@176
    invoke-direct {v1, p0, v12}, Lcom/example/extool/generated/callback/OnClickListener;-><init>(Lcom/example/extool/generated/callback/OnClickListener$Listener;I)V

    #@179
    iput-object v1, v10, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->mCallback9:Landroid/view/View$OnClickListener;

    #@17b
    .line 174
    new-instance v1, Lcom/example/extool/generated/callback/OnCheckedChangeListener;

    #@17d
    invoke-direct {v1, p0, v13}, Lcom/example/extool/generated/callback/OnCheckedChangeListener;-><init>(Lcom/example/extool/generated/callback/OnCheckedChangeListener$Listener;I)V

    #@180
    iput-object v1, v10, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->mCallback1:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    #@182
    .line 175
    new-instance v1, Lcom/example/extool/generated/callback/OnClickListener;

    #@184
    invoke-direct {v1, p0, v9}, Lcom/example/extool/generated/callback/OnClickListener;-><init>(Lcom/example/extool/generated/callback/OnClickListener$Listener;I)V

    #@187
    iput-object v1, v10, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->mCallback8:Landroid/view/View$OnClickListener;

    #@189
    .line 176
    new-instance v1, Lcom/example/extool/generated/callback/OnProgressChanged;

    #@18b
    invoke-direct {v1, p0, v8}, Lcom/example/extool/generated/callback/OnProgressChanged;-><init>(Lcom/example/extool/generated/callback/OnProgressChanged$Listener;I)V

    #@18e
    iput-object v1, v10, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->mCallback7:Landroidx/databinding/adapters/SeekBarBindingAdapter$OnProgressChanged;

    #@190
    .line 177
    new-instance v1, Lcom/example/extool/generated/callback/OnClickListener;

    #@192
    invoke-direct {v1, p0, v0}, Lcom/example/extool/generated/callback/OnClickListener;-><init>(Lcom/example/extool/generated/callback/OnClickListener$Listener;I)V

    #@195
    iput-object v1, v10, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->mCallback11:Landroid/view/View$OnClickListener;

    #@197
    .line 178
    new-instance v0, Lcom/example/extool/generated/callback/OnClickListener;

    #@199
    invoke-direct {v0, p0, v7}, Lcom/example/extool/generated/callback/OnClickListener;-><init>(Lcom/example/extool/generated/callback/OnClickListener$Listener;I)V

    #@19c
    iput-object v0, v10, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->mCallback6:Landroid/view/View$OnClickListener;

    #@19e
    .line 179
    new-instance v0, Lcom/example/extool/generated/callback/OnCheckedChangeListener;

    #@1a0
    invoke-direct {v0, p0, v2}, Lcom/example/extool/generated/callback/OnCheckedChangeListener;-><init>(Lcom/example/extool/generated/callback/OnCheckedChangeListener$Listener;I)V

    #@1a3
    iput-object v0, v10, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->mCallback12:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    #@1a5
    .line 180
    new-instance v0, Lcom/example/extool/generated/callback/OnClickListener;

    #@1a7
    invoke-direct {v0, p0, v6}, Lcom/example/extool/generated/callback/OnClickListener;-><init>(Lcom/example/extool/generated/callback/OnClickListener$Listener;I)V

    #@1aa
    iput-object v0, v10, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->mCallback5:Landroid/view/View$OnClickListener;

    #@1ac
    .line 181
    new-instance v0, Lcom/example/extool/generated/callback/OnProgressChanged;

    #@1ae
    invoke-direct {v0, p0, v5}, Lcom/example/extool/generated/callback/OnProgressChanged;-><init>(Lcom/example/extool/generated/callback/OnProgressChanged$Listener;I)V

    #@1b1
    iput-object v0, v10, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->mCallback4:Landroidx/databinding/adapters/SeekBarBindingAdapter$OnProgressChanged;

    #@1b3
    .line 182
    new-instance v0, Lcom/example/extool/generated/callback/OnProgressChanged;

    #@1b5
    invoke-direct {v0, p0, v11}, Lcom/example/extool/generated/callback/OnProgressChanged;-><init>(Lcom/example/extool/generated/callback/OnProgressChanged$Listener;I)V

    #@1b8
    iput-object v0, v10, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->mCallback10:Landroidx/databinding/adapters/SeekBarBindingAdapter$OnProgressChanged;

    #@1ba
    .line 183
    new-instance v0, Lcom/example/extool/generated/callback/OnClickListener;

    #@1bc
    invoke-direct {v0, p0, v4}, Lcom/example/extool/generated/callback/OnClickListener;-><init>(Lcom/example/extool/generated/callback/OnClickListener$Listener;I)V

    #@1bf
    iput-object v0, v10, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->mCallback3:Landroid/view/View$OnClickListener;

    #@1c1
    .line 184
    invoke-virtual {p0}, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->invalidateAll()V

    #@1c4
    return-void
.end method


# virtual methods
.method public final _internalCallbackOnCheckedChanged(ILandroid/widget/CompoundButton;Z)V
    .registers 7

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    if-eq p1, v1, :cond_28

    #@4
    const/4 v2, 0x2

    #@5
    if-eq p1, v2, :cond_17

    #@7
    const/16 p2, 0xc

    #@9
    if-eq p1, p2, :cond_c

    #@b
    goto :goto_38

    #@c
    .line 650
    :cond_c
    iget-object p1, p0, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->mViewModel:Lcom/example/extool/WaspWingViewModel;

    #@e
    if-eqz p1, :cond_11

    #@10
    move v0, v1

    #@11
    :cond_11
    if-eqz v0, :cond_38

    #@13
    .line 661
    invoke-virtual {p1, p3}, Lcom/example/extool/WaspWingViewModel;->enableExperimentalMode(Z)V

    #@16
    goto :goto_38

    #@17
    .line 598
    :cond_17
    iget-object p1, p0, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->mViewModel:Lcom/example/extool/WaspWingViewModel;

    #@19
    if-eqz p1, :cond_1c

    #@1b
    move v0, v1

    #@1c
    :cond_1c
    if-eqz v0, :cond_38

    #@1e
    if-eqz p2, :cond_38

    #@20
    .line 613
    invoke-virtual {p2}, Landroid/widget/CompoundButton;->getId()I

    #@23
    move-result p2

    #@24
    .line 616
    invoke-virtual {p1, p2, p3}, Lcom/example/extool/WaspWingViewModel;->updateDefaultMode(IZ)V

    #@27
    goto :goto_38

    #@28
    .line 624
    :cond_28
    iget-object p1, p0, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->mViewModel:Lcom/example/extool/WaspWingViewModel;

    #@2a
    if-eqz p1, :cond_2d

    #@2c
    move v0, v1

    #@2d
    :cond_2d
    if-eqz v0, :cond_38

    #@2f
    if-eqz p2, :cond_38

    #@31
    .line 639
    invoke-virtual {p2}, Landroid/widget/CompoundButton;->getId()I

    #@34
    move-result p2

    #@35
    .line 642
    invoke-virtual {p1, p2, p3}, Lcom/example/extool/WaspWingViewModel;->updateDefaultMode(IZ)V

    #@38
    :cond_38
    :goto_38
    return-void
.end method

.method public final _internalCallbackOnClick(ILandroid/view/View;)V
    .registers 5

    #@0
    const/4 p2, 0x3

    #@1
    const/4 v0, 0x1

    #@2
    const/4 v1, 0x0

    #@3
    if-eq p1, p2, :cond_54

    #@5
    const/16 p2, 0xb

    #@7
    if-eq p1, p2, :cond_48

    #@9
    const/4 p2, 0x5

    #@a
    if-eq p1, p2, :cond_3c

    #@c
    const/4 p2, 0x6

    #@d
    if-eq p1, p2, :cond_30

    #@f
    const/16 p2, 0x8

    #@11
    if-eq p1, p2, :cond_24

    #@13
    const/16 p2, 0x9

    #@15
    if-eq p1, p2, :cond_18

    #@17
    goto :goto_5f

    #@18
    .line 672
    :cond_18
    iget-object p1, p0, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->mViewModel:Lcom/example/extool/WaspWingViewModel;

    #@1a
    if-eqz p1, :cond_1d

    #@1c
    goto :goto_1e

    #@1d
    :cond_1d
    move v0, v1

    #@1e
    :goto_1e
    if-eqz v0, :cond_5f

    #@20
    .line 682
    invoke-virtual {p1}, Lcom/example/extool/WaspWingViewModel;->downColdPwm()V

    #@23
    goto :goto_5f

    #@24
    .line 689
    :cond_24
    iget-object p1, p0, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->mViewModel:Lcom/example/extool/WaspWingViewModel;

    #@26
    if-eqz p1, :cond_29

    #@28
    goto :goto_2a

    #@29
    :cond_29
    move v0, v1

    #@2a
    :goto_2a
    if-eqz v0, :cond_5f

    #@2c
    .line 699
    invoke-virtual {p1}, Lcom/example/extool/WaspWingViewModel;->upWindPwm()V

    #@2f
    goto :goto_5f

    #@30
    .line 723
    :cond_30
    iget-object p1, p0, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->mViewModel:Lcom/example/extool/WaspWingViewModel;

    #@32
    if-eqz p1, :cond_35

    #@34
    goto :goto_36

    #@35
    :cond_35
    move v0, v1

    #@36
    :goto_36
    if-eqz v0, :cond_5f

    #@38
    .line 733
    invoke-virtual {p1}, Lcom/example/extool/WaspWingViewModel;->downWindPwm()V

    #@3b
    goto :goto_5f

    #@3c
    .line 740
    :cond_3c
    iget-object p1, p0, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->mViewModel:Lcom/example/extool/WaspWingViewModel;

    #@3e
    if-eqz p1, :cond_41

    #@40
    goto :goto_42

    #@41
    :cond_41
    move v0, v1

    #@42
    :goto_42
    if-eqz v0, :cond_5f

    #@44
    .line 750
    invoke-virtual {p1}, Lcom/example/extool/WaspWingViewModel;->upTargetTemperature()V

    #@47
    goto :goto_5f

    #@48
    .line 706
    :cond_48
    iget-object p1, p0, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->mViewModel:Lcom/example/extool/WaspWingViewModel;

    #@4a
    if-eqz p1, :cond_4d

    #@4c
    goto :goto_4e

    #@4d
    :cond_4d
    move v0, v1

    #@4e
    :goto_4e
    if-eqz v0, :cond_5f

    #@50
    .line 716
    invoke-virtual {p1}, Lcom/example/extool/WaspWingViewModel;->upColdPwm()V

    #@53
    goto :goto_5f

    #@54
    .line 757
    :cond_54
    iget-object p1, p0, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->mViewModel:Lcom/example/extool/WaspWingViewModel;

    #@56
    if-eqz p1, :cond_59

    #@58
    goto :goto_5a

    #@59
    :cond_59
    move v0, v1

    #@5a
    :goto_5a
    if-eqz v0, :cond_5f

    #@5c
    .line 767
    invoke-virtual {p1}, Lcom/example/extool/WaspWingViewModel;->downTargetTemperature()V

    #@5f
    :cond_5f
    :goto_5f
    return-void
.end method

.method public final _internalCallbackOnProgressChanged(ILandroid/widget/SeekBar;IZ)V
    .registers 7

    #@0
    const/4 p2, 0x4

    #@1
    const/4 v0, 0x1

    #@2
    const/4 v1, 0x0

    #@3
    if-eq p1, p2, :cond_29

    #@5
    const/4 p2, 0x7

    #@6
    if-eq p1, p2, :cond_1b

    #@8
    const/16 p2, 0xa

    #@a
    if-eq p1, p2, :cond_d

    #@c
    goto :goto_36

    #@d
    .line 828
    :cond_d
    iget-object p1, p0, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->mViewModel:Lcom/example/extool/WaspWingViewModel;

    #@f
    if-eqz p4, :cond_36

    #@11
    if-eqz p1, :cond_14

    #@13
    goto :goto_15

    #@14
    :cond_14
    move v0, v1

    #@15
    :goto_15
    if-eqz v0, :cond_36

    #@17
    .line 843
    invoke-virtual {p1, p3, p4}, Lcom/example/extool/WaspWingViewModel;->updateColdPwm(IZ)V

    #@1a
    goto :goto_36

    #@1b
    .line 778
    :cond_1b
    iget-object p1, p0, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->mViewModel:Lcom/example/extool/WaspWingViewModel;

    #@1d
    if-eqz p4, :cond_36

    #@1f
    if-eqz p1, :cond_22

    #@21
    goto :goto_23

    #@22
    :cond_22
    move v0, v1

    #@23
    :goto_23
    if-eqz v0, :cond_36

    #@25
    .line 793
    invoke-virtual {p1, p3, p4}, Lcom/example/extool/WaspWingViewModel;->updateWindPwm(IZ)V

    #@28
    goto :goto_36

    #@29
    .line 803
    :cond_29
    iget-object p1, p0, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->mViewModel:Lcom/example/extool/WaspWingViewModel;

    #@2b
    if-eqz p4, :cond_36

    #@2d
    if-eqz p1, :cond_30

    #@2f
    goto :goto_31

    #@30
    :cond_30
    move v0, v1

    #@31
    :goto_31
    if-eqz v0, :cond_36

    #@33
    .line 818
    invoke-virtual {p1, p3, p4}, Lcom/example/extool/WaspWingViewModel;->updateDefaultTemperature(IZ)V

    #@36
    :cond_36
    :goto_36
    return-void
.end method

.method protected executeBindings()V
    .registers 38

    #@0
    move-object/from16 v1, p0

    #@2
    .line 247
    monitor-enter p0

    #@3
    .line 248
    :try_start_3
    iget-wide v2, v1, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->mDirtyFlags:J

    #@5
    const-wide/16 v4, 0x0

    #@7
    .line 249
    iput-wide v4, v1, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->mDirtyFlags:J

    #@9
    .line 250
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_3f5

    #@a
    .line 281
    iget-object v0, v1, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->mData:Lcom/flydigi/sdk/waspwing/WaspWingInfo;

    #@c
    .line 301
    iget-object v6, v1, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->mViewModel:Lcom/example/extool/WaspWingViewModel;

    #@e
    const-wide/16 v6, 0x5

    #@10
    and-long v8, v2, v6

    #@12
    cmp-long v8, v8, v4

    #@14
    const-wide/16 v9, 0x400

    #@16
    const-wide/16 v11, 0x1000

    #@18
    const-wide/32 v13, 0x40000

    #@1b
    if-eqz v8, :cond_14a

    #@1d
    if-eqz v0, :cond_4a

    #@1f
    .line 311
    invoke-virtual {v0}, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->getFirmwareVersion()Ljava/lang/String;

    #@22
    move-result-object v18

    #@23
    .line 313
    invoke-virtual {v0}, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->isConnected()Z

    #@26
    move-result v19

    #@27
    .line 315
    invoke-virtual {v0}, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->getRealWindLevel()I

    #@2a
    move-result v20

    #@2b
    .line 317
    invoke-virtual {v0}, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->isConnected()Z

    #@2e
    move-result v21

    #@2f
    .line 319
    invoke-virtual {v0}, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->getOverClockUsable()Z

    #@32
    move-result v22

    #@33
    .line 321
    invoke-virtual {v0}, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->getRunMode()I

    #@36
    move-result v23

    #@37
    .line 323
    invoke-virtual {v0}, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->getExperimentalRunModeValue()Ljava/lang/Integer;

    #@3a
    move-result-object v24

    #@3b
    .line 325
    invoke-virtual {v0}, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->getTargetTemperature()I

    #@3e
    move-result v25

    #@3f
    .line 327
    invoke-virtual {v0}, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->getAddress()Ljava/lang/String;

    #@42
    move-result-object v26

    #@43
    .line 329
    invoke-virtual {v0}, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->getRealColdLevel()I

    #@46
    move-result v27

    #@47
    move/from16 v15, v23

    #@49
    goto :goto_5d

    #@4a
    :cond_4a
    const/4 v15, 0x0

    #@4b
    const/16 v18, 0x0

    #@4d
    const/16 v19, 0x0

    #@4f
    const/16 v20, 0x0

    #@51
    const/16 v21, 0x0

    #@53
    const/16 v22, 0x0

    #@55
    const/16 v24, 0x0

    #@57
    const/16 v25, 0x0

    #@59
    const/16 v26, 0x0

    #@5b
    const/16 v27, 0x0

    #@5d
    :goto_5d
    if-eqz v8, :cond_68

    #@5f
    if-eqz v19, :cond_64

    #@61
    const-wide/16 v28, 0x4000

    #@63
    goto :goto_66

    #@64
    :cond_64
    const-wide/16 v28, 0x2000

    #@66
    :goto_66
    or-long v2, v2, v28

    #@68
    :cond_68
    and-long v28, v2, v6

    #@6a
    cmp-long v8, v28, v4

    #@6c
    if-eqz v8, :cond_8b

    #@6e
    if-eqz v21, :cond_79

    #@70
    or-long/2addr v2, v9

    #@71
    or-long/2addr v2, v11

    #@72
    or-long/2addr v2, v13

    #@73
    const-wide/32 v16, 0x100000

    #@76
    or-long v2, v2, v16

    #@78
    goto :goto_8b

    #@79
    :cond_79
    const-wide/16 v28, 0x200

    #@7b
    or-long v2, v2, v28

    #@7d
    const-wide/16 v28, 0x800

    #@7f
    or-long v2, v2, v28

    #@81
    const-wide/32 v28, 0x20000

    #@84
    or-long v2, v2, v28

    #@86
    const-wide/32 v28, 0x80000

    #@89
    or-long v2, v2, v28

    #@8b
    :cond_8b
    :goto_8b
    and-long v28, v2, v6

    #@8d
    cmp-long v8, v28, v4

    #@8f
    if-eqz v8, :cond_9a

    #@91
    if-eqz v22, :cond_96

    #@93
    const-wide/16 v28, 0x10

    #@95
    goto :goto_98

    #@96
    :cond_96
    const-wide/16 v28, 0x8

    #@98
    :goto_98
    or-long v2, v2, v28

    #@9a
    :cond_9a
    if-nez v18, :cond_9f

    #@9c
    const/16 v28, 0x1

    #@9e
    goto :goto_a1

    #@9f
    :cond_9f
    const/16 v28, 0x0

    #@a1
    :goto_a1
    if-eqz v19, :cond_a6

    #@a3
    const-string v19, "\u5df2\u8fde\u63a5"

    #@a5
    goto :goto_a8

    #@a6
    :cond_a6
    const-string v19, "\u626b\u63cf\u4e2d"

    #@a8
    :goto_a8
    move-object/from16 v8, v19

    #@aa
    .line 368
    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@ad
    move-result-object v9

    #@ae
    if-eqz v22, :cond_b3

    #@b0
    const-string v10, "\u53ef\u7528"

    #@b2
    goto :goto_b5

    #@b3
    :cond_b3
    const-string v10, "\u4e0d\u53ef\u7528"

    #@b5
    :goto_b5
    if-nez v15, :cond_ba

    #@b7
    const/16 v19, 0x1

    #@b9
    goto :goto_bc

    #@ba
    :cond_ba
    const/16 v19, 0x0

    #@bc
    :goto_bc
    if-eqz v15, :cond_c1

    #@be
    const/16 v31, 0x1

    #@c0
    goto :goto_c3

    #@c1
    :cond_c1
    const/16 v31, 0x0

    #@c3
    :goto_c3
    const/4 v11, 0x2

    #@c4
    if-ne v15, v11, :cond_c8

    #@c6
    const/4 v11, 0x1

    #@c7
    goto :goto_c9

    #@c8
    :cond_c8
    const/4 v11, 0x0

    #@c9
    .line 378
    :goto_c9
    invoke-static/range {v24 .. v24}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Integer;)I

    #@cc
    move-result v12

    #@cd
    .line 380
    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@d0
    move-result-object v15

    #@d1
    if-nez v26, :cond_d6

    #@d3
    const/16 v24, 0x1

    #@d5
    goto :goto_d8

    #@d6
    :cond_d6
    const/16 v24, 0x0

    #@d8
    .line 384
    :goto_d8
    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@db
    move-result-object v13

    #@dc
    and-long v33, v2, v6

    #@de
    cmp-long v14, v33, v4

    #@e0
    if-eqz v14, :cond_eb

    #@e2
    if-eqz v28, :cond_e7

    #@e4
    const-wide/16 v33, 0x40

    #@e6
    goto :goto_e9

    #@e7
    :cond_e7
    const-wide/16 v33, 0x20

    #@e9
    :goto_e9
    or-long v2, v2, v33

    #@eb
    :cond_eb
    and-long v33, v2, v6

    #@ed
    cmp-long v14, v33, v4

    #@ef
    if-eqz v14, :cond_fa

    #@f1
    if-eqz v19, :cond_f6

    #@f3
    const-wide/16 v33, 0x100

    #@f5
    goto :goto_f8

    #@f6
    :cond_f6
    const-wide/16 v33, 0x80

    #@f8
    :goto_f8
    or-long v2, v2, v33

    #@fa
    :cond_fa
    and-long v33, v2, v6

    #@fc
    cmp-long v14, v33, v4

    #@fe
    if-eqz v14, :cond_10b

    #@100
    if-eqz v24, :cond_106

    #@102
    const-wide/32 v33, 0x10000

    #@105
    goto :goto_109

    #@106
    :cond_106
    const-wide/32 v33, 0x8000

    #@109
    :goto_109
    or-long v2, v2, v33

    #@10b
    :cond_10b
    const-string v14, "\u8fde\u63a5\u72b6\u6001\uff1a"

    #@10d
    .line 412
    invoke-virtual {v14, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    #@110
    move-result-object v8

    #@111
    const-string v14, "\u8d85\u9891\u529f\u80fd\uff1a"

    #@113
    .line 414
    invoke-virtual {v14, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    #@116
    move-result-object v10

    #@117
    if-eqz v19, :cond_11c

    #@119
    const-string v14, "\u6700\u5927\u98ce\u901f\uff1a"

    #@11b
    goto :goto_11e

    #@11c
    :cond_11c
    const-string v14, "\u98ce\u901f\uff1a"

    #@11e
    :goto_11e
    if-eqz v12, :cond_123

    #@120
    const/16 v29, 0x1

    #@122
    goto :goto_125

    #@123
    :cond_123
    const/16 v29, 0x0

    #@125
    :goto_125
    const-string v12, "\u76ee\u6807\u6e29\u5ea6\uff1a"

    #@127
    .line 420
    invoke-virtual {v12, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    #@12a
    move-result-object v12

    #@12b
    const-string v15, "\u5236\u51b7\u7247\u5f3a\u5ea6\uff1a"

    #@12d
    .line 422
    invoke-virtual {v15, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    #@130
    move-result-object v13

    #@131
    .line 427
    invoke-virtual {v14, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    #@134
    move-result-object v9

    #@135
    move/from16 v14, v19

    #@137
    move/from16 v15, v22

    #@139
    move/from16 v35, v27

    #@13b
    move-object/from16 v19, v8

    #@13d
    move/from16 v22, v11

    #@13f
    move/from16 v8, v21

    #@141
    move/from16 v11, v31

    #@143
    move-object/from16 v21, v10

    #@145
    move/from16 v10, v25

    #@147
    move/from16 v25, v29

    #@149
    goto :goto_166

    #@14a
    :cond_14a
    const/4 v8, 0x0

    #@14b
    const/4 v9, 0x0

    #@14c
    const/4 v10, 0x0

    #@14d
    const/4 v11, 0x0

    #@14e
    const/4 v12, 0x0

    #@14f
    const/4 v13, 0x0

    #@150
    const/4 v14, 0x0

    #@151
    const/4 v15, 0x0

    #@152
    const/16 v18, 0x0

    #@154
    const/16 v19, 0x0

    #@156
    const/16 v20, 0x0

    #@158
    const/16 v21, 0x0

    #@15a
    const/16 v22, 0x0

    #@15c
    const/16 v24, 0x0

    #@15e
    const/16 v25, 0x0

    #@160
    const/16 v26, 0x0

    #@162
    const/16 v28, 0x0

    #@164
    const/16 v35, 0x0

    #@166
    :goto_166
    and-long/2addr v6, v2

    #@167
    cmp-long v6, v6, v4

    #@169
    if-eqz v6, :cond_184

    #@16b
    if-eqz v28, :cond_16f

    #@16d
    const-string v18, ""

    #@16f
    :cond_16f
    move-object/from16 v7, v18

    #@171
    if-eqz v24, :cond_175

    #@173
    const-string v26, ""

    #@175
    :cond_175
    move-object/from16 v4, v26

    #@177
    const-string v5, "\u56fa\u4ef6\u7248\u672c\uff1a"

    #@179
    .line 441
    invoke-virtual {v5, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    #@17c
    move-result-object v5

    #@17d
    const-string v7, "Mac\uff1a"

    #@17f
    .line 443
    invoke-virtual {v7, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    #@182
    move-result-object v4

    #@183
    goto :goto_186

    #@184
    :cond_184
    const/4 v4, 0x0

    #@185
    const/4 v5, 0x0

    #@186
    :goto_186
    const-wide/32 v16, 0x100000

    #@189
    and-long v16, v2, v16

    #@18b
    const-wide/16 v26, 0x0

    #@18d
    cmp-long v7, v16, v26

    #@18f
    if-eqz v7, :cond_1b1

    #@191
    if-eqz v0, :cond_19a

    #@193
    .line 449
    invoke-virtual {v0}, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->getSpeed()I

    #@196
    move-result v7

    #@197
    move-object/from16 v16, v5

    #@199
    goto :goto_19d

    #@19a
    :cond_19a
    move-object/from16 v16, v5

    #@19c
    const/4 v7, 0x0

    #@19d
    .line 454
    :goto_19d
    new-instance v5, Ljava/lang/StringBuilder;

    #@19f
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@1a2
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a5
    move-result-object v5

    #@1a6
    const-string v7, ""

    #@1a8
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ab
    move-result-object v5

    #@1ac
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1af
    move-result-object v5

    #@1b0
    goto :goto_1b4

    #@1b1
    :cond_1b1
    move-object/from16 v16, v5

    #@1b3
    const/4 v5, 0x0

    #@1b4
    :goto_1b4
    const-wide/32 v17, 0x40000

    #@1b7
    and-long v17, v2, v17

    #@1b9
    const-wide/16 v26, 0x0

    #@1bb
    cmp-long v7, v17, v26

    #@1bd
    if-eqz v7, :cond_1fd

    #@1bf
    if-eqz v0, :cond_1d2

    #@1c1
    .line 460
    invoke-virtual {v0}, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->getTemperature()I

    #@1c4
    move-result v7

    #@1c5
    .line 462
    invoke-virtual {v0}, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->getTemperatureDecimal()I

    #@1c8
    move-result v17

    #@1c9
    move-object/from16 v18, v13

    #@1cb
    move/from16 v36, v17

    #@1cd
    move-object/from16 v17, v5

    #@1cf
    move/from16 v5, v36

    #@1d1
    goto :goto_1d8

    #@1d2
    :cond_1d2
    move-object/from16 v17, v5

    #@1d4
    move-object/from16 v18, v13

    #@1d6
    const/4 v5, 0x0

    #@1d7
    const/4 v7, 0x0

    #@1d8
    .line 467
    :goto_1d8
    new-instance v13, Ljava/lang/StringBuilder;

    #@1da
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@1dd
    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e0
    move-result-object v7

    #@1e1
    const-string v13, "."

    #@1e3
    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e6
    move-result-object v7

    #@1e7
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1ea
    move-result-object v7

    #@1eb
    .line 471
    new-instance v13, Ljava/lang/StringBuilder;

    #@1ed
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@1f0
    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f3
    move-result-object v7

    #@1f4
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1f7
    move-result-object v5

    #@1f8
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1fb
    move-result-object v5

    #@1fc
    goto :goto_202

    #@1fd
    :cond_1fd
    move-object/from16 v17, v5

    #@1ff
    move-object/from16 v18, v13

    #@201
    const/4 v5, 0x0

    #@202
    :goto_202
    const-wide/16 v31, 0x1000

    #@204
    and-long v31, v2, v31

    #@206
    const-wide/16 v26, 0x0

    #@208
    cmp-long v7, v31, v26

    #@20a
    if-eqz v7, :cond_228

    #@20c
    if-eqz v0, :cond_213

    #@20e
    .line 477
    invoke-virtual {v0}, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->getHotSurfaceTemperature()B

    #@211
    move-result v7

    #@212
    goto :goto_214

    #@213
    :cond_213
    const/4 v7, 0x0

    #@214
    .line 482
    :goto_214
    new-instance v13, Ljava/lang/StringBuilder;

    #@216
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@219
    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21c
    move-result-object v7

    #@21d
    const-string v13, "\u00b0"

    #@21f
    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@222
    move-result-object v7

    #@223
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@226
    move-result-object v7

    #@227
    goto :goto_229

    #@228
    :cond_228
    const/4 v7, 0x0

    #@229
    :goto_229
    const-wide/16 v29, 0x400

    #@22b
    and-long v29, v2, v29

    #@22d
    const-wide/16 v26, 0x0

    #@22f
    cmp-long v13, v29, v26

    #@231
    if-eqz v13, :cond_24f

    #@233
    if-eqz v0, :cond_23a

    #@235
    .line 488
    invoke-virtual {v0}, Lcom/flydigi/sdk/waspwing/WaspWingInfo;->getColdRunLevel()I

    #@238
    move-result v0

    #@239
    goto :goto_23b

    #@23a
    :cond_23a
    const/4 v0, 0x0

    #@23b
    .line 493
    :goto_23b
    new-instance v13, Ljava/lang/StringBuilder;

    #@23d
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@240
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@243
    move-result-object v0

    #@244
    const-string v13, ""

    #@246
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@249
    move-result-object v0

    #@24a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24d
    move-result-object v0

    #@24e
    goto :goto_250

    #@24f
    :cond_24f
    const/4 v0, 0x0

    #@250
    :goto_250
    if-eqz v6, :cond_28f

    #@252
    if-eqz v8, :cond_255

    #@254
    goto :goto_257

    #@255
    :cond_255
    const-string v0, "--"

    #@257
    :goto_257
    if-eqz v8, :cond_25a

    #@259
    goto :goto_25c

    #@25a
    :cond_25a
    const-string v7, "--"

    #@25c
    :goto_25c
    if-eqz v8, :cond_25f

    #@25e
    goto :goto_261

    #@25f
    :cond_25f
    const-string v5, "--"

    #@261
    :goto_261
    if-eqz v8, :cond_268

    #@263
    move-wide/from16 v29, v2

    #@265
    move-object/from16 v13, v17

    #@267
    goto :goto_26c

    #@268
    :cond_268
    const-string v13, "--"

    #@26a
    move-wide/from16 v29, v2

    #@26c
    :goto_26c
    const-string v2, "\u5236\u51b7\u7247\u5f3a\u5ea6\r\n"

    #@26e
    .line 509
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    #@271
    move-result-object v0

    #@272
    const-string v2, "\u70ed\u9762\u6e29\u5ea6\r\n"

    #@274
    .line 511
    invoke-virtual {v2, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    #@277
    move-result-object v2

    #@278
    const-string v3, "\u51b7\u9762\u6e29\u5ea6\r\n"

    #@27a
    .line 513
    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    #@27d
    move-result-object v3

    #@27e
    const-string v5, "\u98ce\u6247\u8f6c\u901f\r\n"

    #@280
    .line 515
    invoke-virtual {v5, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    #@283
    move-result-object v5

    #@284
    if-eqz v3, :cond_28d

    #@286
    const-string v7, "\u00b0"

    #@288
    .line 520
    invoke-virtual {v3, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    #@28b
    move-result-object v3

    #@28c
    goto :goto_295

    #@28d
    :cond_28d
    const/4 v3, 0x0

    #@28e
    goto :goto_295

    #@28f
    :cond_28f
    move-wide/from16 v29, v2

    #@291
    const/4 v0, 0x0

    #@292
    const/4 v2, 0x0

    #@293
    const/4 v3, 0x0

    #@294
    const/4 v5, 0x0

    #@295
    :goto_295
    if-eqz v6, :cond_35b

    #@297
    .line 527
    iget-object v6, v1, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->mboundView11:Landroid/widget/LinearLayout;

    #@299
    invoke-static {v6, v14}, Lcom/example/extool/BindingAdapterKt;->goneUnless(Landroid/view/View;Z)V

    #@29c
    .line 528
    iget-object v6, v1, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->mboundView12:Landroid/widget/TextView;

    #@29e
    invoke-static {v6, v12}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    #@2a1
    .line 529
    iget-object v6, v1, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->mboundView13:Landroid/widget/LinearLayout;

    #@2a3
    invoke-virtual {v6, v15}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    #@2a6
    .line 530
    iget-object v6, v1, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->mboundView14:Landroid/widget/Button;

    #@2a8
    invoke-virtual {v6, v8}, Landroid/widget/Button;->setEnabled(Z)V

    #@2ab
    .line 531
    iget-object v6, v1, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->mboundView15:Landroid/widget/SeekBar;

    #@2ad
    invoke-virtual {v6, v8}, Landroid/widget/SeekBar;->setEnabled(Z)V

    #@2b0
    .line 532
    iget-object v6, v1, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->mboundView15:Landroid/widget/SeekBar;

    #@2b2
    invoke-static {v6, v10}, Landroidx/databinding/adapters/SeekBarBindingAdapter;->setProgress(Landroid/widget/SeekBar;I)V

    #@2b5
    .line 533
    iget-object v6, v1, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->mboundView16:Landroid/widget/Button;

    #@2b7
    invoke-virtual {v6, v8}, Landroid/widget/Button;->setEnabled(Z)V

    #@2ba
    .line 534
    iget-object v6, v1, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->mboundView17:Landroid/widget/TextView;

    #@2bc
    invoke-static {v6, v9}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    #@2bf
    .line 535
    iget-object v6, v1, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->mboundView18:Landroid/widget/Button;

    #@2c1
    invoke-virtual {v6, v15}, Landroid/widget/Button;->setEnabled(Z)V

    #@2c4
    .line 536
    iget-object v6, v1, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->mboundView2:Landroid/widget/TextView;

    #@2c6
    invoke-static {v6, v4}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    #@2c9
    .line 537
    iget-object v4, v1, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->mboundView20:Landroid/widget/Button;

    #@2cb
    invoke-virtual {v4, v15}, Landroid/widget/Button;->setEnabled(Z)V

    #@2ce
    .line 538
    iget-object v4, v1, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->mboundView21:Landroid/widget/LinearLayout;

    #@2d0
    invoke-static {v4, v11}, Lcom/example/extool/BindingAdapterKt;->goneUnless(Landroid/view/View;Z)V

    #@2d3
    .line 539
    iget-object v4, v1, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->mboundView22:Landroid/widget/TextView;

    #@2d5
    move-object/from16 v13, v18

    #@2d7
    invoke-static {v4, v13}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    #@2da
    .line 540
    iget-object v4, v1, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->mboundView23:Landroid/widget/LinearLayout;

    #@2dc
    invoke-virtual {v4, v15}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    #@2df
    .line 541
    iget-object v4, v1, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->mboundView24:Landroid/widget/Button;

    #@2e1
    invoke-virtual {v4, v15}, Landroid/widget/Button;->setEnabled(Z)V

    #@2e4
    .line 542
    iget-object v4, v1, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->mboundView26:Landroid/widget/Button;

    #@2e6
    invoke-virtual {v4, v15}, Landroid/widget/Button;->setEnabled(Z)V

    #@2e9
    .line 543
    iget-object v4, v1, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->mboundView27:Landroid/widget/LinearLayout;

    #@2eb
    invoke-static {v4, v15}, Lcom/example/extool/BindingAdapterKt;->goneUnless(Landroid/view/View;Z)V

    #@2ee
    .line 544
    iget-object v4, v1, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->mboundView28:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    #@2f0
    move/from16 v6, v25

    #@2f2
    invoke-static {v4, v6}, Landroidx/databinding/adapters/CompoundButtonBindingAdapter;->setChecked(Landroid/widget/CompoundButton;Z)V

    #@2f5
    .line 545
    iget-object v4, v1, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->mboundView28:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    #@2f7
    move/from16 v11, v22

    #@2f9
    invoke-static {v4, v11}, Lcom/example/extool/BindingAdapterKt;->goneUnless(Landroid/view/View;Z)V

    #@2fc
    .line 546
    iget-object v4, v1, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->mboundView29:Landroid/widget/TextView;

    #@2fe
    invoke-static {v4, v11}, Lcom/example/extool/BindingAdapterKt;->goneUnless(Landroid/view/View;Z)V

    #@301
    .line 547
    iget-object v4, v1, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->mboundView3:Landroid/widget/TextView;

    #@303
    move-object/from16 v6, v16

    #@305
    invoke-static {v4, v6}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    #@308
    .line 548
    iget-object v4, v1, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->mboundView30:Landroid/widget/TextView;

    #@30a
    invoke-static {v4, v11}, Lcom/example/extool/BindingAdapterKt;->goneUnless(Landroid/view/View;Z)V

    #@30d
    .line 549
    iget-object v4, v1, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->mboundView4:Landroid/widget/TextView;

    #@30f
    move-object/from16 v10, v21

    #@311
    invoke-static {v4, v10}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    #@314
    .line 550
    iget-object v4, v1, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->mboundView5:Landroid/widget/TextView;

    #@316
    invoke-static {v4, v3}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    #@319
    .line 551
    iget-object v3, v1, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->mboundView6:Landroid/widget/TextView;

    #@31b
    invoke-static {v3, v2}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    #@31e
    .line 552
    iget-object v2, v1, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->mboundView7:Landroid/widget/TextView;

    #@320
    invoke-static {v2, v5}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    #@323
    .line 553
    iget-object v2, v1, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->mboundView8:Landroid/widget/TextView;

    #@325
    invoke-static {v2, v0}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    #@328
    .line 554
    iget-object v0, v1, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->rbManual:Landroid/widget/RadioButton;

    #@32a
    invoke-static {v0, v11}, Landroidx/databinding/adapters/CompoundButtonBindingAdapter;->setChecked(Landroid/widget/CompoundButton;Z)V

    #@32d
    .line 555
    iget-object v0, v1, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->rbManual:Landroid/widget/RadioButton;

    #@32f
    invoke-virtual {v0, v8}, Landroid/widget/RadioButton;->setEnabled(Z)V

    #@332
    .line 556
    iget-object v0, v1, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->rbSmart:Landroid/widget/RadioButton;

    #@334
    invoke-static {v0, v14}, Landroidx/databinding/adapters/CompoundButtonBindingAdapter;->setChecked(Landroid/widget/CompoundButton;Z)V

    #@337
    .line 557
    iget-object v0, v1, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->rbSmart:Landroid/widget/RadioButton;

    #@339
    invoke-virtual {v0, v8}, Landroid/widget/RadioButton;->setEnabled(Z)V

    #@33c
    .line 558
    iget-object v0, v1, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->sbCold:Landroid/widget/SeekBar;

    #@33e
    invoke-virtual {v0, v15}, Landroid/widget/SeekBar;->setEnabled(Z)V

    #@341
    .line 559
    iget-object v0, v1, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->sbCold:Landroid/widget/SeekBar;

    #@343
    move/from16 v2, v35

    #@345
    invoke-static {v0, v2}, Landroidx/databinding/adapters/SeekBarBindingAdapter;->setProgress(Landroid/widget/SeekBar;I)V

    #@348
    .line 560
    iget-object v0, v1, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->sbWind:Landroid/widget/SeekBar;

    #@34a
    invoke-virtual {v0, v15}, Landroid/widget/SeekBar;->setEnabled(Z)V

    #@34d
    .line 561
    iget-object v0, v1, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->sbWind:Landroid/widget/SeekBar;

    #@34f
    move/from16 v2, v20

    #@351
    invoke-static {v0, v2}, Landroidx/databinding/adapters/SeekBarBindingAdapter;->setProgress(Landroid/widget/SeekBar;I)V

    #@354
    .line 562
    iget-object v0, v1, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->tvConnectState:Landroid/widget/TextView;

    #@356
    move-object/from16 v8, v19

    #@358
    invoke-static {v0, v8}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    #@35b
    :cond_35b
    const-wide/16 v2, 0x4

    #@35d
    and-long v2, v29, v2

    #@35f
    const-wide/16 v4, 0x0

    #@361
    cmp-long v0, v2, v4

    #@363
    if-eqz v0, :cond_3f4

    #@365
    .line 567
    iget-object v0, v1, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->mboundView14:Landroid/widget/Button;

    #@367
    iget-object v2, v1, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->mCallback3:Landroid/view/View$OnClickListener;

    #@369
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@36c
    .line 568
    iget-object v0, v1, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->mboundView15:Landroid/widget/SeekBar;

    #@36e
    const/16 v2, 0x23

    #@370
    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setMax(I)V

    #@373
    .line 569
    iget-object v0, v1, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->mboundView15:Landroid/widget/SeekBar;

    #@375
    const/4 v2, 0x0

    #@376
    move-object v15, v2

    #@377
    check-cast v15, Landroidx/databinding/adapters/SeekBarBindingAdapter$OnStartTrackingTouch;

    #@379
    move-object v15, v2

    #@37a
    check-cast v15, Landroidx/databinding/adapters/SeekBarBindingAdapter$OnStopTrackingTouch;

    #@37c
    iget-object v3, v1, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->mCallback4:Landroidx/databinding/adapters/SeekBarBindingAdapter$OnProgressChanged;

    #@37e
    move-object v15, v2

    #@37f
    check-cast v15, Landroidx/databinding/InverseBindingListener;

    #@381
    invoke-static {v0, v2, v2, v3, v2}, Landroidx/databinding/adapters/SeekBarBindingAdapter;->setOnSeekBarChangeListener(Landroid/widget/SeekBar;Landroidx/databinding/adapters/SeekBarBindingAdapter$OnStartTrackingTouch;Landroidx/databinding/adapters/SeekBarBindingAdapter$OnStopTrackingTouch;Landroidx/databinding/adapters/SeekBarBindingAdapter$OnProgressChanged;Landroidx/databinding/InverseBindingListener;)V

    #@384
    .line 570
    iget-object v0, v1, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->mboundView16:Landroid/widget/Button;

    #@386
    iget-object v2, v1, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->mCallback5:Landroid/view/View$OnClickListener;

    #@388
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@38b
    .line 571
    iget-object v0, v1, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->mboundView18:Landroid/widget/Button;

    #@38d
    iget-object v2, v1, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->mCallback6:Landroid/view/View$OnClickListener;

    #@38f
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@392
    .line 572
    iget-object v0, v1, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->mboundView20:Landroid/widget/Button;

    #@394
    iget-object v2, v1, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->mCallback8:Landroid/view/View$OnClickListener;

    #@396
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@399
    .line 573
    iget-object v0, v1, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->mboundView24:Landroid/widget/Button;

    #@39b
    iget-object v2, v1, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->mCallback9:Landroid/view/View$OnClickListener;

    #@39d
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@3a0
    .line 574
    iget-object v0, v1, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->mboundView26:Landroid/widget/Button;

    #@3a2
    iget-object v2, v1, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->mCallback11:Landroid/view/View$OnClickListener;

    #@3a4
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@3a7
    .line 575
    iget-object v0, v1, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->mboundView28:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    #@3a9
    iget-object v2, v1, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->mCallback12:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    #@3ab
    const/4 v3, 0x0

    #@3ac
    invoke-static {v0, v2, v3}, Landroidx/databinding/adapters/CompoundButtonBindingAdapter;->setListeners(Landroid/widget/CompoundButton;Landroid/widget/CompoundButton$OnCheckedChangeListener;Landroidx/databinding/InverseBindingListener;)V

    #@3af
    .line 576
    iget-object v0, v1, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->rbManual:Landroid/widget/RadioButton;

    #@3b1
    iget-object v2, v1, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->mCallback2:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    #@3b3
    invoke-static {v0, v2, v3}, Landroidx/databinding/adapters/CompoundButtonBindingAdapter;->setListeners(Landroid/widget/CompoundButton;Landroid/widget/CompoundButton$OnCheckedChangeListener;Landroidx/databinding/InverseBindingListener;)V

    #@3b6
    .line 577
    iget-object v0, v1, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->rbSmart:Landroid/widget/RadioButton;

    #@3b8
    iget-object v2, v1, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->mCallback1:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    #@3ba
    invoke-static {v0, v2, v3}, Landroidx/databinding/adapters/CompoundButtonBindingAdapter;->setListeners(Landroid/widget/CompoundButton;Landroid/widget/CompoundButton$OnCheckedChangeListener;Landroidx/databinding/InverseBindingListener;)V

    #@3bd
    .line 578
    iget-object v0, v1, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->sbCold:Landroid/widget/SeekBar;

    #@3bf
    const/16 v2, 0xe5

    #@3c1
    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setMax(I)V

    #@3c4
    .line 579
    iget-object v0, v1, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->sbCold:Landroid/widget/SeekBar;

    #@3c6
    iget-object v2, v1, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->mCallback10:Landroidx/databinding/adapters/SeekBarBindingAdapter$OnProgressChanged;

    #@3c8
    invoke-static {v0, v3, v3, v2, v3}, Landroidx/databinding/adapters/SeekBarBindingAdapter;->setOnSeekBarChangeListener(Landroid/widget/SeekBar;Landroidx/databinding/adapters/SeekBarBindingAdapter$OnStartTrackingTouch;Landroidx/databinding/adapters/SeekBarBindingAdapter$OnStopTrackingTouch;Landroidx/databinding/adapters/SeekBarBindingAdapter$OnProgressChanged;Landroidx/databinding/InverseBindingListener;)V

    #@3cb
    .line 580
    iget-object v0, v1, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->sbWind:Landroid/widget/SeekBar;

    #@3cd
    const/16 v2, 0x1770

    #@3cf
    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setMax(I)V

    #@3d2
    .line 581
    iget-object v0, v1, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->sbWind:Landroid/widget/SeekBar;

    #@3d4
    iget-object v2, v1, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->mCallback7:Landroidx/databinding/adapters/SeekBarBindingAdapter$OnProgressChanged;

    #@3d6
    invoke-static {v0, v3, v3, v2, v3}, Landroidx/databinding/adapters/SeekBarBindingAdapter;->setOnSeekBarChangeListener(Landroid/widget/SeekBar;Landroidx/databinding/adapters/SeekBarBindingAdapter$OnStartTrackingTouch;Landroidx/databinding/adapters/SeekBarBindingAdapter$OnStopTrackingTouch;Landroidx/databinding/adapters/SeekBarBindingAdapter$OnProgressChanged;Landroidx/databinding/InverseBindingListener;)V

    #@3d9
    .line 583
    invoke-static {}, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->getBuildSdkInt()I

    #@3dc
    move-result v0

    #@3dd
    const/16 v2, 0x1a

    #@3df
    if-lt v0, v2, :cond_3f4

    #@3e1
    .line 585
    iget-object v0, v1, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->mboundView15:Landroid/widget/SeekBar;

    #@3e3
    const/4 v2, 0x5

    #@3e4
    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setMin(I)V

    #@3e7
    .line 586
    iget-object v0, v1, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->sbCold:Landroid/widget/SeekBar;

    #@3e9
    const/4 v2, 0x0

    #@3ea
    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setMin(I)V

    #@3ed
    .line 587
    iget-object v0, v1, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->sbWind:Landroid/widget/SeekBar;

    #@3ef
    const/16 v2, 0x7d0

    #@3f1
    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setMin(I)V

    #@3f4
    :cond_3f4
    return-void

    #@3f5
    :catchall_3f5
    move-exception v0

    #@3f6
    .line 250
    :try_start_3f6
    monitor-exit p0
    :try_end_3f7
    .catchall {:try_start_3f6 .. :try_end_3f7} :catchall_3f5

    #@3f7
    throw v0
.end method

.method public hasPendingBindings()Z
    .registers 5

    #@0
    .line 197
    monitor-enter p0

    #@1
    .line 198
    :try_start_1
    iget-wide v0, p0, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->mDirtyFlags:J

    #@3
    const-wide/16 v2, 0x0

    #@5
    cmp-long v0, v0, v2

    #@7
    if-eqz v0, :cond_c

    #@9
    .line 199
    monitor-exit p0

    #@a
    const/4 v0, 0x1

    #@b
    return v0

    #@c
    .line 201
    :cond_c
    monitor-exit p0

    #@d
    const/4 v0, 0x0

    #@e
    return v0

    #@f
    :catchall_f
    move-exception v0

    #@10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_f

    #@11
    throw v0
.end method

.method public invalidateAll()V
    .registers 3

    #@0
    .line 189
    monitor-enter p0

    #@1
    const-wide/16 v0, 0x4

    #@3
    .line 190
    :try_start_3
    iput-wide v0, p0, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->mDirtyFlags:J

    #@5
    .line 191
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_a

    #@6
    .line 192
    invoke-virtual {p0}, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->requestRebind()V

    #@9
    return-void

    #@a
    :catchall_a
    move-exception v0

    #@b
    .line 191
    :try_start_b
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_a

    #@c
    throw v0
.end method

.method protected onFieldChange(ILjava/lang/Object;I)Z
    .registers 4

    #@0
    const/4 p1, 0x0

    #@1
    return p1
.end method

.method public setData(Lcom/flydigi/sdk/waspwing/WaspWingInfo;)V
    .registers 6

    #@0
    .line 221
    iput-object p1, p0, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->mData:Lcom/flydigi/sdk/waspwing/WaspWingInfo;

    #@2
    .line 222
    monitor-enter p0

    #@3
    .line 223
    :try_start_3
    iget-wide v0, p0, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->mDirtyFlags:J

    #@5
    const-wide/16 v2, 0x1

    #@7
    or-long/2addr v0, v2

    #@8
    iput-wide v0, p0, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->mDirtyFlags:J

    #@a
    .line 224
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_13

    #@b
    const/4 p1, 0x1

    #@c
    .line 225
    invoke-virtual {p0, p1}, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->notifyPropertyChanged(I)V

    #@f
    .line 226
    invoke-super {p0}, Lcom/example/extool/databinding/ActivityExperimentalB6Binding;->requestRebind()V

    #@12
    return-void

    #@13
    :catchall_13
    move-exception p1

    #@14
    .line 224
    :try_start_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    #@15
    throw p1
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .registers 5

    #@0
    const/4 v0, 0x1

    #@1
    if-ne v0, p1, :cond_9

    #@3
    .line 209
    check-cast p2, Lcom/flydigi/sdk/waspwing/WaspWingInfo;

    #@5
    invoke-virtual {p0, p2}, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->setData(Lcom/flydigi/sdk/waspwing/WaspWingInfo;)V

    #@8
    goto :goto_13

    #@9
    :cond_9
    const/4 v1, 0x2

    #@a
    if-ne v1, p1, :cond_12

    #@c
    .line 212
    check-cast p2, Lcom/example/extool/WaspWingViewModel;

    #@e
    invoke-virtual {p0, p2}, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->setViewModel(Lcom/example/extool/WaspWingViewModel;)V

    #@11
    goto :goto_13

    #@12
    :cond_12
    const/4 v0, 0x0

    #@13
    :goto_13
    return v0
.end method

.method public setViewModel(Lcom/example/extool/WaspWingViewModel;)V
    .registers 6

    #@0
    .line 229
    iput-object p1, p0, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->mViewModel:Lcom/example/extool/WaspWingViewModel;

    #@2
    .line 230
    monitor-enter p0

    #@3
    .line 231
    :try_start_3
    iget-wide v0, p0, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->mDirtyFlags:J

    #@5
    const-wide/16 v2, 0x2

    #@7
    or-long/2addr v0, v2

    #@8
    iput-wide v0, p0, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->mDirtyFlags:J

    #@a
    .line 232
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_13

    #@b
    const/4 p1, 0x2

    #@c
    .line 233
    invoke-virtual {p0, p1}, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;->notifyPropertyChanged(I)V

    #@f
    .line 234
    invoke-super {p0}, Lcom/example/extool/databinding/ActivityExperimentalB6Binding;->requestRebind()V

    #@12
    return-void

    #@13
    :catchall_13
    move-exception p1

    #@14
    .line 232
    :try_start_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    #@15
    throw p1
.end method
