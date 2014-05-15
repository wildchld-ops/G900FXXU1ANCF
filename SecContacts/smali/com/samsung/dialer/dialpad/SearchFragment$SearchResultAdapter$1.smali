.class Lcom/samsung/dialer/dialpad/SearchFragment$SearchResultAdapter$1;
.super Ljava/lang/Object;
.source "SearchFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/dialer/dialpad/SearchFragment$SearchResultAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/dialer/dialpad/SearchFragment$SearchResultAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/dialer/dialpad/SearchFragment$SearchResultAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/dialer/dialpad/SearchFragment$SearchResultAdapter$1;->this$1:Lcom/samsung/dialer/dialpad/SearchFragment$SearchResultAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    new-instance v0, Lcom/samsung/contacts/menu/people/keypad/AddContactsMenu;

    iget-object v1, p0, Lcom/samsung/dialer/dialpad/SearchFragment$SearchResultAdapter$1;->this$1:Lcom/samsung/dialer/dialpad/SearchFragment$SearchResultAdapter;

    iget-object v1, v1, Lcom/samsung/dialer/dialpad/SearchFragment$SearchResultAdapter;->this$0:Lcom/samsung/dialer/dialpad/SearchFragment;

    invoke-virtual {v1}, Lcom/samsung/dialer/dialpad/SearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/contacts/menu/people/keypad/AddContactsMenu;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/samsung/contacts/menu/people/keypad/AddContactsMenu;->execute()Z

    return-void
.end method
