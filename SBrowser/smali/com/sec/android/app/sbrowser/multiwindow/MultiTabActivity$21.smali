.class Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$21;
.super Ljava/lang/Object;
.source "MultiTabActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->addTabView(IIIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

.field final synthetic val$rl:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;Landroid/widget/LinearLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$21;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$21;->val$rl:Landroid/widget/LinearLayout;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 5

    const/4 v4, 0x0

    sget-boolean v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_PERSPECTIVE_UX_ENABLED:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$21;->val$rl:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$21;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getCurrentTabFocusView()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$21;->val$rl:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$21;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getCurrentTabGlowView()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$21;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    iput-object v1, v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mThumbnailKeyPressedTempGlowTab:Landroid/widget/ImageView;

    if-eqz p2, :cond_1

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$21;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mThumbnailFocused:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$21;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    iput-boolean v4, v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mThumbnailFocused:Z

    goto :goto_0
.end method
