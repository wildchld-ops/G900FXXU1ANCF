.class public Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;
.super Landroid/view/ViewGroup;
.source "ContactListItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/list/ContactListItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ContactListItemGroup"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/common/list/ContactListItemView;


# direct methods
.method public constructor <init>(Lcom/android/contacts/common/list/ContactListItemView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    invoke-direct {p0, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 24

    const/16 v18, 0x0

    sub-int v7, p5, p3

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->isLayoutRtl()Z

    move-result v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mPhotoPosition:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/common/list/ContactListItemView;->access$2200(Lcom/android/contacts/common/list/ContactListItemView;)Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    move-result-object v20

    sget-object v21, Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;->LEFT:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v21, v0

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static/range {v21 .. v21}, Lcom/android/contacts/common/list/ContactListItemView;->access$1800(Lcom/android/contacts/common/list/ContactListItemView;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v20

    if-eqz v20, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/common/list/ContactListItemView;->access$1800(Lcom/android/contacts/common/list/ContactListItemView;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->getMeasuredWidth()I

    move-result v9

    sub-int v20, v7, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v21, v0

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mCheckBoxHeight:I
    invoke-static/range {v21 .. v21}, Lcom/android/contacts/common/list/ContactListItemView;->access$1900(Lcom/android/contacts/common/list/ContactListItemView;)I

    move-result v21

    sub-int v20, v20, v21

    div-int/lit8 v20, v20, 0x2

    add-int v8, v18, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mCheckBoxMarginLeft:I
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/common/list/ContactListItemView;->access$2000(Lcom/android/contacts/common/list/ContactListItemView;)I

    move-result v20

    add-int p2, p2, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/common/list/ContactListItemView;->access$1800(Lcom/android/contacts/common/list/ContactListItemView;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v20

    add-int v21, p2, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v22, v0

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mCheckBoxMarginRight:I
    invoke-static/range {v22 .. v22}, Lcom/android/contacts/common/list/ContactListItemView;->access$2100(Lcom/android/contacts/common/list/ContactListItemView;)I

    move-result v22

    add-int v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v22, v0

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mCheckBoxHeight:I
    invoke-static/range {v22 .. v22}, Lcom/android/contacts/common/list/ContactListItemView;->access$1900(Lcom/android/contacts/common/list/ContactListItemView;)I

    move-result v22

    add-int v22, v22, v8

    move-object/from16 v0, v20

    move/from16 v1, p2

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v8, v2, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->layout(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mCheckBoxMarginRight:I
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/common/list/ContactListItemView;->access$2100(Lcom/android/contacts/common/list/ContactListItemView;)I

    move-result v20

    add-int v20, v20, v9

    add-int p2, p2, v20

    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/common/list/ContactListItemView;->access$3600(Lcom/android/contacts/common/list/ContactListItemView;)Landroid/widget/QuickContactBadge;

    move-result-object v20

    if-eqz v20, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/common/list/ContactListItemView;->access$3600(Lcom/android/contacts/common/list/ContactListItemView;)Landroid/widget/QuickContactBadge;

    move-result-object v16

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mPhotoPosition:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/common/list/ContactListItemView;->access$2200(Lcom/android/contacts/common/list/ContactListItemView;)Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    move-result-object v20

    sget-object v21, Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;->LEFT:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_12

    if-eqz v16, :cond_10

    sub-int v20, v7, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v21, v0

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewHeight:I
    invoke-static/range {v21 .. v21}, Lcom/android/contacts/common/list/ContactListItemView;->access$3500(Lcom/android/contacts/common/list/ContactListItemView;)I

    move-result v21

    sub-int v20, v20, v21

    div-int/lit8 v20, v20, 0x2

    add-int v15, v18, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewWidth:I
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/common/list/ContactListItemView;->access$1100(Lcom/android/contacts/common/list/ContactListItemView;)I

    move-result v20

    add-int v20, v20, p2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v21, v0

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewHeight:I
    invoke-static/range {v21 .. v21}, Lcom/android/contacts/common/list/ContactListItemView;->access$3500(Lcom/android/contacts/common/list/ContactListItemView;)I

    move-result v21

    add-int v21, v21, v15

    move-object/from16 v0, v16

    move/from16 v1, p2

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v15, v2, v3}, Landroid/view/View;->layout(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v21, v0

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mStarredIcon:Landroid/widget/ImageView;
    invoke-static/range {v21 .. v21}, Lcom/android/contacts/common/list/ContactListItemView;->access$3800(Lcom/android/contacts/common/list/ContactListItemView;)Landroid/widget/ImageView;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v20

    if-eqz v20, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mStarredIcon:Landroid/widget/ImageView;
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/common/list/ContactListItemView;->access$3800(Lcom/android/contacts/common/list/ContactListItemView;)Landroid/widget/ImageView;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v21, v0

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewWidth:I
    invoke-static/range {v21 .. v21}, Lcom/android/contacts/common/list/ContactListItemView;->access$1100(Lcom/android/contacts/common/list/ContactListItemView;)I

    move-result v21

    add-int v21, v21, p2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v22, v0

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewHeight:I
    invoke-static/range {v22 .. v22}, Lcom/android/contacts/common/list/ContactListItemView;->access$3500(Lcom/android/contacts/common/list/ContactListItemView;)I

    move-result v22

    add-int v22, v22, v15

    move-object/from16 v0, v20

    move/from16 v1, p2

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v15, v2, v3}, Landroid/widget/ImageView;->layout(IIII)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v21, v0

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mCheckedStateImageView:Landroid/widget/ImageView;
    invoke-static/range {v21 .. v21}, Lcom/android/contacts/common/list/ContactListItemView;->access$1400(Lcom/android/contacts/common/list/ContactListItemView;)Landroid/widget/ImageView;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v20

    if-eqz v20, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mActivatedStateSupported:Z
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/common/list/ContactListItemView;->access$1500(Lcom/android/contacts/common/list/ContactListItemView;)Z

    move-result v20

    if-eqz v20, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mCheckedStateImageView:Landroid/widget/ImageView;
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/common/list/ContactListItemView;->access$1400(Lcom/android/contacts/common/list/ContactListItemView;)Landroid/widget/ImageView;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v21, v0

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewWidth:I
    invoke-static/range {v21 .. v21}, Lcom/android/contacts/common/list/ContactListItemView;->access$1100(Lcom/android/contacts/common/list/ContactListItemView;)I

    move-result v21

    add-int v21, v21, p2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v22, v0

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewHeight:I
    invoke-static/range {v22 .. v22}, Lcom/android/contacts/common/list/ContactListItemView;->access$3500(Lcom/android/contacts/common/list/ContactListItemView;)I

    move-result v22

    add-int v22, v22, v15

    move-object/from16 v0, v20

    move/from16 v1, p2

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v15, v2, v3}, Landroid/widget/ImageView;->layout(IIII)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewWidth:I
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/common/list/ContactListItemView;->access$1100(Lcom/android/contacts/common/list/ContactListItemView;)I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v21, v0

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mGapBetweenImageAndText:I
    invoke-static/range {v21 .. v21}, Lcom/android/contacts/common/list/ContactListItemView;->access$1300(Lcom/android/contacts/common/list/ContactListItemView;)I

    move-result v21

    add-int v20, v20, v21

    add-int p2, p2, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mGapBetweenImageAndText:I
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/common/list/ContactListItemView;->access$1300(Lcom/android/contacts/common/list/ContactListItemView;)I

    move-result v20

    sub-int p4, p4, v20

    :cond_3
    :goto_2
    const/4 v6, 0x0

    const/4 v13, 0x0

    if-eqz v14, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mAccountIconsLayout:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v20

    if-eqz v20, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mAccountIconsLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mAccountIconMarginBottom:I
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/common/list/ContactListItemView;->access$4000(Lcom/android/contacts/common/list/ContactListItemView;)I

    move-result v20

    sub-int v5, v7, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mAccountIconsLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v21, v0

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mAccountIconSize:I
    invoke-static/range {v21 .. v21}, Lcom/android/contacts/common/list/ContactListItemView;->access$4100(Lcom/android/contacts/common/list/ContactListItemView;)I

    move-result v21

    sub-int v21, v5, v21

    add-int v22, p2, v6

    move-object/from16 v0, v20

    move/from16 v1, p2

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/widget/LinearLayout;->layout(IIII)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v21, v0

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;
    invoke-static/range {v21 .. v21}, Lcom/android/contacts/common/list/ContactListItemView;->access$3100(Lcom/android/contacts/common/list/ContactListItemView;)Landroid/widget/ImageView;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v20

    if-eqz v20, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/common/list/ContactListItemView;->access$3100(Lcom/android/contacts/common/list/ContactListItemView;)Landroid/widget/ImageView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/common/list/ContactListItemView;->access$3100(Lcom/android/contacts/common/list/ContactListItemView;)Landroid/widget/ImageView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mAccountIconMarginBottom:I
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/common/list/ContactListItemView;->access$4000(Lcom/android/contacts/common/list/ContactListItemView;)I

    move-result v20

    sub-int v20, v7, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v21, v0

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mAccountIconSize:I
    invoke-static/range {v21 .. v21}, Lcom/android/contacts/common/list/ContactListItemView;->access$4100(Lcom/android/contacts/common/list/ContactListItemView;)I

    move-result v21

    sub-int v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v21, v0

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIconMargin:I
    invoke-static/range {v21 .. v21}, Lcom/android/contacts/common/list/ContactListItemView;->access$3400(Lcom/android/contacts/common/list/ContactListItemView;)I

    move-result v21

    sub-int v11, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/common/list/ContactListItemView;->access$3100(Lcom/android/contacts/common/list/ContactListItemView;)Landroid/widget/ImageView;

    move-result-object v20

    sub-int v21, v11, v12

    add-int v22, p2, v13

    move-object/from16 v0, v20

    move/from16 v1, p2

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3, v11}, Landroid/widget/ImageView;->layout(IIII)V

    :cond_5
    invoke-static {v6, v13}, Ljava/lang/Math;->max(II)I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v21, v0

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mGapBetweenLabelAndData:I
    invoke-static/range {v21 .. v21}, Lcom/android/contacts/common/list/ContactListItemView;->access$2400(Lcom/android/contacts/common/list/ContactListItemView;)I

    move-result v21

    add-int v20, v20, v21

    add-int p2, p2, v20

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mNameTextViewHeight:I
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/common/list/ContactListItemView;->access$300(Lcom/android/contacts/common/list/ContactListItemView;)I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v21, v0

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mPhoneticNameTextViewHeight:I
    invoke-static/range {v21 .. v21}, Lcom/android/contacts/common/list/ContactListItemView;->access$400(Lcom/android/contacts/common/list/ContactListItemView;)I

    move-result v21

    add-int v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v21, v0

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mLabelAndDataViewMaxHeight:I
    invoke-static/range {v21 .. v21}, Lcom/android/contacts/common/list/ContactListItemView;->access$700(Lcom/android/contacts/common/list/ContactListItemView;)I

    move-result v21

    add-int v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v21, v0

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mSnippetTextViewHeight:I
    invoke-static/range {v21 .. v21}, Lcom/android/contacts/common/list/ContactListItemView;->access$800(Lcom/android/contacts/common/list/ContactListItemView;)I

    move-result v21

    add-int v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v21, v0

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mStatusTextViewHeight:I
    invoke-static/range {v21 .. v21}, Lcom/android/contacts/common/list/ContactListItemView;->access$900(Lcom/android/contacts/common/list/ContactListItemView;)I

    move-result v21

    add-int v19, v20, v21

    add-int v20, v7, v18

    sub-int v20, v20, v19

    div-int/lit8 v17, v20, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v21, v0

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;
    invoke-static/range {v21 .. v21}, Lcom/android/contacts/common/list/ContactListItemView;->access$1700(Lcom/android/contacts/common/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v20

    if-eqz v20, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/common/list/ContactListItemView;->access$1700(Lcom/android/contacts/common/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v21, v0

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mNameTextViewHeight:I
    invoke-static/range {v21 .. v21}, Lcom/android/contacts/common/list/ContactListItemView;->access$300(Lcom/android/contacts/common/list/ContactListItemView;)I

    move-result v21

    add-int v21, v21, v17

    move-object/from16 v0, v20

    move/from16 v1, p2

    move/from16 v2, v17

    move/from16 v3, p4

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mNameTextViewHeight:I
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/common/list/ContactListItemView;->access$300(Lcom/android/contacts/common/list/ContactListItemView;)I

    move-result v20

    add-int v17, v17, v20

    :cond_6
    move/from16 v10, p2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v21, v0

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;
    invoke-static/range {v21 .. v21}, Lcom/android/contacts/common/list/ContactListItemView;->access$2500(Lcom/android/contacts/common/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v20

    if-eqz v20, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/common/list/ContactListItemView;->access$2500(Lcom/android/contacts/common/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v21, v0

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mPhoneticNameTextViewHeight:I
    invoke-static/range {v21 .. v21}, Lcom/android/contacts/common/list/ContactListItemView;->access$400(Lcom/android/contacts/common/list/ContactListItemView;)I

    move-result v21

    add-int v21, v21, v17

    move-object/from16 v0, v20

    move/from16 v1, p2

    move/from16 v2, v17

    move/from16 v3, p4

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mPhoneticNameTextViewHeight:I
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/common/list/ContactListItemView;->access$400(Lcom/android/contacts/common/list/ContactListItemView;)I

    move-result v20

    add-int v17, v17, v20

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v21, v0

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;
    invoke-static/range {v21 .. v21}, Lcom/android/contacts/common/list/ContactListItemView;->access$3300(Lcom/android/contacts/common/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v20

    if-eqz v20, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/common/list/ContactListItemView;->access$3300(Lcom/android/contacts/common/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v21, v0

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mStatusTextViewHeight:I
    invoke-static/range {v21 .. v21}, Lcom/android/contacts/common/list/ContactListItemView;->access$900(Lcom/android/contacts/common/list/ContactListItemView;)I

    move-result v21

    add-int v21, v21, v17

    move-object/from16 v0, v20

    move/from16 v1, p2

    move/from16 v2, v17

    move/from16 v3, p4

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mStatusTextViewHeight:I
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/common/list/ContactListItemView;->access$900(Lcom/android/contacts/common/list/ContactListItemView;)I

    move-result v20

    add-int v17, v17, v20

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v21, v0

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;
    invoke-static/range {v21 .. v21}, Lcom/android/contacts/common/list/ContactListItemView;->access$2700(Lcom/android/contacts/common/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v20

    if-eqz v20, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mPhotoPosition:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/common/list/ContactListItemView;->access$2200(Lcom/android/contacts/common/list/ContactListItemView;)Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    move-result-object v20

    sget-object v21, Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;->LEFT:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/common/list/ContactListItemView;->access$2700(Lcom/android/contacts/common/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v21, v0

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;
    invoke-static/range {v21 .. v21}, Lcom/android/contacts/common/list/ContactListItemView;->access$2700(Lcom/android/contacts/common/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v21

    sub-int v21, p4, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v22, v0

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mLabelAndDataViewMaxHeight:I
    invoke-static/range {v22 .. v22}, Lcom/android/contacts/common/list/ContactListItemView;->access$700(Lcom/android/contacts/common/list/ContactListItemView;)I

    move-result v22

    add-int v22, v22, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v23, v0

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mLabelViewHeight:I
    invoke-static/range {v23 .. v23}, Lcom/android/contacts/common/list/ContactListItemView;->access$500(Lcom/android/contacts/common/list/ContactListItemView;)I

    move-result v23

    sub-int v22, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v23, v0

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mLabelAndDataViewMaxHeight:I
    invoke-static/range {v23 .. v23}, Lcom/android/contacts/common/list/ContactListItemView;->access$700(Lcom/android/contacts/common/list/ContactListItemView;)I

    move-result v23

    add-int v23, v23, v17

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, p4

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/common/list/ContactListItemView;->access$2700(Lcom/android/contacts/common/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v20

    sub-int p4, p4, v20

    :cond_9
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v21, v0

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;
    invoke-static/range {v21 .. v21}, Lcom/android/contacts/common/list/ContactListItemView;->access$2600(Lcom/android/contacts/common/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v20

    if-eqz v20, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/common/list/ContactListItemView;->access$2600(Lcom/android/contacts/common/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v21, v0

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mLabelAndDataViewMaxHeight:I
    invoke-static/range {v21 .. v21}, Lcom/android/contacts/common/list/ContactListItemView;->access$700(Lcom/android/contacts/common/list/ContactListItemView;)I

    move-result v21

    add-int v21, v21, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v22, v0

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mDataViewHeight:I
    invoke-static/range {v22 .. v22}, Lcom/android/contacts/common/list/ContactListItemView;->access$600(Lcom/android/contacts/common/list/ContactListItemView;)I

    move-result v22

    sub-int v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v22, v0

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mLabelAndDataViewMaxHeight:I
    invoke-static/range {v22 .. v22}, Lcom/android/contacts/common/list/ContactListItemView;->access$700(Lcom/android/contacts/common/list/ContactListItemView;)I

    move-result v22

    add-int v22, v22, v17

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, p4

    move/from16 v3, v22

    invoke-virtual {v0, v10, v1, v2, v3}, Landroid/widget/TextView;->layout(IIII)V

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v21, v0

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;
    invoke-static/range {v21 .. v21}, Lcom/android/contacts/common/list/ContactListItemView;->access$2700(Lcom/android/contacts/common/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v20

    if-nez v20, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v21, v0

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;
    invoke-static/range {v21 .. v21}, Lcom/android/contacts/common/list/ContactListItemView;->access$2600(Lcom/android/contacts/common/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v20

    if-eqz v20, :cond_c

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mLabelAndDataViewMaxHeight:I
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/common/list/ContactListItemView;->access$700(Lcom/android/contacts/common/list/ContactListItemView;)I

    move-result v20

    add-int v17, v17, v20

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v21, v0

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;
    invoke-static/range {v21 .. v21}, Lcom/android/contacts/common/list/ContactListItemView;->access$3000(Lcom/android/contacts/common/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v20

    if-eqz v20, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/common/list/ContactListItemView;->access$3000(Lcom/android/contacts/common/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v21, v0

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mSnippetTextViewHeight:I
    invoke-static/range {v21 .. v21}, Lcom/android/contacts/common/list/ContactListItemView;->access$800(Lcom/android/contacts/common/list/ContactListItemView;)I

    move-result v21

    add-int v21, v21, v17

    move-object/from16 v0, v20

    move/from16 v1, p2

    move/from16 v2, v17

    move/from16 v3, p4

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    :cond_d
    return-void

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v21, v0

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static/range {v21 .. v21}, Lcom/android/contacts/common/list/ContactListItemView;->access$1800(Lcom/android/contacts/common/list/ContactListItemView;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v20

    if-eqz v20, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/common/list/ContactListItemView;->access$1800(Lcom/android/contacts/common/list/ContactListItemView;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->getMeasuredWidth()I

    move-result v9

    sub-int v20, v7, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v21, v0

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mCheckBoxHeight:I
    invoke-static/range {v21 .. v21}, Lcom/android/contacts/common/list/ContactListItemView;->access$1900(Lcom/android/contacts/common/list/ContactListItemView;)I

    move-result v21

    sub-int v20, v20, v21

    div-int/lit8 v20, v20, 0x2

    add-int v8, v18, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mCheckBoxMarginRight:I
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/common/list/ContactListItemView;->access$2100(Lcom/android/contacts/common/list/ContactListItemView;)I

    move-result v20

    sub-int p4, p4, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/common/list/ContactListItemView;->access$1800(Lcom/android/contacts/common/list/ContactListItemView;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v20

    sub-int v21, p4, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v22, v0

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mCheckBoxMarginLeft:I
    invoke-static/range {v22 .. v22}, Lcom/android/contacts/common/list/ContactListItemView;->access$2000(Lcom/android/contacts/common/list/ContactListItemView;)I

    move-result v22

    sub-int v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v22, v0

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mCheckBoxHeight:I
    invoke-static/range {v22 .. v22}, Lcom/android/contacts/common/list/ContactListItemView;->access$1900(Lcom/android/contacts/common/list/ContactListItemView;)I

    move-result v22

    add-int v22, v22, v8

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, p4

    move/from16 v3, v22

    invoke-virtual {v0, v1, v8, v2, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->layout(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mCheckBoxMarginLeft:I
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/common/list/ContactListItemView;->access$2000(Lcom/android/contacts/common/list/ContactListItemView;)I

    move-result v20

    add-int v20, v20, v9

    sub-int p4, p4, v20

    goto/16 :goto_0

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/common/list/ContactListItemView;->access$3700(Lcom/android/contacts/common/list/ContactListItemView;)Landroid/widget/ImageView;

    move-result-object v16

    goto/16 :goto_1

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mKeepHorizontalPaddingForPhotoView:Z
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/common/list/ContactListItemView;->access$1200(Lcom/android/contacts/common/list/ContactListItemView;)Z

    move-result v20

    if-eqz v20, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewWidth:I
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/common/list/ContactListItemView;->access$1100(Lcom/android/contacts/common/list/ContactListItemView;)I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v21, v0

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mGapBetweenImageAndText:I
    invoke-static/range {v21 .. v21}, Lcom/android/contacts/common/list/ContactListItemView;->access$1300(Lcom/android/contacts/common/list/ContactListItemView;)I

    move-result v21

    add-int v20, v20, v21

    add-int p2, p2, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mGapBetweenImageAndText:I
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/common/list/ContactListItemView;->access$1300(Lcom/android/contacts/common/list/ContactListItemView;)I

    move-result v20

    sub-int p4, p4, v20

    goto/16 :goto_2

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->isGalSearchShowMoreItem:Z
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/common/list/ContactListItemView;->access$3900(Lcom/android/contacts/common/list/ContactListItemView;)Z

    move-result v20

    if-eqz v20, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mGapBetweenImageAndText:I
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/common/list/ContactListItemView;->access$1300(Lcom/android/contacts/common/list/ContactListItemView;)I

    move-result v20

    add-int p2, p2, v20

    goto/16 :goto_2

    :cond_12
    if-eqz v16, :cond_16

    sub-int v20, v7, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v21, v0

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewHeight:I
    invoke-static/range {v21 .. v21}, Lcom/android/contacts/common/list/ContactListItemView;->access$3500(Lcom/android/contacts/common/list/ContactListItemView;)I

    move-result v21

    sub-int v20, v20, v21

    div-int/lit8 v20, v20, 0x2

    add-int v15, v18, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewWidth:I
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/common/list/ContactListItemView;->access$1100(Lcom/android/contacts/common/list/ContactListItemView;)I

    move-result v20

    sub-int v20, p4, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v21, v0

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewHeight:I
    invoke-static/range {v21 .. v21}, Lcom/android/contacts/common/list/ContactListItemView;->access$3500(Lcom/android/contacts/common/list/ContactListItemView;)I

    move-result v21

    add-int v21, v21, v15

    move-object/from16 v0, v16

    move/from16 v1, v20

    move/from16 v2, p4

    move/from16 v3, v21

    invoke-virtual {v0, v1, v15, v2, v3}, Landroid/view/View;->layout(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v21, v0

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mStarredIcon:Landroid/widget/ImageView;
    invoke-static/range {v21 .. v21}, Lcom/android/contacts/common/list/ContactListItemView;->access$3800(Lcom/android/contacts/common/list/ContactListItemView;)Landroid/widget/ImageView;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v20

    if-eqz v20, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mStarredIcon:Landroid/widget/ImageView;
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/common/list/ContactListItemView;->access$3800(Lcom/android/contacts/common/list/ContactListItemView;)Landroid/widget/ImageView;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v21, v0

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewWidth:I
    invoke-static/range {v21 .. v21}, Lcom/android/contacts/common/list/ContactListItemView;->access$1100(Lcom/android/contacts/common/list/ContactListItemView;)I

    move-result v21

    add-int v21, v21, p2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v22, v0

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewHeight:I
    invoke-static/range {v22 .. v22}, Lcom/android/contacts/common/list/ContactListItemView;->access$3500(Lcom/android/contacts/common/list/ContactListItemView;)I

    move-result v22

    add-int v22, v22, v15

    move-object/from16 v0, v20

    move/from16 v1, p2

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v15, v2, v3}, Landroid/widget/ImageView;->layout(IIII)V

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v21, v0

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mCheckedStateImageView:Landroid/widget/ImageView;
    invoke-static/range {v21 .. v21}, Lcom/android/contacts/common/list/ContactListItemView;->access$1400(Lcom/android/contacts/common/list/ContactListItemView;)Landroid/widget/ImageView;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v20

    if-eqz v20, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mActivatedStateSupported:Z
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/common/list/ContactListItemView;->access$1500(Lcom/android/contacts/common/list/ContactListItemView;)Z

    move-result v20

    if-eqz v20, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mCheckedStateImageView:Landroid/widget/ImageView;
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/common/list/ContactListItemView;->access$1400(Lcom/android/contacts/common/list/ContactListItemView;)Landroid/widget/ImageView;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v21, v0

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewWidth:I
    invoke-static/range {v21 .. v21}, Lcom/android/contacts/common/list/ContactListItemView;->access$1100(Lcom/android/contacts/common/list/ContactListItemView;)I

    move-result v21

    sub-int v21, p4, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v22, v0

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewHeight:I
    invoke-static/range {v22 .. v22}, Lcom/android/contacts/common/list/ContactListItemView;->access$3500(Lcom/android/contacts/common/list/ContactListItemView;)I

    move-result v22

    add-int v22, v22, v15

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, p4

    move/from16 v3, v22

    invoke-virtual {v0, v1, v15, v2, v3}, Landroid/widget/ImageView;->layout(IIII)V

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewWidth:I
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/common/list/ContactListItemView;->access$1100(Lcom/android/contacts/common/list/ContactListItemView;)I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v21, v0

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mGapBetweenImageAndText:I
    invoke-static/range {v21 .. v21}, Lcom/android/contacts/common/list/ContactListItemView;->access$1300(Lcom/android/contacts/common/list/ContactListItemView;)I

    move-result v21

    add-int v20, v20, v21

    sub-int p4, p4, v20

    :cond_15
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mTextIndent:I
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/common/list/ContactListItemView;->access$2300(Lcom/android/contacts/common/list/ContactListItemView;)I

    move-result v20

    add-int p2, p2, v20

    goto/16 :goto_2

    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mKeepHorizontalPaddingForPhotoView:Z
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/common/list/ContactListItemView;->access$1200(Lcom/android/contacts/common/list/ContactListItemView;)Z

    move-result v20

    if-eqz v20, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewWidth:I
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/common/list/ContactListItemView;->access$1100(Lcom/android/contacts/common/list/ContactListItemView;)I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v21, v0

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mGapBetweenImageAndText:I
    invoke-static/range {v21 .. v21}, Lcom/android/contacts/common/list/ContactListItemView;->access$1300(Lcom/android/contacts/common/list/ContactListItemView;)I

    move-result v21

    add-int v20, v20, v21

    sub-int p4, p4, v20

    goto :goto_5

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mListCallButtonController:Lcom/samsung/contacts/impl/ListCallButtonControllerImpl;
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/common/list/ContactListItemView;->access$1600(Lcom/android/contacts/common/list/ContactListItemView;)Lcom/samsung/contacts/impl/ListCallButtonControllerImpl;

    move-result-object v20

    if-eqz v20, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mListCallButtonController:Lcom/samsung/contacts/impl/ListCallButtonControllerImpl;
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/common/list/ContactListItemView;->access$1600(Lcom/android/contacts/common/list/ContactListItemView;)Lcom/samsung/contacts/impl/ListCallButtonControllerImpl;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p2

    move/from16 v2, v18

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3, v7}, Lcom/samsung/contacts/impl/ListCallButtonControllerImpl;->setLayout(IIII)I

    move-result p4

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mAccountIconsLayout:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v20

    if-eqz v20, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mAccountIconsLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mAccountIconMarginBottom:I
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/common/list/ContactListItemView;->access$4000(Lcom/android/contacts/common/list/ContactListItemView;)I

    move-result v20

    sub-int v5, v7, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mAccountIconsLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    sub-int v21, p4, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v22, v0

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mAccountIconSize:I
    invoke-static/range {v22 .. v22}, Lcom/android/contacts/common/list/ContactListItemView;->access$4100(Lcom/android/contacts/common/list/ContactListItemView;)I

    move-result v22

    sub-int v22, v5, v22

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/widget/LinearLayout;->layout(IIII)V

    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v21, v0

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;
    invoke-static/range {v21 .. v21}, Lcom/android/contacts/common/list/ContactListItemView;->access$3100(Lcom/android/contacts/common/list/ContactListItemView;)Landroid/widget/ImageView;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v20

    if-eqz v20, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/common/list/ContactListItemView;->access$3100(Lcom/android/contacts/common/list/ContactListItemView;)Landroid/widget/ImageView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/common/list/ContactListItemView;->access$3100(Lcom/android/contacts/common/list/ContactListItemView;)Landroid/widget/ImageView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mAccountIconMarginBottom:I
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/common/list/ContactListItemView;->access$4000(Lcom/android/contacts/common/list/ContactListItemView;)I

    move-result v20

    sub-int v20, v7, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v21, v0

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mAccountIconSize:I
    invoke-static/range {v21 .. v21}, Lcom/android/contacts/common/list/ContactListItemView;->access$4100(Lcom/android/contacts/common/list/ContactListItemView;)I

    move-result v21

    sub-int v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v21, v0

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIconMargin:I
    invoke-static/range {v21 .. v21}, Lcom/android/contacts/common/list/ContactListItemView;->access$3400(Lcom/android/contacts/common/list/ContactListItemView;)I

    move-result v21

    sub-int v11, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/common/list/ContactListItemView;->access$3100(Lcom/android/contacts/common/list/ContactListItemView;)Landroid/widget/ImageView;

    move-result-object v20

    sub-int v21, p4, v13

    sub-int v22, v11, v12

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3, v11}, Landroid/widget/ImageView;->layout(IIII)V

    :cond_1a
    invoke-static {v6, v13}, Ljava/lang/Math;->max(II)I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v21, v0

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mGapBetweenLabelAndData:I
    invoke-static/range {v21 .. v21}, Lcom/android/contacts/common/list/ContactListItemView;->access$2400(Lcom/android/contacts/common/list/ContactListItemView;)I

    move-result v21

    add-int v20, v20, v21

    sub-int p4, p4, v20

    goto/16 :goto_3

    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/common/list/ContactListItemView;->access$2700(Lcom/android/contacts/common/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v20

    add-int v10, p2, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/common/list/ContactListItemView;->access$2700(Lcom/android/contacts/common/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v21, v0

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mLabelAndDataViewMaxHeight:I
    invoke-static/range {v21 .. v21}, Lcom/android/contacts/common/list/ContactListItemView;->access$700(Lcom/android/contacts/common/list/ContactListItemView;)I

    move-result v21

    add-int v21, v21, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v22, v0

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mLabelViewHeight:I
    invoke-static/range {v22 .. v22}, Lcom/android/contacts/common/list/ContactListItemView;->access$500(Lcom/android/contacts/common/list/ContactListItemView;)I

    move-result v22

    sub-int v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v22, v0

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mLabelAndDataViewMaxHeight:I
    invoke-static/range {v22 .. v22}, Lcom/android/contacts/common/list/ContactListItemView;->access$700(Lcom/android/contacts/common/list/ContactListItemView;)I

    move-result v22

    add-int v22, v22, v17

    move-object/from16 v0, v20

    move/from16 v1, p2

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v10, v3}, Landroid/widget/TextView;->layout(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mGapBetweenLabelAndData:I
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/common/list/ContactListItemView;->access$2400(Lcom/android/contacts/common/list/ContactListItemView;)I

    move-result v20

    add-int v10, v10, v20

    goto/16 :goto_4
.end method

.method protected onMeasure(II)V
    .locals 17

    const/4 v13, 0x0

    move/from16 v0, p1

    invoke-static {v13, v0}, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->resolveSize(II)I

    move-result v9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mHorizontalDividerVisible:Z
    invoke-static {v13}, Lcom/android/contacts/common/list/ContactListItemView;->access$000(Lcom/android/contacts/common/list/ContactListItemView;)Z

    move-result v13

    if-eqz v13, :cond_12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mPreferredHeight:I
    invoke-static {v13}, Lcom/android/contacts/common/list/ContactListItemView;->access$100(Lcom/android/contacts/common/list/ContactListItemView;)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mHorizontalDividerHeight:I
    invoke-static {v14}, Lcom/android/contacts/common/list/ContactListItemView;->access$200(Lcom/android/contacts/common/list/ContactListItemView;)I

    move-result v14

    add-int v8, v13, v14

    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    const/4 v14, 0x0

    #setter for: Lcom/android/contacts/common/list/ContactListItemView;->mNameTextViewHeight:I
    invoke-static {v13, v14}, Lcom/android/contacts/common/list/ContactListItemView;->access$302(Lcom/android/contacts/common/list/ContactListItemView;I)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    const/4 v14, 0x0

    #setter for: Lcom/android/contacts/common/list/ContactListItemView;->mPhoneticNameTextViewHeight:I
    invoke-static {v13, v14}, Lcom/android/contacts/common/list/ContactListItemView;->access$402(Lcom/android/contacts/common/list/ContactListItemView;I)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    const/4 v14, 0x0

    #setter for: Lcom/android/contacts/common/list/ContactListItemView;->mLabelViewHeight:I
    invoke-static {v13, v14}, Lcom/android/contacts/common/list/ContactListItemView;->access$502(Lcom/android/contacts/common/list/ContactListItemView;I)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    const/4 v14, 0x0

    #setter for: Lcom/android/contacts/common/list/ContactListItemView;->mDataViewHeight:I
    invoke-static {v13, v14}, Lcom/android/contacts/common/list/ContactListItemView;->access$602(Lcom/android/contacts/common/list/ContactListItemView;I)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    const/4 v14, 0x0

    #setter for: Lcom/android/contacts/common/list/ContactListItemView;->mLabelAndDataViewMaxHeight:I
    invoke-static {v13, v14}, Lcom/android/contacts/common/list/ContactListItemView;->access$702(Lcom/android/contacts/common/list/ContactListItemView;I)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    const/4 v14, 0x0

    #setter for: Lcom/android/contacts/common/list/ContactListItemView;->mSnippetTextViewHeight:I
    invoke-static {v13, v14}, Lcom/android/contacts/common/list/ContactListItemView;->access$802(Lcom/android/contacts/common/list/ContactListItemView;I)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    const/4 v14, 0x0

    #setter for: Lcom/android/contacts/common/list/ContactListItemView;->mStatusTextViewHeight:I
    invoke-static {v13, v14}, Lcom/android/contacts/common/list/ContactListItemView;->access$902(Lcom/android/contacts/common/list/ContactListItemView;I)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    #calls: Lcom/android/contacts/common/list/ContactListItemView;->ensurePhotoViewSize()V
    invoke-static {v13}, Lcom/android/contacts/common/list/ContactListItemView;->access$1000(Lcom/android/contacts/common/list/ContactListItemView;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewWidth:I
    invoke-static {v13}, Lcom/android/contacts/common/list/ContactListItemView;->access$1100(Lcom/android/contacts/common/list/ContactListItemView;)I

    move-result v13

    if-gtz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mKeepHorizontalPaddingForPhotoView:Z
    invoke-static {v13}, Lcom/android/contacts/common/list/ContactListItemView;->access$1200(Lcom/android/contacts/common/list/ContactListItemView;)Z

    move-result v13

    if-eqz v13, :cond_13

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->getPaddingLeft()I

    move-result v13

    sub-int v13, v9, v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->getPaddingRight()I

    move-result v14

    sub-int/2addr v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewWidth:I
    invoke-static {v14}, Lcom/android/contacts/common/list/ContactListItemView;->access$1100(Lcom/android/contacts/common/list/ContactListItemView;)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mGapBetweenImageAndText:I
    invoke-static {v15}, Lcom/android/contacts/common/list/ContactListItemView;->access$1300(Lcom/android/contacts/common/list/ContactListItemView;)I

    move-result v15

    add-int/2addr v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mGapBetweenImageAndText:I
    invoke-static {v15}, Lcom/android/contacts/common/list/ContactListItemView;->access$1300(Lcom/android/contacts/common/list/ContactListItemView;)I

    move-result v15

    add-int/2addr v14, v15

    sub-int v2, v13, v14

    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mCheckedStateImageView:Landroid/widget/ImageView;
    invoke-static {v14}, Lcom/android/contacts/common/list/ContactListItemView;->access$1400(Lcom/android/contacts/common/list/ContactListItemView;)Landroid/widget/ImageView;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mActivatedStateSupported:Z
    invoke-static {v13}, Lcom/android/contacts/common/list/ContactListItemView;->access$1500(Lcom/android/contacts/common/list/ContactListItemView;)Z

    move-result v13

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mCheckedStateImageView:Landroid/widget/ImageView;
    invoke-static {v13}, Lcom/android/contacts/common/list/ContactListItemView;->access$1400(Lcom/android/contacts/common/list/ContactListItemView;)Landroid/widget/ImageView;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewWidth:I
    invoke-static {v14}, Lcom/android/contacts/common/list/ContactListItemView;->access$1100(Lcom/android/contacts/common/list/ContactListItemView;)I

    move-result v14

    const/high16 v15, 0x4000

    invoke-static {v14, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    invoke-virtual {v13, v14, v15}, Landroid/widget/ImageView;->measure(II)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mListCallButtonController:Lcom/samsung/contacts/impl/ListCallButtonControllerImpl;
    invoke-static {v13}, Lcom/android/contacts/common/list/ContactListItemView;->access$1600(Lcom/android/contacts/common/list/ContactListItemView;)Lcom/samsung/contacts/impl/ListCallButtonControllerImpl;

    move-result-object v13

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mListCallButtonController:Lcom/samsung/contacts/impl/ListCallButtonControllerImpl;
    invoke-static {v13}, Lcom/android/contacts/common/list/ContactListItemView;->access$1600(Lcom/android/contacts/common/list/ContactListItemView;)Lcom/samsung/contacts/impl/ListCallButtonControllerImpl;

    move-result-object v13

    invoke-virtual {v13}, Lcom/samsung/contacts/impl/ListCallButtonControllerImpl;->setMeasure()V

    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;
    invoke-static {v14}, Lcom/android/contacts/common/list/ContactListItemView;->access$1700(Lcom/android/contacts/common/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_7

    move v6, v2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mListCallButtonController:Lcom/samsung/contacts/impl/ListCallButtonControllerImpl;
    invoke-static {v13}, Lcom/android/contacts/common/list/ContactListItemView;->access$1600(Lcom/android/contacts/common/list/ContactListItemView;)Lcom/samsung/contacts/impl/ListCallButtonControllerImpl;

    move-result-object v13

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mListCallButtonController:Lcom/samsung/contacts/impl/ListCallButtonControllerImpl;
    invoke-static {v13}, Lcom/android/contacts/common/list/ContactListItemView;->access$1600(Lcom/android/contacts/common/list/ContactListItemView;)Lcom/samsung/contacts/impl/ListCallButtonControllerImpl;

    move-result-object v13

    invoke-virtual {v13}, Lcom/samsung/contacts/impl/ListCallButtonControllerImpl;->isVisibleCallButton()Z

    move-result v13

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mListCallButtonController:Lcom/samsung/contacts/impl/ListCallButtonControllerImpl;
    invoke-static {v13}, Lcom/android/contacts/common/list/ContactListItemView;->access$1600(Lcom/android/contacts/common/list/ContactListItemView;)Lcom/samsung/contacts/impl/ListCallButtonControllerImpl;

    move-result-object v13

    invoke-virtual {v13}, Lcom/samsung/contacts/impl/ListCallButtonControllerImpl;->getCallButtonWidth()I

    move-result v13

    sub-int/2addr v6, v13

    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v14}, Lcom/android/contacts/common/list/ContactListItemView;->access$1800(Lcom/android/contacts/common/list/ContactListItemView;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v13}, Lcom/android/contacts/common/list/ContactListItemView;->access$1800(Lcom/android/contacts/common/list/ContactListItemView;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->measure(II)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v14}, Lcom/android/contacts/common/list/ContactListItemView;->access$1800(Lcom/android/contacts/common/list/ContactListItemView;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->getMeasuredHeight()I

    move-result v14

    #setter for: Lcom/android/contacts/common/list/ContactListItemView;->mCheckBoxHeight:I
    invoke-static {v13, v14}, Lcom/android/contacts/common/list/ContactListItemView;->access$1902(Lcom/android/contacts/common/list/ContactListItemView;I)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v13}, Lcom/android/contacts/common/list/ContactListItemView;->access$1800(Lcom/android/contacts/common/list/ContactListItemView;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->getMeasuredWidth()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mCheckBoxMarginLeft:I
    invoke-static {v14}, Lcom/android/contacts/common/list/ContactListItemView;->access$2000(Lcom/android/contacts/common/list/ContactListItemView;)I

    move-result v14

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mCheckBoxMarginRight:I
    invoke-static {v14}, Lcom/android/contacts/common/list/ContactListItemView;->access$2100(Lcom/android/contacts/common/list/ContactListItemView;)I

    move-result v14

    add-int v11, v13, v14

    sub-int/2addr v6, v11

    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mPhotoPosition:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;
    invoke-static {v13}, Lcom/android/contacts/common/list/ContactListItemView;->access$2200(Lcom/android/contacts/common/list/ContactListItemView;)Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    move-result-object v13

    sget-object v14, Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;->LEFT:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    if-eq v13, v14, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mTextIndent:I
    invoke-static {v13}, Lcom/android/contacts/common/list/ContactListItemView;->access$2300(Lcom/android/contacts/common/list/ContactListItemView;)I

    move-result v13

    sub-int/2addr v6, v13

    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    iget-object v14, v14, Lcom/android/contacts/common/list/ContactListItemView;->mAccountIconsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v13, v14}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    iget-object v13, v13, Lcom/android/contacts/common/list/ContactListItemView;->mAccountIconsLayout:Landroid/widget/LinearLayout;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v14, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    invoke-virtual {v13, v14, v15}, Landroid/widget/LinearLayout;->measure(II)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    iget-object v13, v13, Lcom/android/contacts/common/list/ContactListItemView;->mAccountIconsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v13}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mGapBetweenLabelAndData:I
    invoke-static {v14}, Lcom/android/contacts/common/list/ContactListItemView;->access$2400(Lcom/android/contacts/common/list/ContactListItemView;)I

    move-result v14

    add-int/2addr v13, v14

    sub-int/2addr v6, v13

    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;
    invoke-static {v13}, Lcom/android/contacts/common/list/ContactListItemView;->access$1700(Lcom/android/contacts/common/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v13

    const/high16 v14, 0x4000

    invoke-static {v6, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    invoke-virtual {v13, v14, v15}, Landroid/widget/TextView;->measure(II)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;
    invoke-static {v14}, Lcom/android/contacts/common/list/ContactListItemView;->access$1700(Lcom/android/contacts/common/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v14

    #setter for: Lcom/android/contacts/common/list/ContactListItemView;->mNameTextViewHeight:I
    invoke-static {v13, v14}, Lcom/android/contacts/common/list/ContactListItemView;->access$302(Lcom/android/contacts/common/list/ContactListItemView;I)I

    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;
    invoke-static {v14}, Lcom/android/contacts/common/list/ContactListItemView;->access$2500(Lcom/android/contacts/common/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_b

    move v7, v2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mListCallButtonController:Lcom/samsung/contacts/impl/ListCallButtonControllerImpl;
    invoke-static {v13}, Lcom/android/contacts/common/list/ContactListItemView;->access$1600(Lcom/android/contacts/common/list/ContactListItemView;)Lcom/samsung/contacts/impl/ListCallButtonControllerImpl;

    move-result-object v13

    if-eqz v13, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mListCallButtonController:Lcom/samsung/contacts/impl/ListCallButtonControllerImpl;
    invoke-static {v13}, Lcom/android/contacts/common/list/ContactListItemView;->access$1600(Lcom/android/contacts/common/list/ContactListItemView;)Lcom/samsung/contacts/impl/ListCallButtonControllerImpl;

    move-result-object v13

    invoke-virtual {v13}, Lcom/samsung/contacts/impl/ListCallButtonControllerImpl;->isVisibleCallButton()Z

    move-result v13

    if-eqz v13, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mListCallButtonController:Lcom/samsung/contacts/impl/ListCallButtonControllerImpl;
    invoke-static {v13}, Lcom/android/contacts/common/list/ContactListItemView;->access$1600(Lcom/android/contacts/common/list/ContactListItemView;)Lcom/samsung/contacts/impl/ListCallButtonControllerImpl;

    move-result-object v13

    invoke-virtual {v13}, Lcom/samsung/contacts/impl/ListCallButtonControllerImpl;->getCallButtonWidth()I

    move-result v13

    sub-int/2addr v7, v13

    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mPhotoPosition:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;
    invoke-static {v13}, Lcom/android/contacts/common/list/ContactListItemView;->access$2200(Lcom/android/contacts/common/list/ContactListItemView;)Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    move-result-object v13

    sget-object v14, Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;->LEFT:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    if-eq v13, v14, :cond_9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mTextIndent:I
    invoke-static {v13}, Lcom/android/contacts/common/list/ContactListItemView;->access$2300(Lcom/android/contacts/common/list/ContactListItemView;)I

    move-result v13

    sub-int/2addr v7, v13

    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    iget-object v14, v14, Lcom/android/contacts/common/list/ContactListItemView;->mAccountIconsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v13, v14}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_a

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    iget-object v13, v13, Lcom/android/contacts/common/list/ContactListItemView;->mAccountIconsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v13}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mGapBetweenLabelAndData:I
    invoke-static {v14}, Lcom/android/contacts/common/list/ContactListItemView;->access$2400(Lcom/android/contacts/common/list/ContactListItemView;)I

    move-result v14

    add-int/2addr v13, v14

    sub-int/2addr v7, v13

    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;
    invoke-static {v13}, Lcom/android/contacts/common/list/ContactListItemView;->access$2500(Lcom/android/contacts/common/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v13

    const/high16 v14, 0x4000

    invoke-static {v7, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    invoke-virtual {v13, v14, v15}, Landroid/widget/TextView;->measure(II)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;
    invoke-static {v14}, Lcom/android/contacts/common/list/ContactListItemView;->access$2500(Lcom/android/contacts/common/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v14

    #setter for: Lcom/android/contacts/common/list/ContactListItemView;->mPhoneticNameTextViewHeight:I
    invoke-static {v13, v14}, Lcom/android/contacts/common/list/ContactListItemView;->access$402(Lcom/android/contacts/common/list/ContactListItemView;I)I

    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;
    invoke-static {v14}, Lcom/android/contacts/common/list/ContactListItemView;->access$2600(Lcom/android/contacts/common/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_15

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;
    invoke-static {v14}, Lcom/android/contacts/common/list/ContactListItemView;->access$2700(Lcom/android/contacts/common/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mGapBetweenLabelAndData:I
    invoke-static {v13}, Lcom/android/contacts/common/list/ContactListItemView;->access$2400(Lcom/android/contacts/common/list/ContactListItemView;)I

    move-result v13

    sub-int v12, v2, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mDataViewWidthWeight:I
    invoke-static {v13}, Lcom/android/contacts/common/list/ContactListItemView;->access$2800(Lcom/android/contacts/common/list/ContactListItemView;)I

    move-result v13

    mul-int/2addr v13, v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mDataViewWidthWeight:I
    invoke-static {v14}, Lcom/android/contacts/common/list/ContactListItemView;->access$2800(Lcom/android/contacts/common/list/ContactListItemView;)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mLabelViewWidthWeight:I
    invoke-static {v15}, Lcom/android/contacts/common/list/ContactListItemView;->access$2900(Lcom/android/contacts/common/list/ContactListItemView;)I

    move-result v15

    add-int/2addr v14, v15

    div-int v1, v13, v14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mLabelViewWidthWeight:I
    invoke-static {v13}, Lcom/android/contacts/common/list/ContactListItemView;->access$2900(Lcom/android/contacts/common/list/ContactListItemView;)I

    move-result v13

    mul-int/2addr v13, v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mDataViewWidthWeight:I
    invoke-static {v14}, Lcom/android/contacts/common/list/ContactListItemView;->access$2800(Lcom/android/contacts/common/list/ContactListItemView;)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mLabelViewWidthWeight:I
    invoke-static {v15}, Lcom/android/contacts/common/list/ContactListItemView;->access$2900(Lcom/android/contacts/common/list/ContactListItemView;)I

    move-result v15

    add-int/2addr v14, v15

    div-int v4, v13, v14

    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;
    invoke-static {v14}, Lcom/android/contacts/common/list/ContactListItemView;->access$2600(Lcom/android/contacts/common/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_c

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;
    invoke-static {v13}, Lcom/android/contacts/common/list/ContactListItemView;->access$2600(Lcom/android/contacts/common/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v13

    const/high16 v14, 0x4000

    invoke-static {v1, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    invoke-virtual {v13, v14, v15}, Landroid/widget/TextView;->measure(II)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;
    invoke-static {v14}, Lcom/android/contacts/common/list/ContactListItemView;->access$2600(Lcom/android/contacts/common/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v14

    #setter for: Lcom/android/contacts/common/list/ContactListItemView;->mDataViewHeight:I
    invoke-static {v13, v14}, Lcom/android/contacts/common/list/ContactListItemView;->access$602(Lcom/android/contacts/common/list/ContactListItemView;I)I

    :cond_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;
    invoke-static {v14}, Lcom/android/contacts/common/list/ContactListItemView;->access$2700(Lcom/android/contacts/common/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_d

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mPhotoPosition:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;
    invoke-static {v13}, Lcom/android/contacts/common/list/ContactListItemView;->access$2200(Lcom/android/contacts/common/list/ContactListItemView;)Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    move-result-object v13

    sget-object v14, Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;->LEFT:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    if-ne v13, v14, :cond_17

    const/high16 v5, 0x4000

    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;
    invoke-static {v13}, Lcom/android/contacts/common/list/ContactListItemView;->access$2700(Lcom/android/contacts/common/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v13

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    invoke-virtual {v13, v14, v15}, Landroid/widget/TextView;->measure(II)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;
    invoke-static {v14}, Lcom/android/contacts/common/list/ContactListItemView;->access$2700(Lcom/android/contacts/common/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v14

    #setter for: Lcom/android/contacts/common/list/ContactListItemView;->mLabelViewHeight:I
    invoke-static {v13, v14}, Lcom/android/contacts/common/list/ContactListItemView;->access$502(Lcom/android/contacts/common/list/ContactListItemView;I)I

    :cond_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mLabelViewHeight:I
    invoke-static {v14}, Lcom/android/contacts/common/list/ContactListItemView;->access$500(Lcom/android/contacts/common/list/ContactListItemView;)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mDataViewHeight:I
    invoke-static {v15}, Lcom/android/contacts/common/list/ContactListItemView;->access$600(Lcom/android/contacts/common/list/ContactListItemView;)I

    move-result v15

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v14

    #setter for: Lcom/android/contacts/common/list/ContactListItemView;->mLabelAndDataViewMaxHeight:I
    invoke-static {v13, v14}, Lcom/android/contacts/common/list/ContactListItemView;->access$702(Lcom/android/contacts/common/list/ContactListItemView;I)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;
    invoke-static {v14}, Lcom/android/contacts/common/list/ContactListItemView;->access$3000(Lcom/android/contacts/common/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_e

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;
    invoke-static {v13}, Lcom/android/contacts/common/list/ContactListItemView;->access$3000(Lcom/android/contacts/common/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v13

    const/high16 v14, 0x4000

    invoke-static {v2, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    invoke-virtual {v13, v14, v15}, Landroid/widget/TextView;->measure(II)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;
    invoke-static {v14}, Lcom/android/contacts/common/list/ContactListItemView;->access$3000(Lcom/android/contacts/common/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v14

    #setter for: Lcom/android/contacts/common/list/ContactListItemView;->mSnippetTextViewHeight:I
    invoke-static {v13, v14}, Lcom/android/contacts/common/list/ContactListItemView;->access$802(Lcom/android/contacts/common/list/ContactListItemView;I)I

    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;
    invoke-static {v14}, Lcom/android/contacts/common/list/ContactListItemView;->access$3100(Lcom/android/contacts/common/list/ContactListItemView;)Landroid/widget/ImageView;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_f

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;
    invoke-static {v13}, Lcom/android/contacts/common/list/ContactListItemView;->access$3100(Lcom/android/contacts/common/list/ContactListItemView;)Landroid/widget/ImageView;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIconSize:I
    invoke-static {v14}, Lcom/android/contacts/common/list/ContactListItemView;->access$3200(Lcom/android/contacts/common/list/ContactListItemView;)I

    move-result v14

    const/high16 v15, 0x4000

    invoke-static {v14, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIconSize:I
    invoke-static {v15}, Lcom/android/contacts/common/list/ContactListItemView;->access$3200(Lcom/android/contacts/common/list/ContactListItemView;)I

    move-result v15

    const/high16 v16, 0x4000

    invoke-static/range {v15 .. v16}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    invoke-virtual {v13, v14, v15}, Landroid/widget/ImageView;->measure(II)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;
    invoke-static {v14}, Lcom/android/contacts/common/list/ContactListItemView;->access$3100(Lcom/android/contacts/common/list/ContactListItemView;)Landroid/widget/ImageView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v14

    #setter for: Lcom/android/contacts/common/list/ContactListItemView;->mStatusTextViewHeight:I
    invoke-static {v13, v14}, Lcom/android/contacts/common/list/ContactListItemView;->access$902(Lcom/android/contacts/common/list/ContactListItemView;I)I

    :cond_f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;
    invoke-static {v14}, Lcom/android/contacts/common/list/ContactListItemView;->access$3300(Lcom/android/contacts/common/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_10

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;
    invoke-static {v14}, Lcom/android/contacts/common/list/ContactListItemView;->access$3100(Lcom/android/contacts/common/list/ContactListItemView;)Landroid/widget/ImageView;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_18

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;
    invoke-static {v13}, Lcom/android/contacts/common/list/ContactListItemView;->access$3100(Lcom/android/contacts/common/list/ContactListItemView;)Landroid/widget/ImageView;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v13

    sub-int v13, v2, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIconMargin:I
    invoke-static {v14}, Lcom/android/contacts/common/list/ContactListItemView;->access$3400(Lcom/android/contacts/common/list/ContactListItemView;)I

    move-result v14

    sub-int v10, v13, v14

    :goto_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;
    invoke-static {v13}, Lcom/android/contacts/common/list/ContactListItemView;->access$3300(Lcom/android/contacts/common/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v13

    const/high16 v14, 0x4000

    invoke-static {v10, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    invoke-virtual {v13, v14, v15}, Landroid/widget/TextView;->measure(II)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mStatusTextViewHeight:I
    invoke-static {v14}, Lcom/android/contacts/common/list/ContactListItemView;->access$900(Lcom/android/contacts/common/list/ContactListItemView;)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;
    invoke-static {v15}, Lcom/android/contacts/common/list/ContactListItemView;->access$3300(Lcom/android/contacts/common/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v15

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v14

    #setter for: Lcom/android/contacts/common/list/ContactListItemView;->mStatusTextViewHeight:I
    invoke-static {v13, v14}, Lcom/android/contacts/common/list/ContactListItemView;->access$902(Lcom/android/contacts/common/list/ContactListItemView;I)I

    :cond_10
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mNameTextViewHeight:I
    invoke-static {v13}, Lcom/android/contacts/common/list/ContactListItemView;->access$300(Lcom/android/contacts/common/list/ContactListItemView;)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mPhoneticNameTextViewHeight:I
    invoke-static {v14}, Lcom/android/contacts/common/list/ContactListItemView;->access$400(Lcom/android/contacts/common/list/ContactListItemView;)I

    move-result v14

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mLabelAndDataViewMaxHeight:I
    invoke-static {v14}, Lcom/android/contacts/common/list/ContactListItemView;->access$700(Lcom/android/contacts/common/list/ContactListItemView;)I

    move-result v14

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mSnippetTextViewHeight:I
    invoke-static {v14}, Lcom/android/contacts/common/list/ContactListItemView;->access$800(Lcom/android/contacts/common/list/ContactListItemView;)I

    move-result v14

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mStatusTextViewHeight:I
    invoke-static {v14}, Lcom/android/contacts/common/list/ContactListItemView;->access$900(Lcom/android/contacts/common/list/ContactListItemView;)I

    move-result v14

    add-int v3, v13, v14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewHeight:I
    invoke-static {v13}, Lcom/android/contacts/common/list/ContactListItemView;->access$3500(Lcom/android/contacts/common/list/ContactListItemView;)I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->getPaddingBottom()I

    move-result v14

    add-int/2addr v13, v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->getPaddingTop()I

    move-result v14

    add-int/2addr v13, v14

    invoke-static {v3, v13}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mHorizontalDividerVisible:Z
    invoke-static {v13}, Lcom/android/contacts/common/list/ContactListItemView;->access$000(Lcom/android/contacts/common/list/ContactListItemView;)Z

    move-result v13

    if-eqz v13, :cond_11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mHorizontalDividerHeight:I
    invoke-static {v13}, Lcom/android/contacts/common/list/ContactListItemView;->access$200(Lcom/android/contacts/common/list/ContactListItemView;)I

    move-result v13

    add-int/2addr v3, v13

    :cond_11
    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v3}, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->setMeasuredDimension(II)V

    return-void

    :cond_12
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mPreferredHeight:I
    invoke-static {v13}, Lcom/android/contacts/common/list/ContactListItemView;->access$100(Lcom/android/contacts/common/list/ContactListItemView;)I

    move-result v8

    goto/16 :goto_0

    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->getPaddingLeft()I

    move-result v13

    sub-int v13, v9, v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->getPaddingRight()I

    move-result v14

    sub-int/2addr v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mGapBetweenImageAndText:I
    invoke-static {v14}, Lcom/android/contacts/common/list/ContactListItemView;->access$1300(Lcom/android/contacts/common/list/ContactListItemView;)I

    move-result v14

    sub-int v2, v13, v14

    goto/16 :goto_1

    :cond_14
    move v1, v2

    const/4 v4, 0x0

    goto/16 :goto_2

    :cond_15
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/common/list/ContactListItemView;

    #getter for: Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;
    invoke-static {v14}, Lcom/android/contacts/common/list/ContactListItemView;->access$2700(Lcom/android/contacts/common/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_16

    move v4, v2

    goto/16 :goto_2

    :cond_16
    const/4 v4, 0x0

    goto/16 :goto_2

    :cond_17
    const/high16 v5, -0x8000

    goto/16 :goto_3

    :cond_18
    move v10, v2

    goto/16 :goto_4
.end method
