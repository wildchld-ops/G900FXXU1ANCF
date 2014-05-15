.class Lcom/android/contacts/detail/ContactDetailFragment$SnsViewCache;
.super Ljava/lang/Object;
.source "ContactDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/detail/ContactDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SnsViewCache"
.end annotation


# instance fields
.field public final accountIcon:Landroid/widget/ImageView;

.field public final container:Landroid/view/View;

.field public final like:Landroid/widget/TextView;

.field public final likeIcon:Landroid/widget/ImageView;

.field public final message:Landroid/widget/TextView;

.field public final optionalInfoContainer:Landroid/view/View;

.field public final pager:Landroid/support/v4/view/ViewPager;

.field public final pagerContainer:Landroid/view/View;

.field public final place:Landroid/widget/TextView;

.field public final placeContainer:Landroid/view/View;

.field public final reply:Landroid/widget/TextView;

.field public final replyIcon:Landroid/widget/ImageView;

.field public final timeStamp:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f08010f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$SnsViewCache;->container:Landroid/view/View;

    const v0, 0x7f080110

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$SnsViewCache;->accountIcon:Landroid/widget/ImageView;

    const v0, 0x7f080111

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$SnsViewCache;->message:Landroid/widget/TextView;

    const v0, 0x7f080112

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$SnsViewCache;->placeContainer:Landroid/view/View;

    const v0, 0x7f080113

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$SnsViewCache;->place:Landroid/widget/TextView;

    const v0, 0x7f080114

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$SnsViewCache;->pagerContainer:Landroid/view/View;

    const v0, 0x7f080059

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$SnsViewCache;->pager:Landroid/support/v4/view/ViewPager;

    const v0, 0x7f080115

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$SnsViewCache;->optionalInfoContainer:Landroid/view/View;

    const v0, 0x7f080116

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$SnsViewCache;->likeIcon:Landroid/widget/ImageView;

    const v0, 0x7f080117

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$SnsViewCache;->like:Landroid/widget/TextView;

    const v0, 0x7f080118

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$SnsViewCache;->replyIcon:Landroid/widget/ImageView;

    const v0, 0x7f080119

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$SnsViewCache;->reply:Landroid/widget/TextView;

    const v0, 0x7f08011a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$SnsViewCache;->timeStamp:Landroid/widget/TextView;

    return-void
.end method
