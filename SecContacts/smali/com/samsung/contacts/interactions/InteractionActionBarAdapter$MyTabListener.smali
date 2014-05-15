.class public Lcom/samsung/contacts/interactions/InteractionActionBarAdapter$MyTabListener;
.super Ljava/lang/Object;
.source "InteractionActionBarAdapter.java"

# interfaces
.implements Landroid/app/ActionBar$TabListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MyTabListener"
.end annotation


# instance fields
.field public mIgnoreTabSelected:Z

.field final synthetic this$0:Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;


# direct methods
.method protected constructor <init>(Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter$MyTabListener;->this$0:Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 1

    invoke-static {}, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter$MyTabListener;->this$0:Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;

    #calls: Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->sendAccessibilityEvent()V
    invoke-static {v0}, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->access$100(Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;)V

    :cond_0
    return-void
.end method

.method public onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter$MyTabListener;->this$0:Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;

    #getter for: Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->mFilterController:Lcom/android/contacts/common/list/ContactListFilterController;
    invoke-static {v0}, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->access$200(Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;)Lcom/android/contacts/common/list/ContactListFilterController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter$MyTabListener;->this$0:Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;

    #getter for: Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->mFilterController:Lcom/android/contacts/common/list/ContactListFilterController;
    invoke-static {v0}, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->access$200(Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;)Lcom/android/contacts/common/list/ContactListFilterController;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListFilterController;->setFilterType(I)V

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter$MyTabListener;->mIgnoreTabSelected:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter$MyTabListener;->this$0:Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;

    #getter for: Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->isUpdateTabPosition:Z
    invoke-static {v0}, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->access$300(Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter$MyTabListener;->this$0:Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter$MyTabListener;->this$0:Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;

    iget v1, v1, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->mCurrentTab:I

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->setCurrentTab(I)V

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter$MyTabListener;->this$0:Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;

    const/4 v1, 0x0

    #setter for: Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->isUpdateTabPosition:Z
    invoke-static {v0, v1}, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->access$302(Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;Z)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter$MyTabListener;->this$0:Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter$MyTabListener;->this$0:Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->getTabStateByPosition(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->setCurrentTab(I)V

    :cond_3
    invoke-static {}, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->access$000()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter$MyTabListener;->this$0:Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;

    #calls: Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->sendAccessibilityEvent()V
    invoke-static {v0}, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->access$100(Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;)V

    goto :goto_0
.end method

.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 3

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getTag()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter$MyTabListener;->this$0:Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;

    iget v0, v0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->mCurrentTab:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter$MyTabListener;->this$0:Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;

    iget-object v0, v0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/samsung/contacts/interactions/InteractionTabActivity;

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter$MyTabListener;->this$0:Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->getTabStateByPosition(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->hideSoftKeyboardInFragment(I)V

    :cond_1
    return-void
.end method
