.class Lcom/android/contacts/quickcontact/QuickContactActivity$12;
.super Ljava/lang/Object;
.source "QuickContactActivity.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/quickcontact/QuickContactActivity;
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
        "Lcom/samsung/contacts/model/rcs/RcsCaps;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$12;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Lcom/samsung/contacts/model/rcs/RcsCaps;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/samsung/contacts/model/rcs/RcsCapsLoader;

    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$12;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$12;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    #getter for: Lcom/android/contacts/quickcontact/QuickContactActivity;->mLookupUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$200(Lcom/android/contacts/quickcontact/QuickContactActivity;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/contacts/model/rcs/RcsCapsLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/samsung/contacts/model/rcs/RcsCaps;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/samsung/contacts/model/rcs/RcsCaps;",
            ">;",
            "Lcom/samsung/contacts/model/rcs/RcsCaps;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$12;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    #setter for: Lcom/android/contacts/quickcontact/QuickContactActivity;->mRcsCapsData:Lcom/samsung/contacts/model/rcs/RcsCaps;
    invoke-static {v0, p2}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$2102(Lcom/android/contacts/quickcontact/QuickContactActivity;Lcom/samsung/contacts/model/rcs/RcsCaps;)Lcom/samsung/contacts/model/rcs/RcsCaps;

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$12;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    #getter for: Lcom/android/contacts/quickcontact/QuickContactActivity;->mContact:Lcom/android/contacts/model/Contact;
    invoke-static {v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$2200(Lcom/android/contacts/quickcontact/QuickContactActivity;)Lcom/android/contacts/model/Contact;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$12;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$12;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    #getter for: Lcom/android/contacts/quickcontact/QuickContactActivity;->mContact:Lcom/android/contacts/model/Contact;
    invoke-static {v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$2200(Lcom/android/contacts/quickcontact/QuickContactActivity;)Lcom/android/contacts/model/Contact;

    move-result-object v1

    #calls: Lcom/android/contacts/quickcontact/QuickContactActivity;->bindData(Lcom/android/contacts/model/Contact;)V
    invoke-static {v0, v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$1100(Lcom/android/contacts/quickcontact/QuickContactActivity;Lcom/android/contacts/model/Contact;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/samsung/contacts/model/rcs/RcsCaps;

    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/quickcontact/QuickContactActivity$12;->onLoadFinished(Landroid/content/Loader;Lcom/samsung/contacts/model/rcs/RcsCaps;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/samsung/contacts/model/rcs/RcsCaps;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
