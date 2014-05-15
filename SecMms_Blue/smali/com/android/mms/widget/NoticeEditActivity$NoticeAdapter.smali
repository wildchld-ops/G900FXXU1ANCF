.class Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter;
.super Landroid/widget/BaseAdapter;
.source "NoticeEditActivity.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwDndController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/widget/NoticeEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NoticeAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private context:Landroid/app/Activity;

.field private mInflater:Landroid/view/LayoutInflater;

.field private noticeConversationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/widget/NoticeEditActivity$NoticeWidgetData;",
            ">;"
        }
    .end annotation
.end field

.field private noticeConversationListClone:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/widget/NoticeEditActivity$NoticeWidgetData;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/mms/widget/NoticeEditActivity;


# direct methods
.method public constructor <init>(Lcom/android/mms/widget/NoticeEditActivity;Landroid/app/Activity;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/widget/NoticeEditActivity$NoticeWidgetData;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/widget/NoticeEditActivity$NoticeWidgetData;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter;->this$0:Lcom/android/mms/widget/NoticeEditActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter;->context:Landroid/app/Activity;

    iget-object v0, p0, Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter;->context:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput-object p3, p0, Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter;->noticeConversationList:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter;->noticeConversationListClone:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter;->noticeConversationList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter;->noticeConversationListClone:Ljava/util/ArrayList;

    return-object v0
.end method

.method private drawEditScreen(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    new-instance v3, Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter$ViewHolder;

    invoke-direct {v3, p0}, Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter$ViewHolder;-><init>(Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter;)V

    move-object v2, p2

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter;->noticeConversationList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/widget/NoticeEditActivity$NoticeWidgetData;

    if-eqz v0, :cond_1

    if-nez v2, :cond_0

    iget-object v4, p0, Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f0400b2

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    :cond_0
    const v4, 0x7f0b013c

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter$ViewHolder;->contact_name:Landroid/widget/TextView;

    const v4, 0x7f0b013b

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v3, Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter$ViewHolder;->grid_contact_photo:Landroid/widget/ImageView;

    iget-object v4, v3, Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter$ViewHolder;->contact_name:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/android/mms/widget/NoticeEditActivity$NoticeWidgetData;->getContactName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter;->this$0:Lcom/android/mms/widget/NoticeEditActivity;

    invoke-virtual {v0}, Lcom/android/mms/widget/NoticeEditActivity$NoticeWidgetData;->getPhoto()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/mms/widget/NoticeEditActivity;->byteArrayToBitmap([B)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v4, v3, Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter$ViewHolder;->grid_contact_photo:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    return-object v2
.end method

.method private isChanged()Z
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter;->noticeConversationList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter;->noticeConversationList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/widget/NoticeEditActivity$NoticeWidgetData;

    invoke-virtual {v1}, Lcom/android/mms/widget/NoticeEditActivity$NoticeWidgetData;->getId()I

    move-result v2

    iget-object v1, p0, Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter;->noticeConversationListClone:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/widget/NoticeEditActivity$NoticeWidgetData;

    invoke-virtual {v1}, Lcom/android/mms/widget/NoticeEditActivity$NoticeWidgetData;->getId()I

    move-result v1

    if-eq v2, v1, :cond_0

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public allowDrag(I)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public allowDrop(II)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public dropDone(II)V
    .locals 3

    iget-object v1, p0, Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter;->noticeConversationList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/widget/NoticeEditActivity$NoticeWidgetData;

    iget-object v1, p0, Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter;->noticeConversationList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter;->noticeConversationList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter;->notifyDataSetChanged()V

    invoke-direct {p0}, Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter;->isChanged()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter;->this$0:Lcom/android/mms/widget/NoticeEditActivity;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/mms/widget/NoticeEditActivity;->isChanged:Z

    iget-object v1, p0, Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter;->this$0:Lcom/android/mms/widget/NoticeEditActivity;

    invoke-virtual {v1}, Lcom/android/mms/widget/NoticeEditActivity;->invalidateOptionsMenu()V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter;->this$0:Lcom/android/mms/widget/NoticeEditActivity;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/mms/widget/NoticeEditActivity;->isChanged:Z

    iget-object v1, p0, Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter;->this$0:Lcom/android/mms/widget/NoticeEditActivity;

    invoke-virtual {v1}, Lcom/android/mms/widget/NoticeEditActivity;->invalidateOptionsMenu()V

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter;->noticeConversationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/android/mms/widget/NoticeEditActivity$NoticeWidgetData;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter;->noticeConversationList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/widget/NoticeEditActivity$NoticeWidgetData;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter;->getItem(I)Lcom/android/mms/widget/NoticeEditActivity$NoticeWidgetData;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    iget-object v0, p0, Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter;->noticeConversationList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/widget/NoticeEditActivity$NoticeWidgetData;

    invoke-virtual {v0}, Lcom/android/mms/widget/NoticeEditActivity$NoticeWidgetData;->getId()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getNoticeList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/widget/NoticeEditActivity$NoticeWidgetData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter;->noticeConversationList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter;->drawEditScreen(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
