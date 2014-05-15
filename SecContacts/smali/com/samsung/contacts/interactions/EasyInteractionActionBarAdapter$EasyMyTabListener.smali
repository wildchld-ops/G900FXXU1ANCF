.class public Lcom/samsung/contacts/interactions/EasyInteractionActionBarAdapter$EasyMyTabListener;
.super Lcom/samsung/contacts/interactions/InteractionActionBarAdapter$MyTabListener;
.source "EasyInteractionActionBarAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/contacts/interactions/EasyInteractionActionBarAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "EasyMyTabListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/interactions/EasyInteractionActionBarAdapter;


# direct methods
.method protected constructor <init>(Lcom/samsung/contacts/interactions/EasyInteractionActionBarAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/interactions/EasyInteractionActionBarAdapter$EasyMyTabListener;->this$0:Lcom/samsung/contacts/interactions/EasyInteractionActionBarAdapter;

    invoke-direct {p0, p1}, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter$MyTabListener;-><init>(Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;)V

    return-void
.end method


# virtual methods
.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 2

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/interactions/EasyInteractionActionBarAdapter$EasyMyTabListener;->this$0:Lcom/samsung/contacts/interactions/EasyInteractionActionBarAdapter;

    iget-object v0, v0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/samsung/contacts/interactions/InteractionTabActivity;

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->hideSoftKeyboardInFragment(I)V

    :cond_0
    return-void
.end method
