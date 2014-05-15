.class Lcom/samsung/contacts/businesscard/BusinesscardViewerFragment$1;
.super Ljava/lang/Object;
.source "BusinesscardViewerFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/contacts/businesscard/BusinesscardViewerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/businesscard/BusinesscardViewerFragment;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/businesscard/BusinesscardViewerFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/businesscard/BusinesscardViewerFragment$1;->this$0:Lcom/samsung/contacts/businesscard/BusinesscardViewerFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardViewerFragment$1;->this$0:Lcom/samsung/contacts/businesscard/BusinesscardViewerFragment;

    iget v0, v0, Lcom/samsung/contacts/businesscard/BusinesscardViewerFragment;->mSortOrder:I

    packed-switch v0, :pswitch_data_0

    const-string v6, "_id DESC"

    :goto_0
    new-instance v0, Landroid/content/CursorLoader;

    iget-object v1, p0, Lcom/samsung/contacts/businesscard/BusinesscardViewerFragment$1;->this$0:Lcom/samsung/contacts/businesscard/BusinesscardViewerFragment;

    invoke-virtual {v1}, Lcom/samsung/contacts/businesscard/BusinesscardViewerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/contacts/businesscard/BusinesscardViewerFragment$1;->this$0:Lcom/samsung/contacts/businesscard/BusinesscardViewerFragment;

    iget-object v2, v2, Lcom/samsung/contacts/businesscard/BusinesscardViewerFragment;->mUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/samsung/contacts/businesscard/BusinesscardViewerFragment$1;->this$0:Lcom/samsung/contacts/businesscard/BusinesscardViewerFragment;

    iget-object v3, v3, Lcom/samsung/contacts/businesscard/BusinesscardViewerFragment;->mProjection:[Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/contacts/businesscard/BusinesscardViewerFragment$1;->this$0:Lcom/samsung/contacts/businesscard/BusinesscardViewerFragment;

    iget-object v4, v4, Lcom/samsung/contacts/businesscard/BusinesscardViewerFragment;->mSelection:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_0
    const-string v6, "_id ASC"

    goto :goto_0

    :pswitch_1
    const-string v6, "sort_key"

    goto :goto_0

    :pswitch_2
    const-string v6, "CASE WHEN data1 IS NULL THEN 1 ELSE 0 END, data1"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardViewerFragment$1;->this$0:Lcom/samsung/contacts/businesscard/BusinesscardViewerFragment;

    #getter for: Lcom/samsung/contacts/businesscard/BusinesscardViewerFragment;->mAdapter:Lcom/samsung/contacts/businesscard/BusinesscardViewerAdapter;
    invoke-static {v0}, Lcom/samsung/contacts/businesscard/BusinesscardViewerFragment;->access$000(Lcom/samsung/contacts/businesscard/BusinesscardViewerFragment;)Lcom/samsung/contacts/businesscard/BusinesscardViewerAdapter;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardViewerFragment$1;->this$0:Lcom/samsung/contacts/businesscard/BusinesscardViewerFragment;

    new-instance v1, Lcom/samsung/contacts/businesscard/BusinesscardViewerAdapter;

    iget-object v2, p0, Lcom/samsung/contacts/businesscard/BusinesscardViewerFragment$1;->this$0:Lcom/samsung/contacts/businesscard/BusinesscardViewerFragment;

    invoke-virtual {v2}, Lcom/samsung/contacts/businesscard/BusinesscardViewerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Lcom/samsung/contacts/businesscard/BusinesscardViewerAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    #setter for: Lcom/samsung/contacts/businesscard/BusinesscardViewerFragment;->mAdapter:Lcom/samsung/contacts/businesscard/BusinesscardViewerAdapter;
    invoke-static {v0, v1}, Lcom/samsung/contacts/businesscard/BusinesscardViewerFragment;->access$002(Lcom/samsung/contacts/businesscard/BusinesscardViewerFragment;Lcom/samsung/contacts/businesscard/BusinesscardViewerAdapter;)Lcom/samsung/contacts/businesscard/BusinesscardViewerAdapter;

    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardViewerFragment$1;->this$0:Lcom/samsung/contacts/businesscard/BusinesscardViewerFragment;

    #getter for: Lcom/samsung/contacts/businesscard/BusinesscardViewerFragment;->mAdapter:Lcom/samsung/contacts/businesscard/BusinesscardViewerAdapter;
    invoke-static {v0}, Lcom/samsung/contacts/businesscard/BusinesscardViewerFragment;->access$000(Lcom/samsung/contacts/businesscard/BusinesscardViewerFragment;)Lcom/samsung/contacts/businesscard/BusinesscardViewerAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/contacts/businesscard/BusinesscardViewerFragment$1;->this$0:Lcom/samsung/contacts/businesscard/BusinesscardViewerFragment;

    iget-object v1, v1, Lcom/samsung/contacts/businesscard/BusinesscardViewerFragment;->mVoLTEStateTrackerImpl:Lcom/samsung/dialer/impl/VoLTEStateTrackerImpl;

    invoke-virtual {v1}, Lcom/samsung/dialer/impl/VoLTEStateTrackerImpl;->isEnableVoLTE()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/businesscard/BusinesscardViewerAdapter;->setVolteEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardViewerFragment$1;->this$0:Lcom/samsung/contacts/businesscard/BusinesscardViewerFragment;

    #getter for: Lcom/samsung/contacts/businesscard/BusinesscardViewerFragment;->mPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lcom/samsung/contacts/businesscard/BusinesscardViewerFragment;->access$100(Lcom/samsung/contacts/businesscard/BusinesscardViewerFragment;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/contacts/businesscard/BusinesscardViewerFragment$1;->this$0:Lcom/samsung/contacts/businesscard/BusinesscardViewerFragment;

    #getter for: Lcom/samsung/contacts/businesscard/BusinesscardViewerFragment;->mAdapter:Lcom/samsung/contacts/businesscard/BusinesscardViewerAdapter;
    invoke-static {v1}, Lcom/samsung/contacts/businesscard/BusinesscardViewerFragment;->access$000(Lcom/samsung/contacts/businesscard/BusinesscardViewerFragment;)Lcom/samsung/contacts/businesscard/BusinesscardViewerAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    :goto_1
    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardViewerFragment$1;->this$0:Lcom/samsung/contacts/businesscard/BusinesscardViewerFragment;

    #getter for: Lcom/samsung/contacts/businesscard/BusinesscardViewerFragment;->mPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lcom/samsung/contacts/businesscard/BusinesscardViewerFragment;->access$100(Lcom/samsung/contacts/businesscard/BusinesscardViewerFragment;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/contacts/businesscard/BusinesscardViewerFragment$1;->this$0:Lcom/samsung/contacts/businesscard/BusinesscardViewerFragment;

    iget v1, v1, Lcom/samsung/contacts/businesscard/BusinesscardViewerFragment;->mCurrPostion:I

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardViewerFragment$1;->this$0:Lcom/samsung/contacts/businesscard/BusinesscardViewerFragment;

    #getter for: Lcom/samsung/contacts/businesscard/BusinesscardViewerFragment;->mAdapter:Lcom/samsung/contacts/businesscard/BusinesscardViewerAdapter;
    invoke-static {v0}, Lcom/samsung/contacts/businesscard/BusinesscardViewerFragment;->access$000(Lcom/samsung/contacts/businesscard/BusinesscardViewerFragment;)Lcom/samsung/contacts/businesscard/BusinesscardViewerAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/contacts/businesscard/BusinesscardViewerAdapter;->setCursor(Landroid/database/Cursor;)V

    goto :goto_1
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/contacts/businesscard/BusinesscardViewerFragment$1;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
