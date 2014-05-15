.class Lcom/samsung/contacts/interactions/InteractionActionBarAdapter$2;
.super Ljava/lang/Object;
.source "InteractionActionBarAdapter.java"

# interfaces
.implements Landroid/app/ActionBar$OnNavigationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->setupNavigationList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter$2;->this$0:Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNavigationItemSelected(IJ)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter$2;->this$0:Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;

    invoke-virtual {v0}, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->isMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter$2;->this$0:Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;

    iget-object v0, v0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter$2;->this$0:Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter$2;->this$0:Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;

    invoke-virtual {v1, p1}, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->getTabStateByPosition(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->setCurrentTab(I)V

    const/4 v0, 0x1

    return v0
.end method
