.class Lcom/android/contacts/common/list/AccountFilterActivity$FilterListAdapter$2;
.super Ljava/lang/Object;
.source "AccountFilterActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/common/list/AccountFilterActivity$FilterListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/common/list/AccountFilterActivity$FilterListAdapter;


# direct methods
.method constructor <init>(Lcom/android/contacts/common/list/AccountFilterActivity$FilterListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/common/list/AccountFilterActivity$FilterListAdapter$2;->this$0:Lcom/android/contacts/common/list/AccountFilterActivity$FilterListAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/contacts/common/list/AccountFilterActivity$FilterListAdapter$2;->this$0:Lcom/android/contacts/common/list/AccountFilterActivity$FilterListAdapter;

    #getter for: Lcom/android/contacts/common/list/AccountFilterActivity$FilterListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/contacts/common/list/AccountFilterActivity$FilterListAdapter;->access$500(Lcom/android/contacts/common/list/AccountFilterActivity$FilterListAdapter;)Landroid/content/Context;

    move-result-object v0

    const-class v2, Lcom/android/contacts/common/list/CustomContactListFilterActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/android/contacts/common/list/AccountFilterActivity$FilterListAdapter$2;->this$0:Lcom/android/contacts/common/list/AccountFilterActivity$FilterListAdapter;

    #getter for: Lcom/android/contacts/common/list/AccountFilterActivity$FilterListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/contacts/common/list/AccountFilterActivity$FilterListAdapter;->access$500(Lcom/android/contacts/common/list/AccountFilterActivity$FilterListAdapter;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/AccountFilterActivity;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/common/list/AccountFilterActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
