.class Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater$SearchViewClickListener;
.super Ljava/lang/Object;
.source "DialpadSearchViewUpdater.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchViewClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;


# direct methods
.method private constructor <init>(Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater$SearchViewClickListener;->this$0:Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater$SearchViewClickListener;-><init>(Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v1, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater$SearchViewClickListener;->this$0:Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;

    #getter for: Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->access$400(Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "0005"

    invoke-static {v1, v2}, Lcom/android/contacts/ContactsUtils;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/contacts/menu/people/keypad/AddContactsMenu;

    iget-object v1, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater$SearchViewClickListener;->this$0:Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;

    #getter for: Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->access$400(Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/contacts/menu/people/keypad/AddContactsMenu;-><init>(Landroid/content/Context;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/contacts/menu/people/keypad/AddContactsMenu;->execute()Z

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater$SearchViewClickListener;->this$0:Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;

    iget-object v2, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater$SearchViewClickListener;->this$0:Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;

    #getter for: Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->mMainItem:Lcom/samsung/dialer/dialpad/ContactItem;
    invoke-static {v2}, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->access$500(Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;)Lcom/samsung/dialer/dialpad/ContactItem;

    move-result-object v2

    #calls: Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->setNumberDigitsView(Lcom/samsung/dialer/dialpad/ContactItem;)V
    invoke-static {v1, v2}, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->access$600(Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;Lcom/samsung/dialer/dialpad/ContactItem;)V

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater$SearchViewClickListener;->this$0:Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;

    invoke-virtual {v1}, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->showSearchResult()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f0801b1 -> :sswitch_0
        0x7f0801b4 -> :sswitch_1
        0x7f0801b7 -> :sswitch_2
    .end sparse-switch
.end method
