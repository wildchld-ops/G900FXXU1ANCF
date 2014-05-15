.class public Lcom/android/contacts/list/JoinContactListFragment$AccountImageAdapter;
.super Landroid/widget/BaseAdapter;
.source "JoinContactListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/JoinContactListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AccountImageAdapter"
.end annotation


# instance fields
.field private mAccountIcons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mAccountNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/contacts/list/JoinContactListFragment;


# direct methods
.method public constructor <init>(Lcom/android/contacts/list/JoinContactListFragment;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/contacts/list/JoinContactListFragment$AccountImageAdapter;->this$0:Lcom/android/contacts/list/JoinContactListFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lcom/android/contacts/list/JoinContactListFragment$AccountImageAdapter;->mAccountIcons:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/android/contacts/list/JoinContactListFragment$AccountImageAdapter;->mAccountNames:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/list/JoinContactListFragment$AccountImageAdapter;->mAccountIcons:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    if-eqz p2, :cond_0

    move-object v0, p2

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/list/JoinContactListFragment$ConnectionIconViewCache;

    :goto_0
    iget-object v3, v1, Lcom/android/contacts/list/JoinContactListFragment$ConnectionIconViewCache;->iconImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/contacts/list/JoinContactListFragment$AccountImageAdapter;->mAccountIcons:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, v1, Lcom/android/contacts/list/JoinContactListFragment$ConnectionIconViewCache;->iconImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/contacts/list/JoinContactListFragment$AccountImageAdapter;->mAccountNames:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-object v0

    :cond_0
    iget-object v2, p0, Lcom/android/contacts/list/JoinContactListFragment$AccountImageAdapter;->this$0:Lcom/android/contacts/list/JoinContactListFragment;

    iget-object v2, v2, Lcom/android/contacts/list/JoinContactListFragment;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0300ce

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/contacts/list/JoinContactListFragment$ConnectionIconViewCache;

    invoke-direct {v1, v0}, Lcom/android/contacts/list/JoinContactListFragment$ConnectionIconViewCache;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method
