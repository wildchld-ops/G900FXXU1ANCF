.class Lcom/android/contacts/detail/ContactLoaderFragment$4;
.super Ljava/lang/Object;
.source "ContactLoaderFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/detail/ContactLoaderFragment;
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
        "Lcom/samsung/contacts/model/SnsFeeds;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/detail/ContactLoaderFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/detail/ContactLoaderFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/detail/ContactLoaderFragment$4;->this$0:Lcom/android/contacts/detail/ContactLoaderFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Lcom/samsung/contacts/model/SnsFeeds;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/samsung/contacts/model/SnsFeedsLoader;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment$4;->this$0:Lcom/android/contacts/detail/ContactLoaderFragment;

    #getter for: Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/contacts/detail/ContactLoaderFragment;->access$400(Lcom/android/contacts/detail/ContactLoaderFragment;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/detail/ContactLoaderFragment$4;->this$0:Lcom/android/contacts/detail/ContactLoaderFragment;

    #getter for: Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/contacts/detail/ContactLoaderFragment;->access$400(Lcom/android/contacts/detail/ContactLoaderFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/contacts/detail/SnsPhotoManager;->getInstance(Landroid/content/Context;)Lcom/samsung/contacts/detail/SnsPhotoManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/detail/ContactLoaderFragment$4;->this$0:Lcom/android/contacts/detail/ContactLoaderFragment;

    #getter for: Lcom/android/contacts/detail/ContactLoaderFragment;->mUpdatedSnsTypes:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/contacts/detail/ContactLoaderFragment;->access$200(Lcom/android/contacts/detail/ContactLoaderFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/contacts/model/SnsFeedsLoader;-><init>(Landroid/content/Context;Lcom/samsung/contacts/detail/SnsPhotoManager;Ljava/util/ArrayList;)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/samsung/contacts/model/SnsFeeds;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/samsung/contacts/model/SnsFeeds;",
            ">;",
            "Lcom/samsung/contacts/model/SnsFeeds;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment$4;->this$0:Lcom/android/contacts/detail/ContactLoaderFragment;

    #getter for: Lcom/android/contacts/detail/ContactLoaderFragment;->mListener:Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactLoaderFragment;->access$900(Lcom/android/contacts/detail/ContactLoaderFragment;)Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment$4;->this$0:Lcom/android/contacts/detail/ContactLoaderFragment;

    #getter for: Lcom/android/contacts/detail/ContactLoaderFragment;->mListener:Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactLoaderFragment;->access$900(Lcom/android/contacts/detail/ContactLoaderFragment;)Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;->onSnsFeedsLoaded(Lcom/samsung/contacts/model/SnsFeeds;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/samsung/contacts/model/SnsFeeds;

    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/detail/ContactLoaderFragment$4;->onLoadFinished(Landroid/content/Loader;Lcom/samsung/contacts/model/SnsFeeds;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/samsung/contacts/model/SnsFeeds;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
