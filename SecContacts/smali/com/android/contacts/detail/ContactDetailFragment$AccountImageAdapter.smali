.class public Lcom/android/contacts/detail/ContactDetailFragment$AccountImageAdapter;
.super Landroid/widget/BaseAdapter;
.source "ContactDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/detail/ContactDetailFragment;
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

.field private mAccountIntents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Intent;",
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

.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/contacts/detail/ContactDetailFragment;


# direct methods
.method public constructor <init>(Lcom/android/contacts/detail/ContactDetailFragment;Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment$AccountImageAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lcom/android/contacts/detail/ContactDetailFragment$AccountImageAdapter;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/contacts/detail/ContactDetailFragment$AccountImageAdapter;->mAccountIcons:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/android/contacts/detail/ContactDetailFragment$AccountImageAdapter;->mAccountNames:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/android/contacts/detail/ContactDetailFragment$AccountImageAdapter;->mAccountIntents:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$3800(Lcom/android/contacts/detail/ContactDetailFragment$AccountImageAdapter;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$AccountImageAdapter;->mAccountIntents:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/contacts/detail/ContactDetailFragment$AccountImageAdapter;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$AccountImageAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$AccountImageAdapter;->mAccountIcons:Ljava/util/ArrayList;

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

    const/4 v4, 0x0

    if-eqz p2, :cond_0

    move-object v0, p2

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/detail/ContactDetailFragment$ConnectionIconViewCache;

    :goto_0
    iget-object v3, v1, Lcom/android/contacts/detail/ContactDetailFragment$ConnectionIconViewCache;->iconImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$AccountImageAdapter;->mAccountIcons:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$AccountImageAdapter;->mAccountIntents:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/android/contacts/detail/ContactDetailFragment$ConnectionIconViewCache;->iconInterceptView:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, v1, Lcom/android/contacts/detail/ContactDetailFragment$ConnectionIconViewCache;->iconInterceptView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$AccountImageAdapter;->mAccountNames:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/android/contacts/detail/ContactDetailFragment$ConnectionIconViewCache;->iconInterceptView:Landroid/widget/ImageView;

    new-instance v3, Lcom/android/contacts/detail/ContactDetailFragment$AccountImageAdapter$1;

    invoke-direct {v3, p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment$AccountImageAdapter$1;-><init>(Lcom/android/contacts/detail/ContactDetailFragment$AccountImageAdapter;I)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    return-object v0

    :cond_0
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$AccountImageAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v2}, Lcom/android/contacts/detail/ContactDetailFragment;->access$600(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030030

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/contacts/detail/ContactDetailFragment$ConnectionIconViewCache;

    invoke-direct {v1, v0}, Lcom/android/contacts/detail/ContactDetailFragment$ConnectionIconViewCache;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v2, v1, Lcom/android/contacts/detail/ContactDetailFragment$ConnectionIconViewCache;->iconInterceptView:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, v1, Lcom/android/contacts/detail/ContactDetailFragment$ConnectionIconViewCache;->iconImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$AccountImageAdapter;->mAccountNames:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
