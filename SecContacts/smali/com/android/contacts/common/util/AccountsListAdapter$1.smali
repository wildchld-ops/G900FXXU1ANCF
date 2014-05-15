.class Lcom/android/contacts/common/util/AccountsListAdapter$1;
.super Ljava/lang/Object;
.source "AccountsListAdapter.java"

# interfaces
.implements Lcom/android/contacts/common/model/AccountTypeManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/common/util/AccountsListAdapter;-><init>(Landroid/content/Context;Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;Lcom/android/contacts/common/model/account/AccountWithDataSet;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/common/util/AccountsListAdapter;

.field final synthetic val$accountListFilter:Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;


# direct methods
.method constructor <init>(Lcom/android/contacts/common/util/AccountsListAdapter;Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/common/util/AccountsListAdapter$1;->this$0:Lcom/android/contacts/common/util/AccountsListAdapter;

    iput-object p2, p0, Lcom/android/contacts/common/util/AccountsListAdapter$1;->val$accountListFilter:Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
