.class public final Lcom/android/dialer/calllog/CallLogListItemViews;
.super Ljava/lang/Object;
.source "CallLogListItemViews.java"

# interfaces
.implements Landroid/widget/Checkable;


# instance fields
.field public final PrimaryActionLongClickListener:Landroid/view/View;

.field public final bottomDivider:Landroid/view/View;

.field public final callIndi:Landroid/widget/ImageView;

.field public final callLogDate:Landroid/widget/RelativeLayout;

.field public final callLogDate_text:Landroid/widget/TextView;

.field public final callLogViewby_text:Landroid/widget/TextView;

.field public final groupCount:Landroid/widget/TextView;

.field public final imageLayout:Landroid/widget/RelativeLayout;

.field public final listHeaderTextView:Landroid/widget/TextView;

.field public final logType:Landroid/widget/ImageView;

.field public final nameText:Landroid/widget/TextView;

.field public final numberText:Landroid/widget/TextView;

.field public final phoneCallDetailsViews:Lcom/android/dialer/PhoneCallDetailsViews;

.field public final photoButton:Landroid/widget/ImageButton;

.field public final photoView:Landroid/widget/ImageView;

.field public primaryActionView:Landroid/view/View;

.field public final quickContactView:Landroid/widget/QuickContactBadge;

.field public final secondaryActionView:Landroid/widget/Button;

.field public final selectionCheckbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field public final simTypeIcon:Landroid/widget/ImageView;

.field public final timeText:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/ImageButton;Landroid/widget/QuickContactBadge;Landroid/view/View;Landroid/view/View;Landroid/widget/Button;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/android/dialer/PhoneCallDetailsViews;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/ImageView;Landroid/view/View;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/dialer/calllog/CallLogListItemViews;->callLogDate:Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/android/dialer/calllog/CallLogListItemViews;->callLogDate_text:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/android/dialer/calllog/CallLogListItemViews;->callLogViewby_text:Landroid/widget/TextView;

    iput-object p11, p0, Lcom/android/dialer/calllog/CallLogListItemViews;->logType:Landroid/widget/ImageView;

    iput-object p12, p0, Lcom/android/dialer/calllog/CallLogListItemViews;->nameText:Landroid/widget/TextView;

    iput-object p13, p0, Lcom/android/dialer/calllog/CallLogListItemViews;->groupCount:Landroid/widget/TextView;

    iput-object p14, p0, Lcom/android/dialer/calllog/CallLogListItemViews;->callIndi:Landroid/widget/ImageView;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/dialer/calllog/CallLogListItemViews;->numberText:Landroid/widget/TextView;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/android/dialer/calllog/CallLogListItemViews;->timeText:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/android/dialer/calllog/CallLogListItemViews;->imageLayout:Landroid/widget/RelativeLayout;

    iput-object p5, p0, Lcom/android/dialer/calllog/CallLogListItemViews;->photoView:Landroid/widget/ImageView;

    iput-object p6, p0, Lcom/android/dialer/calllog/CallLogListItemViews;->photoButton:Landroid/widget/ImageButton;

    iput-object p7, p0, Lcom/android/dialer/calllog/CallLogListItemViews;->quickContactView:Landroid/widget/QuickContactBadge;

    iput-object p8, p0, Lcom/android/dialer/calllog/CallLogListItemViews;->primaryActionView:Landroid/view/View;

    iput-object p9, p0, Lcom/android/dialer/calllog/CallLogListItemViews;->PrimaryActionLongClickListener:Landroid/view/View;

    iput-object p10, p0, Lcom/android/dialer/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/Button;

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/android/dialer/calllog/CallLogListItemViews;->phoneCallDetailsViews:Lcom/android/dialer/PhoneCallDetailsViews;

    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/android/dialer/calllog/CallLogListItemViews;->listHeaderTextView:Landroid/widget/TextView;

    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/android/dialer/calllog/CallLogListItemViews;->bottomDivider:Landroid/view/View;

    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/android/dialer/calllog/CallLogListItemViews;->simTypeIcon:Landroid/widget/ImageView;

    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/android/dialer/calllog/CallLogListItemViews;->selectionCheckbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-void
