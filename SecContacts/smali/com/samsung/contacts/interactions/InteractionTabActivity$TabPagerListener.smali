.class Lcom/samsung/contacts/interactions/InteractionTabActivity$TabPagerListener;
.super Ljava/lang/Object;
.source "InteractionTabActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/contacts/interactions/InteractionTabActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabPagerListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/interactions/InteractionTabActivity;


# direct methods
.method private constructor <init>(Lcom/samsung/contacts/interactions/InteractionTabActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity$TabPagerListener;->this$0:Lcom/samsung/contacts/interactions/InteractionTabActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/contacts/interactions/InteractionTabActivity;Lcom/samsung/contacts/interactions/InteractionTabActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/contacts/interactions/InteractionTabActivity$TabPagerListener;-><init>(Lcom/samsung/contacts/interactions/InteractionTabActivity;)V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity$TabPagerListener;->this$0:Lcom/samsung/contacts/interactions/InteractionTabActivity;

    iget-object v0, v0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mActionBarAdapter:Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity$TabPagerListener;->this$0:Lcom/samsung/contacts/interactions/InteractionTabActivity;

    iget-object v1, v1, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mActionBarAdapter:Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;

    invoke-virtual {v1, p1}, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->getTabStateByPosition(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->setCurrentTab(I)V

    return-void
.end method
