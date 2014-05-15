.class Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$2;
.super Ljava/lang/Object;
.source "ContactDetailFragment.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getSnsEntryView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

.field final synthetic val$entry:Lcom/android/contacts/detail/ContactDetailFragment$SnsViewEntry;


# direct methods
.method constructor <init>(Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;Lcom/android/contacts/detail/ContactDetailFragment$SnsViewEntry;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$2;->this$1:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    iput-object p2, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$2;->val$entry:Lcom/android/contacts/detail/ContactDetailFragment$SnsViewEntry;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

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
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$2;->val$entry:Lcom/android/contacts/detail/ContactDetailFragment$SnsViewEntry;

    iput p1, v0, Lcom/android/contacts/detail/ContactDetailFragment$SnsViewEntry;->currentPage:I

    return-void
.end method
