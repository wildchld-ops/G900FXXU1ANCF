.class Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;
.super Ljava/lang/Object;
.source "ShowBookmarksPhoneAdapter.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BookmarksActionModeCallback"
.end annotation


# instance fields
.field private mActionModeTextView:Landroid/widget/TextView;

.field private mActionModeView:Landroid/widget/LinearLayout;

.field private mMode:Landroid/view/ActionMode;

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->mMode:Landroid/view/ActionMode;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->mActionModeTextView:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->mActionModeView:Landroid/widget/LinearLayout;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;-><init>(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;)V

    return-void
.end method

.method private isUrlPinned(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->mUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksBaseUi;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->access$200(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;)Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksBaseUi;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksBaseUi;->mShowBookmarksUiController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksUiController;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksUiController;->isUrlPinned(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public closeCABMenuWindow()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->mMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->mMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->mMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/Menu;->close()V

    :cond_0
    return-void
.end method

.method public invalidateActionModeText()V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->mActionModeTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->access$300(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c032f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->mCount:I
    invoke-static {v4}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->access$400(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 22

    const/16 v16, 0x0

    const-string v17, "Bookmarks"

    const-string v18, "onActionItemClicked enter"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->mLongPressedObjects:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->access$500(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;)Ljava/util/ArrayList;

    move-result-object v17

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->mLongPressedObjects:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->access$500(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;)Ljava/util/ArrayList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v10

    :cond_0
    invoke-interface/range {p2 .. p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v17

    sparse-switch v17, :sswitch_data_0

    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->mLongPressedObjects:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->access$500(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;)Ljava/util/ArrayList;

    move-result-object v17

    if-eqz v17, :cond_2

    if-lez v10, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->mLongPressedObjects:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->access$500(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;)Ljava/util/ArrayList;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->setChecked(Z)V

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->stopActionMode()V

    move/from16 v17, v16

    :goto_1
    return v17

    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->mUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksBaseUi;
    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->access$200(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;)Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksBaseUi;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksBaseUi;->mShowBookmarksUiController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksUiController;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->mLongPressedObjects:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->access$500(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;)Ljava/util/ArrayList;

    move-result-object v17

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksUiController;->requestEditBookmarkObject(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;)V

    const/16 v16, 0x1

    goto :goto_0

    :sswitch_1
    const/4 v15, 0x0

    new-instance v7, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->mActivity:Landroid/app/Activity;
    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->access$300(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;)Landroid/app/Activity;

    move-result-object v17

    const-class v18, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v7, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v18, "edit_bookmarkfolder_selected"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->mLongPressedObjects:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->access$500(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;)Ljava/util/ArrayList;

    move-result-object v17

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/os/Parcelable;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v17, "edit_bookmarkfolder_parentarray"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0, v15}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    invoke-virtual {v7, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->mActivity:Landroid/app/Activity;
    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->access$300(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;)Landroid/app/Activity;

    move-result-object v17

    const/16 v18, 0xd

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v7, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :sswitch_2
    new-instance v11, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->mActivity:Landroid/app/Activity;
    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->access$300(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;)Landroid/app/Activity;

    move-result-object v17

    const-class v18, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/SelectBookmarkFolderActivity;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v11, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->mLongPressedObjects:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->access$500(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;)Ljava/util/ArrayList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v5, v0, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->mLongPressedObjects:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->access$500(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;)Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->isChecked()Z

    move-result v17

    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->mLongPressedObjects:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->access$500(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;)Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->editable()Z

    move-result v17

    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->mLongPressedObjects:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->access$500(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;)Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->id()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->mLongPressedObjects:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->access$500(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;)Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->type()Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    const-string v17, "FromMoveToFolder"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v17, "listOfIds"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v17, "listOfTypes"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v17, "non_edit_items"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;

    move-object/from16 v18, v0

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->mNonEditableItems:I
    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->access$800(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;)I

    move-result v18

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v17, "editable_items"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;

    move-object/from16 v18, v0

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->mLongPressedObjects:Ljava/util/ArrayList;
    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->access$500(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;)Ljava/util/ArrayList;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;

    move-object/from16 v19, v0

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->mNonEditableItems:I
    invoke-static/range {v19 .. v19}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->access$800(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;)I

    move-result v19

    sub-int v18, v18, v19

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->mActivity:Landroid/app/Activity;
    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->access$300(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;)Landroid/app/Activity;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :sswitch_3
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->mLongPressedObjects:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->access$500(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;)Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v5, 0x0

    :goto_3
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v5, v0, :cond_6

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->editable()Z

    move-result v17

    if-nez v17, :cond_5

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v5, v5, -0x1

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_6
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-nez v17, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->stopActionMode()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->mActivity:Landroid/app/Activity;
    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->access$300(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;)Landroid/app/Activity;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;

    move-object/from16 v18, v0

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->mActivity:Landroid/app/Activity;
    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->access$300(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;)Landroid/app/Activity;

    move-result-object v18

    const v19, 0x7f0c023a

    invoke-virtual/range {v18 .. v19}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Toast;->show()V

    :goto_4
    const/16 v16, 0x1

    move/from16 v17, v16

    goto/16 :goto_1

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->mUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksBaseUi;
    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->access$200(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;)Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksBaseUi;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksBaseUi;->mShowBookmarksUiController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksUiController;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v12}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksUiController;->requestDeleteBookmarkObject(Ljava/util/ArrayList;)V

    goto :goto_4

    :sswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->mLongPressedObjects:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->access$500(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;)Ljava/util/ArrayList;

    move-result-object v17

    if-eqz v17, :cond_1

    if-lez v10, :cond_1

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->mLongPressedObjects:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->access$500(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;)Ljava/util/ArrayList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v5, v0, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->mLongPressedObjects:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->access$500(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;)Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->type()Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;

    move-result-object v17

    sget-object v18, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;->URL:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->mLongPressedObjects:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->access$500(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;)Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->url()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->mLongPressedObjects:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->access$500(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;)Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->url()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_9
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v14, v0, [Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/lang/String;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->mUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksBaseUi;
    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->access$200(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;)Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksBaseUi;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksBaseUi;->mShowBookmarksUiController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksUiController;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v14}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksUiController;->createNewWindow([Ljava/lang/String;)V

    const/16 v16, 0x1

    const/16 v17, 0x1

    goto/16 :goto_1

    :sswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->mUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksBaseUi;
    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->access$200(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;)Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksBaseUi;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksBaseUi;->mShowBookmarksUiController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksUiController;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->mLongPressedObjects:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->access$500(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;)Ljava/util/ArrayList;

    move-result-object v17

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksUiController;->shareUrl(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;)V

    const/16 v16, 0x1

    goto/16 :goto_0

    :sswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->mLongPressedObjects:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->access$500(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;)Ljava/util/ArrayList;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    if-eqz v17, :cond_b

    const/4 v9, 0x0

    :goto_6
    if-ge v9, v10, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->mLongPressedObjects:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->access$500(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;)Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->type()Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;

    move-result-object v17

    sget-object v18, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;->URL:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->mLongPressedObjects:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->access$500(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;)Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->url()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->mUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksBaseUi;
    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->access$200(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;)Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksBaseUi;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksBaseUi;->mShowBookmarksUiController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksUiController;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->mLongPressedObjects:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->access$500(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;)Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksUiController;->addShortCut(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;)V

    :cond_a
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_b
    const/16 v16, 0x1

    goto/16 :goto_0

    :sswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->mActivity:Landroid/app/Activity;
    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->access$300(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;)Landroid/app/Activity;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->mLongPressedObjects:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->access$500(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;)Ljava/util/ArrayList;

    move-result-object v17

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->url()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->mLongPressedObjects:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->access$500(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;)Ljava/util/ArrayList;

    move-result-object v17

    const/16 v21, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->title()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->startAddQuickAccessActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v16, 0x1

    goto/16 :goto_0

    :sswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->mLongPressedObjects:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->access$500(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;)Ljava/util/ArrayList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->mLongPressedObjects:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->access$500(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;)Ljava/util/ArrayList;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    if-eqz v17, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->mUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksBaseUi;
    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->access$200(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;)Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksBaseUi;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksBaseUi;->mShowBookmarksUiController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksUiController;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->mLongPressedObjects:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->access$500(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;)Ljava/util/ArrayList;

    move-result-object v17

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->url()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksUiController;->setAsHomePage(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->mActivity:Landroid/app/Activity;
    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->access$300(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;)Landroid/app/Activity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->onBackPressed()V

    const/16 v16, 0x1

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_9
        0x7f0a02ef -> :sswitch_3
        0x7f0a02f2 -> :sswitch_4
        0x7f0a02f3 -> :sswitch_3
        0x7f0a02f4 -> :sswitch_5
        0x7f0a02f5 -> :sswitch_0
        0x7f0a02f6 -> :sswitch_1
        0x7f0a02f7 -> :sswitch_2
        0x7f0a02f8 -> :sswitch_7
        0x7f0a02f9 -> :sswitch_6
        0x7f0a02fa -> :sswitch_8
    .end sparse-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v0, "Bookmarks"

    const-string v1, "onCreateActionMode enter"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;

    #setter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->mCABShown:Z
    invoke-static {v0, v4}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->access$102(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;Z)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->mUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksBaseUi;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->access$200(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;)Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksBaseUi;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksBaseUi;->enableHistory(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->mUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksBaseUi;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->access$200(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;)Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksBaseUi;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksBaseUi;->showSelectAllLayout(Z)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->mMode:Landroid/view/ActionMode;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->access$300(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040024

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->mActionModeView:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->mActionModeView:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->mActionModeView:Landroid/widget/LinearLayout;

    const v1, 0x7f0a0101

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback$1;-><init>(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->mActionModeView:Landroid/widget/LinearLayout;

    const v1, 0x7f0a0103

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->mActionModeTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->mActionModeTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->access$300(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c032f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->mCount:I
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->access$400(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->mActionModeView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->mUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksBaseUi;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->access$200(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;)Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksBaseUi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksBaseUi;->getCheckBoxMode()Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$BookmarkCheckBoxModeType;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$BookmarkCheckBoxModeType;->SELECT_CHECKBOX_MODE:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$BookmarkCheckBoxModeType;

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e000c

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    :cond_0
    :goto_0
    return v4

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->mUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksBaseUi;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->access$200(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;)Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksBaseUi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksBaseUi;->getCheckBoxMode()Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$BookmarkCheckBoxModeType;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$BookmarkCheckBoxModeType;->DELETE_CHECKBOX_MODE:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$BookmarkCheckBoxModeType;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0008

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 5

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v1, "Bookmarks"

    const-string v2, "onDestroyActionMode enter"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->mUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksBaseUi;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->access$200(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;)Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksBaseUi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksBaseUi;->getPathIndicatorSize()I

    move-result v1

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->mUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksBaseUi;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->access$200(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;)Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksBaseUi;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksBaseUi;->enableHistory(Z)V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->mUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksBaseUi;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->access$200(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;)Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksBaseUi;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksBaseUi;->showPathIndicator(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->mUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksBaseUi;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->access$200(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;)Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksBaseUi;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksBaseUi;->showSelectAllLayout(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->mUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksBaseUi;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->access$200(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;)Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksBaseUi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksBaseUi;->isSelectAllChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->mUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksBaseUi;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->access$200(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;)Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksBaseUi;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksBaseUi;->setSelectAllChecked(Z)V

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;

    #setter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->mCABShown:Z
    invoke-static {v1, v4}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->access$102(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;Z)Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;

    #setter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->mCount:I
    invoke-static {v1, v4}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->access$402(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;I)I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->mLongPressedObjects:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->access$500(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->mLongPressedObjects:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->access$500(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->mLongPressedObjects:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->access$500(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->setChecked(Z)V

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->mUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksBaseUi;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->access$200(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;)Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksBaseUi;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksBaseUi;->mShowBookmarksUiController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksUiController;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksUiController;->getChilderensize()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->mUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksBaseUi;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->access$200(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;)Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksBaseUi;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksBaseUi;->mShowBookmarksUiController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksUiController;

    invoke-interface {v1, v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksUiController;->getchild(I)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->setChecked(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->mUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksBaseUi;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->access$200(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;)Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksBaseUi;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->mNonEditableItems:I
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->access$800(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksBaseUi;->updateNonEditItems(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->mUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksBaseUi;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->access$200(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;)Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksBaseUi;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->mLongPressedObjects:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->access$500(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->mNonEditableItems:I
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->access$800(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksBaseUi;->updateEditableItems(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;

    #setter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->mNonEditableItems:I
    invoke-static {v1, v4}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->access$802(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;I)I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;

    #setter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->mNonEditableBookmarkSelectedCount:I
    invoke-static {v1, v4}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->access$902(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;I)I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;

    #setter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->mBookmarkSelectedCount:I
    invoke-static {v1, v4}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->access$1002(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;I)I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->mLongPressedObjects:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->access$500(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->notifyDataSetChanged()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->mMode:Landroid/view/ActionMode;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->mUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksBaseUi;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->access$200(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;)Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksBaseUi;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$BookmarkCheckBoxModeType;->NO_CHECKBOX_MODE:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$BookmarkCheckBoxModeType;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksBaseUi;->switchToCheckBoxMode(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$BookmarkCheckBoxModeType;)V

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 12

    const v11, 0x7f0a02f9

    const v10, 0x7f0a02f3

    const v9, 0x7f0a02f7

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v3, "Bookmarks"

    const-string v6, "onPrepareActionMode enter"

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    move v3, v4

    :goto_0
    return v3

    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->mActionModeTextView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v6}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->access$300(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;)Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c032f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v5, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->mCount:I
    invoke-static {v8}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->access$400(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->mUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksBaseUi;
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->access$200(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;)Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksBaseUi;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksBaseUi;->getCheckBoxMode()Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$BookmarkCheckBoxModeType;

    move-result-object v3

    sget-object v6, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$BookmarkCheckBoxModeType;->DELETE_CHECKBOX_MODE:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$BookmarkCheckBoxModeType;

    if-ne v3, v6, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->mLongPressedObjects:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->access$500(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->mLongPressedObjects:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->access$500(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    const v3, 0x7f0a02ef

    invoke-interface {p2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :goto_1
    move v3, v5

    goto :goto_0

    :cond_1
    const v3, 0x7f0a02ef

    invoke-interface {p2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->mLongPressedObjects:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->access$500(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->mLongPressedObjects:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->access$500(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;

    #calls: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->showAllCABMenuItems(Landroid/view/Menu;Z)V
    invoke-static {v3, p2, v4}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->access$600(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;Landroid/view/Menu;Z)V

    :cond_4
    invoke-interface {p2, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    if-nez v3, :cond_5

    move v3, v5

    goto/16 :goto_0

    :cond_5
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->mLongPressedObjects:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->access$500(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->mLongPressedObjects:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->access$500(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_8

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->mLongPressedObjects:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->access$500(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v5, :cond_f

    invoke-interface {p2, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p2, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v3, 0x7f0a02f5

    invoke-interface {p2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v3, 0x7f0a02f4

    invoke-interface {p2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v3, 0x7f0a02f2

    invoke-interface {p2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p2, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v3, 0x7f0a02f8

    invoke-interface {p2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v3, 0x7f0a02f6

    invoke-interface {p2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v3, 0x7f0a02fa

    invoke-interface {p2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_2
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->mLongPressedObjects:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->access$500(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->mLongPressedObjects:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->access$500(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->type()Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;

    move-result-object v3

    sget-object v6, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;->URL:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;

    if-ne v3, v6, :cond_9

    const/4 v1, 0x1

    :goto_3
    if-eqz v1, :cond_a

    if-eqz v0, :cond_a

    :cond_6
    if-nez v0, :cond_7

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;

    #calls: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->isEmergencyMode()Z
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->access$700(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;)Z

    move-result v3

    if-nez v3, :cond_b

    invoke-interface {p2, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_7
    :goto_4
    if-eqz v1, :cond_d

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->mLongPressedObjects:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->access$500(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->mNonEditableItems:I
    invoke-static {v6}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->access$800(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;)I

    move-result v6

    if-ne v3, v6, :cond_c

    invoke-interface {p2, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p2, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_8
    :goto_5
    move v3, v5

    goto/16 :goto_0

    :cond_9
    const/4 v0, 0x1

    goto :goto_3

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_b
    invoke-interface {p2, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_4

    :cond_c
    invoke-interface {p2, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p2, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_5

    :cond_d
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->mLongPressedObjects:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->access$500(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->mNonEditableItems:I
    invoke-static {v6}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->access$800(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;)I

    move-result v6

    if-ne v3, v6, :cond_e

    invoke-interface {p2, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p2, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_5

    :cond_e
    invoke-interface {p2, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p2, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_5

    :cond_f
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->mLongPressedObjects:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->access$500(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->type()Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;

    move-result-object v3

    sget-object v6, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;->URL:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;

    if-ne v3, v6, :cond_14

    const v3, 0x7f0a02f4

    invoke-interface {p2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v3, 0x7f0a02f2

    invoke-interface {p2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;

    #calls: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->isEmergencyMode()Z
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->access$700(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;)Z

    move-result v3

    if-nez v3, :cond_11

    invoke-interface {p2, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_6
    const v3, 0x7f0a02f8

    invoke-interface {p2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v3, 0x7f0a02fa

    invoke-interface {p2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->mLongPressedObjects:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->access$500(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v5, :cond_10

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->mLongPressedObjects:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->access$500(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->type()Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;

    move-result-object v3

    sget-object v6, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;->URL:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;

    if-ne v3, v6, :cond_10

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->mLongPressedObjects:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->access$500(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->url()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->isUrlPinned(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    const v3, 0x7f0a02f8

    invoke-interface {p2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_10
    :goto_7
    const v3, 0x7f0a02f6

    invoke-interface {p2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->mLongPressedObjects:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->access$500(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->editable()Z

    move-result v3

    if-nez v3, :cond_13

    const v3, 0x7f0a02f5

    invoke-interface {p2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p2, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p2, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_5

    :cond_11
    invoke-interface {p2, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_6

    :cond_12
    const v3, 0x7f0a02f8

    invoke-interface {p2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_7

    :cond_13
    invoke-interface {p2, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p2, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v3, 0x7f0a02f5

    invoke-interface {p2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_5

    :cond_14
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->mLongPressedObjects:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->access$500(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->editable()Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-interface {p2, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p2, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v3, 0x7f0a02f6

    invoke-interface {p2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_8
    const v3, 0x7f0a02f5

    invoke-interface {p2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v3, 0x7f0a02f4

    invoke-interface {p2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v3, 0x7f0a02f2

    invoke-interface {p2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p2, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v3, 0x7f0a02f8

    invoke-interface {p2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v3, 0x7f0a02fa

    invoke-interface {p2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_5

    :cond_15
    invoke-interface {p2, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p2, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v3, 0x7f0a02f6

    invoke-interface {p2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_8
.end method

.method public resetMenuTexts()V
    .locals 4

    const v3, 0x7f0c012d

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->mMode:Landroid/view/ActionMode;

    invoke-virtual {v1}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->mUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksBaseUi;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->access$200(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;)Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksBaseUi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksBaseUi;->getCheckBoxMode()Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$BookmarkCheckBoxModeType;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$BookmarkCheckBoxModeType;->DELETE_CHECKBOX_MODE:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$BookmarkCheckBoxModeType;

    if-ne v1, v2, :cond_1

    const v1, 0x7f0a02ef

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f0c0156

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0

    :cond_1
    const v1, 0x7f0a02f7

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f0c01d6

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    const v1, 0x7f0a02f3

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f0c0178

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    const v1, 0x7f0a02f5

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    const v1, 0x7f0a02f4

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f0c0056

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    const v1, 0x7f0a02f2

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f0c0125

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    const v1, 0x7f0a02f9

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f0c016a

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    const v1, 0x7f0a02f8

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f0c0057

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    const v1, 0x7f0a02f6

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    const v1, 0x7f0a02fa

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f0c012b

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto/16 :goto_0
.end method

.method public setTitle()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->mMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->mMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    :cond_0
    return-void
.end method

.method public stopActionMode()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->mMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->mMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$BookmarksActionModeCallback;->mMode:Landroid/view/ActionMode;

    :cond_0
    return-void
.end method
