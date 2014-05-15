.class Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$4;
.super Ljava/lang/Object;
.source "ShowBookmarksPhoneAdapter.java"

# interfaces
.implements Landroid/widget/HoverPopupWindow$HoverPopupListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->setFolderInfoPreview(Landroid/view/View;Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;Landroid/widget/ImageView;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;

.field final synthetic val$gListFolder:Landroid/view/View;

.field final synthetic val$gThumbFolder:Landroid/view/View;

.field final synthetic val$gThumbFolder3:Landroid/view/View;

.field final synthetic val$item:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$4;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$4;->val$item:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$4;->val$gListFolder:Landroid/view/View;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$4;->val$gThumbFolder:Landroid/view/View;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$4;->val$gThumbFolder3:Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSetContentView(Landroid/view/View;Landroid/widget/HoverPopupWindow;)Z
    .locals 31

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$4;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v6}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->access$300(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;)Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v15, 0x0

    const/16 v25, 0x0

    const/16 v17, 0x0

    const/4 v13, 0x4

    const/4 v14, 0x0

    const/4 v12, 0x1

    const/16 v27, 0x0

    const/16 v26, -0x1

    const/4 v6, 0x4

    new-array v0, v6, [Landroid/widget/ImageView;

    move-object/from16 v24, v0

    :try_start_0
    sget-object v4, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants;->BOOKMARKS_URI:Landroid/net/Uri;

    const/4 v6, 0x4

    new-array v5, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_ID"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "PARENT"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "URL"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-string v7, "FOLDER"

    aput-object v7, v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PARENT = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$4;->val$item:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->id()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const-string v8, "POSITION ASC"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v16

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$4;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->mUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksBaseUi;
    invoke-static {v6}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->access$200(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;)Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksBaseUi;

    move-result-object v6

    iget-object v6, v6, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksBaseUi;->mShowBookmarksUiController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksUiController;

    invoke-interface {v6}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksUiController;->getShowBookmarksMode()Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowMode;

    move-result-object v6

    sget-object v7, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowMode;->LIST_VIEW:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowMode;

    if-ne v6, v7, :cond_7

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$4;->val$gListFolder:Landroid/view/View;

    const v8, 0x7f0a0152

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    aput-object v6, v24, v7

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$4;->val$gListFolder:Landroid/view/View;

    const v8, 0x7f0a0153

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    aput-object v6, v24, v7

    const/4 v7, 0x2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$4;->val$gListFolder:Landroid/view/View;

    const v8, 0x7f0a0154

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    aput-object v6, v24, v7

    const/4 v7, 0x3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$4;->val$gListFolder:Landroid/view/View;

    const v8, 0x7f0a0155

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    aput-object v6, v24, v7

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$4;->val$gListFolder:Landroid/view/View;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/widget/HoverPopupWindow;->setContent(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$4;->val$gListFolder:Landroid/view/View;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$4;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v6}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->access$300(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;)Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090125

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v28

    const/16 v26, 0x1

    :goto_0
    const/16 v6, 0x53

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/widget/HoverPopupWindow;->setPopupGravity(I)V

    const v6, 0x10301f1

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/widget/HoverPopupWindow;->setAnimationStyle(I)V

    const/4 v6, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/widget/HoverPopupWindow;->setTouchablePopup(Z)V

    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_12

    move-object/from16 v4, v27

    :cond_0
    :try_start_1
    const-string v6, "_ID"

    invoke-interface {v15, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v15, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    int-to-long v0, v6

    move-wide/from16 v18, v0

    const-string v6, "URL"

    invoke-interface {v15, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v15, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    const-string v6, "FOLDER"

    invoke-interface {v15, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v15, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    if-eqz v23, :cond_c

    const/4 v6, 0x1

    move/from16 v0, v26

    if-ne v0, v6, :cond_b

    aget-object v6, v24, v17

    const v7, 0x7f020082

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    aget-object v6, v24, v17

    new-instance v7, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$4$1;

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v7, v0, v1, v2}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$4$1;-><init>(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$4;J)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v17, v17, 0x1

    :cond_1
    :goto_2
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x4

    move/from16 v0, v17

    if-lt v0, v6, :cond_0

    :cond_2
    add-int/lit8 v17, v17, -0x1

    const/16 v22, 0x0

    :goto_3
    move/from16 v0, v22

    move/from16 v1, v17

    if-gt v0, v1, :cond_13

    aget-object v6, v24, v22

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v22, v22, 0x1

    goto :goto_3

    :cond_3
    :try_start_2
    const-string v6, "Bookmark Hover"

    const-string v7, "FolderInfoPreview : Folder does not have child bookmarks"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v6, 0x1

    if-eqz v15, :cond_4

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_4
    if-eqz v25, :cond_5

    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    :cond_5
    move-object/from16 v4, v27

    :cond_6
    :goto_4
    return v6

    :cond_7
    const/4 v6, 0x4

    move/from16 v0, v16

    if-lt v0, v6, :cond_8

    const/4 v7, 0x0

    :try_start_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$4;->val$gThumbFolder:Landroid/view/View;

    const v8, 0x7f0a0152

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    aput-object v6, v24, v7

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$4;->val$gThumbFolder:Landroid/view/View;

    const v8, 0x7f0a0153

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    aput-object v6, v24, v7

    const/4 v7, 0x2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$4;->val$gThumbFolder:Landroid/view/View;

    const v8, 0x7f0a0154

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    aput-object v6, v24, v7

    const/4 v7, 0x3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$4;->val$gThumbFolder:Landroid/view/View;

    const v8, 0x7f0a0155

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    aput-object v6, v24, v7

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$4;->val$gThumbFolder:Landroid/view/View;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/widget/HoverPopupWindow;->setContent(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$4;->val$gThumbFolder:Landroid/view/View;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    :goto_5
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$4;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v6}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;->access$300(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;)Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090123

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v28

    const/16 v26, 0x0

    goto/16 :goto_0

    :cond_8
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$4;->val$gThumbFolder3:Landroid/view/View;

    const v8, 0x7f0a0152

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    aput-object v6, v24, v7

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$4;->val$gThumbFolder3:Landroid/view/View;

    const v8, 0x7f0a0153

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    aput-object v6, v24, v7

    const/4 v7, 0x2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$4;->val$gThumbFolder3:Landroid/view/View;

    const v8, 0x7f0a0154

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    aput-object v6, v24, v7

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$4;->val$gThumbFolder3:Landroid/view/View;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/widget/HoverPopupWindow;->setContent(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$4;->val$gThumbFolder3:Landroid/view/View;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setSoundEffectsEnabled(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_5

    :catch_0
    move-exception v21

    move-object/from16 v4, v27

    :goto_6
    :try_start_4
    const-string v6, "Bookmark Hover"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "get hover thumbnail DB operation is failed "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v15, :cond_9

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_9
    if-eqz v25, :cond_a

    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    :cond_a
    :goto_7
    const/4 v6, 0x1

    goto/16 :goto_4

    :cond_b
    :try_start_5
    aget-object v6, v24, v17

    const v7, 0x7f020081

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    :catch_1
    move-exception v21

    goto :goto_6

    :cond_c
    if-nez v20, :cond_e

    const-string v6, "Bookmark Hover"

    const-string v7, "FolderInfoPreview : childe URL is NULL"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    const/4 v6, 0x1

    if-eqz v15, :cond_d

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_d
    if-eqz v25, :cond_6

    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    goto/16 :goto_4

    :cond_e
    :try_start_6
    sget-object v6, Lcom/sec/android/app/sbrowser/provider/BookmarkWidgetProvider$BookmarkWidget;->CONTENT_URI:Landroid/net/Uri;

    const-wide/16 v7, 0x0

    invoke-static {v6, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    const/4 v6, 0x3

    new-array v5, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_id"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "widget_url"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "preview_thumbnail"

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v20, v7, v8

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v25

    if-eqz v25, :cond_f

    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_f

    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_f

    const-string v6, "preview_thumbnail"

    move-object/from16 v0, v25

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v25

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v29

    if-eqz v29, :cond_f

    const/4 v6, 0x0

    move-object/from16 v0, v29

    array-length v7, v0

    move-object/from16 v0, v29

    invoke-static {v0, v6, v7}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v5

    aget-object v30, v24, v17

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-static/range {v5 .. v11}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v6

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_f
    aget-object v6, v24, v17

    new-instance v7, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$4$2;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v7, v0, v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$4$2;-><init>(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter$4;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v17, v17, 0x1

    if-eqz v25, :cond_1

    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_2

    :catchall_0
    move-exception v6

    :goto_8
    if-eqz v15, :cond_10

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_10
    if-eqz v25, :cond_11

    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    :cond_11
    throw v6

    :cond_12
    :try_start_7
    const-string v6, "Bookmark Hover"

    const-string v7, "FolderInfoPreview : Folder does not have child bookmarks"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    move-object/from16 v4, v27

    :cond_13
    if-eqz v15, :cond_14

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_14
    if-eqz v25, :cond_a

    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    goto/16 :goto_7

    :catchall_1
    move-exception v6

    move-object/from16 v4, v27

    goto :goto_8
.end method
