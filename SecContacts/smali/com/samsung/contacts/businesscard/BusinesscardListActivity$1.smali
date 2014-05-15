.class Lcom/samsung/contacts/businesscard/BusinesscardListActivity$1;
.super Ljava/lang/Object;
.source "BusinesscardListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/contacts/businesscard/BusinesscardListActivity;->buildDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/businesscard/BusinesscardListActivity;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/businesscard/BusinesscardListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/businesscard/BusinesscardListActivity$1;->this$0:Lcom/samsung/contacts/businesscard/BusinesscardListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardListActivity$1;->this$0:Lcom/samsung/contacts/businesscard/BusinesscardListActivity;

    iget-object v0, v0, Lcom/samsung/contacts/businesscard/BusinesscardListActivity;->mPreference:Lcom/android/contacts/common/preference/ContactsPreferences;

    invoke-virtual {v0}, Lcom/android/contacts/common/preference/ContactsPreferences;->getBusinesscardSortOrder()I

    move-result v0

    if-eq v0, p2, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardListActivity$1;->this$0:Lcom/samsung/contacts/businesscard/BusinesscardListActivity;

    iget-object v0, v0, Lcom/samsung/contacts/businesscard/BusinesscardListActivity;->mPreference:Lcom/android/contacts/common/preference/ContactsPreferences;

    invoke-virtual {v0, p2}, Lcom/android/contacts/common/preference/ContactsPreferences;->setBusinessSortOrder(I)V

    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardListActivity$1;->this$0:Lcom/samsung/contacts/businesscard/BusinesscardListActivity;

    #getter for: Lcom/samsung/contacts/businesscard/BusinesscardListActivity;->mListFragment:Lcom/samsung/contacts/businesscard/BusinesscardListFragment;
    invoke-static {v0}, Lcom/samsung/contacts/businesscard/BusinesscardListActivity;->access$000(Lcom/samsung/contacts/businesscard/BusinesscardListActivity;)Lcom/samsung/contacts/businesscard/BusinesscardListFragment;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->reOrder(I)V

    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
