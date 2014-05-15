.class Lcom/samsung/dialer/impl/DialerTutorialActivity$TabPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "DialerTutorialActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/dialer/impl/DialerTutorialActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabPagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/dialer/impl/DialerTutorialActivity;


# direct methods
.method private constructor <init>(Lcom/samsung/dialer/impl/DialerTutorialActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/dialer/impl/DialerTutorialActivity$TabPagerAdapter;->this$0:Lcom/samsung/dialer/impl/DialerTutorialActivity;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/dialer/impl/DialerTutorialActivity;Lcom/samsung/dialer/impl/DialerTutorialActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/dialer/impl/DialerTutorialActivity$TabPagerAdapter;-><init>(Lcom/samsung/dialer/impl/DialerTutorialActivity;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialActivity$TabPagerAdapter;->this$0:Lcom/samsung/dialer/impl/DialerTutorialActivity;

    iget-object v0, v0, Lcom/samsung/dialer/impl/DialerTutorialActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    check-cast p2, Landroid/app/Fragment;

    invoke-virtual {p2}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
