.class Lcom/samsung/contacts/detail/SelectContactInfoActivity$1;
.super Ljava/lang/Object;
.source "SelectContactInfoActivity.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/contacts/detail/SelectContactInfoActivity;
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
        "Lcom/android/contacts/model/Contact;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/detail/SelectContactInfoActivity;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/detail/SelectContactInfoActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity$1;->this$0:Lcom/samsung/contacts/detail/SelectContactInfoActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/contacts/model/Contact;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    const-string v0, "contactUri"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    new-instance v0, Lcom/android/contacts/model/ContactLoader;

    iget-object v1, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity$1;->this$0:Lcom/samsung/contacts/detail/SelectContactInfoActivity;

    const/4 v7, 0x1

    move v4, v3

    move v5, v3

    move v6, v3

    invoke-direct/range {v0 .. v7}, Lcom/android/contacts/model/ContactLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;ZZZZZ)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/android/contacts/model/Contact;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/contacts/model/Contact;",
            ">;",
            "Lcom/android/contacts/model/Contact;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity$1;->this$0:Lcom/samsung/contacts/detail/SelectContactInfoActivity;

    iget-object v0, v0, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {p2}, Lcom/android/contacts/model/Contact;->getRequestedUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SelectContactInfoActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Different URI: requested="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity$1;->this$0:Lcom/samsung/contacts/detail/SelectContactInfoActivity;

    iget-object v2, v2, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  actual="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/android/contacts/model/Contact;->isError()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to load contact"

    invoke-virtual {p2}, Lcom/android/contacts/model/Contact;->getException()Ljava/lang/Exception;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    invoke-virtual {p2}, Lcom/android/contacts/model/Contact;->isNotFound()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "SelectContactInfoActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No contact found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/contacts/model/Contact;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity$1;->this$0:Lcom/samsung/contacts/detail/SelectContactInfoActivity;

    invoke-virtual {v0}, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->finish()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity$1;->this$0:Lcom/samsung/contacts/detail/SelectContactInfoActivity;

    #setter for: Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mContactData:Lcom/android/contacts/model/Contact;
    invoke-static {v0, p2}, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->access$002(Lcom/samsung/contacts/detail/SelectContactInfoActivity;Lcom/android/contacts/model/Contact;)Lcom/android/contacts/model/Contact;

    iget-object v0, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity$1;->this$0:Lcom/samsung/contacts/detail/SelectContactInfoActivity;

    #calls: Lcom/samsung/contacts/detail/SelectContactInfoActivity;->bindData()V
    invoke-static {v0}, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->access$100(Lcom/samsung/contacts/detail/SelectContactInfoActivity;)V

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/android/contacts/model/Contact;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/contacts/detail/SelectContactInfoActivity$1;->onLoadFinished(Landroid/content/Loader;Lcom/android/contacts/model/Contact;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/contacts/model/Contact;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