.end method

.method public static createForTest(Landroid/content/Context;)Lcom/android/dialer/calllog/CallLogListItemViews;
    .locals 25

    new-instance v2, Lcom/android/dialer/calllog/CallLogListItemViews;

    new-instance v3, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v7, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v8, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    new-instance v9, Landroid/widget/QuickContactBadge;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Landroid/widget/QuickContactBadge;-><init>(Landroid/content/Context;)V

    new-instance v10, Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v11, Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v12, Landroid/widget/Button;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    new-instance v13, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v14, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v15, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v16, Landroid/widget/ImageView;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v18, Landroid/widget/TextView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static/range {p0 .. p0}, Lcom/android/dialer/PhoneCallDetailsViews;->createForTest(Landroid/content/Context;)Lcom/android/dialer/PhoneCallDetailsViews;

    move-result-object v19

    new-instance v20, Landroid/widget/TextView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v21, Landroid/view/View;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v22, Landroid/widget/ImageView;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v23, Landroid/view/View;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v24, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-direct/range {v24 .. v25}, Lcom/sec/android/touchwiz/widget/TwCheckBox;-><init>(Landroid/content/Context;)V

    invoke-direct/range {v2 .. v24}, Lcom/android/dialer/calllog/CallLogListItemViews;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/ImageButton;Landroid/widget/QuickContactBadge;Landroid/view/View;Landroid/view/View;Landroid/widget/Button;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/android/dialer/PhoneCallDetailsViews;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/ImageView;Landroid/view/View;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V

    return-object v2
.end method

.method private findCheckBox()Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogListItemViews;->selectionCheckbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogListItemViews;->selectionCheckbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    instance-of v0, v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogListItemViews;->selectionCheckbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static fromView(Landroid/view/View;)Lcom/android/dialer/calllog/CallLogListItemViews;
    .locals 25

    new-instance v2, Lcom/android/dialer/calllog/CallLogListItemViews;

    const v3, 0x7f0800b7

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    const v4, 0x7f0800b8

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0800b9

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0800bd

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    const v7, 0x7f0800be

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    const v8, 0x7f0800bf

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageButton;

    const v9, 0x7f0800c0

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/QuickContactBadge;

    const v10, 0x7f0800ba

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const v11, 0x7f0800ba

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    const v12, 0x7f0800bc

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Button;

    const v13, 0x7f0800c4

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    const v14, 0x7f0800c7

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    const v15, 0x7f0800c6

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    const v16, 0x7f0800c3

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/ImageView;

    const v17, 0x7f0800c9

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    const v18, 0x7f0800cb

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    invoke-static/range {p0 .. p0}, Lcom/android/dialer/PhoneCallDetailsViews;->fromView(Landroid/view/View;)Lcom/android/dialer/PhoneCallDetailsViews;

    move-result-object v19

    const v20, 0x7f0800cc

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    const v21, 0x7f08007a

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    const v22, 0x7f0800c8

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/ImageView;

    const v23, 0x7f08007e

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-object/from16 v23, p0

    invoke-direct/range {v2 .. v24}, Lcom/android/dialer/calllog/CallLogListItemViews;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/ImageButton;Landroid/widget/QuickContactBadge;Landroid/view/View;Landroid/view/View;Landroid/widget/Button;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/android/dialer/PhoneCallDetailsViews;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/ImageView;Landroid/view/View;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V

    return-object v2
.end method


# virtual methods
.method public isChecked()Z
    .locals 2

    invoke-direct {p0}, Lcom/android/dialer/calllog/CallLogListItemViews;->findCheckBox()Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setChecked(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/android/dialer/calllog/CallLogListItemViews;->findCheckBox()Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public toggle()V
    .locals 1

    invoke-direct {p0}, Lcom/android/dialer/calllog/CallLogListItemViews;->findCheckBox()Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->toggle()V

    :cond_0
    return-void
.end method
