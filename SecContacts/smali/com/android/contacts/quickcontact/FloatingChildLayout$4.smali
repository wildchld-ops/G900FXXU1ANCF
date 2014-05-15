.class Lcom/android/contacts/quickcontact/FloatingChildLayout$4;
.super Ljava/lang/Object;
.source "FloatingChildLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/quickcontact/FloatingChildLayout;->setClickListeners(Landroid/view/View;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/quickcontact/FloatingChildLayout;


# direct methods
.method constructor <init>(Lcom/android/contacts/quickcontact/FloatingChildLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout$4;->this$0:Lcom/android/contacts/quickcontact/FloatingChildLayout;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_ReplacePackageAs"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.jcontacts"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "com.android.jcontacts"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    :goto_0
    const-string v1, "finishActivityOnSaveCompleted"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout$4;->this$0:Lcom/android/contacts/quickcontact/FloatingChildLayout;

    #getter for: Lcom/android/contacts/quickcontact/FloatingChildLayout;->mCreateExtras:Landroid/os/Bundle;
    invoke-static {v1}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->access$100(Lcom/android/contacts/quickcontact/FloatingChildLayout;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v1, "vnd.android.cursor.item/raw_contact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "hidecreatelabel"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout$4;->this$0:Lcom/android/contacts/quickcontact/FloatingChildLayout;

    #getter for: Lcom/android/contacts/quickcontact/FloatingChildLayout;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->access$500(Lcom/android/contacts/quickcontact/FloatingChildLayout;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-virtual {v1, v0, v3}, Lcom/android/contacts/quickcontact/QuickContactActivity;->startActivityForResult(Landroid/content/Intent;I)V

    iget-object v1, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout$4;->this$0:Lcom/android/contacts/quickcontact/FloatingChildLayout;

    #getter for: Lcom/android/contacts/quickcontact/FloatingChildLayout;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->access$600(Lcom/android/contacts/quickcontact/FloatingChildLayout;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-virtual {v1, v3}, Lcom/android/contacts/quickcontact/QuickContactActivity;->close(Z)V

    return-void

    :cond_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_ReplacePackageAs"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.samsung.contacts"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "com.samsung.contacts"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method
