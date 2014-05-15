.class Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSpinnerAdapter$1;
.super Ljava/lang/Object;
.source "ReadingListSpinnerAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSpinnerAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSpinnerAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSpinnerAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSpinnerAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSpinnerAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const v2, 0x7f0a0061

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSpinnerAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSpinnerAdapter;

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSpinnerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c032d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSpinnerAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSpinnerAdapter;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSpinnerAdapter;->mContext:Landroid/content/Context;

    instance-of v2, v2, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSpinnerAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSpinnerAdapter;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSpinnerAdapter;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->setSelection(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
