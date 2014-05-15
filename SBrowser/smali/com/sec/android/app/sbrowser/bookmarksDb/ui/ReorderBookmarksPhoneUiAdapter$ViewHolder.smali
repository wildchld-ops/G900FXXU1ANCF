.class Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUiAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "ReorderBookmarksPhoneUiAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUiAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field private icon:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUiAdapter;

.field private title:Landroid/widget/TextView;

.field private v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUiAdapter;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUiAdapter$ViewHolder;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUiAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUiAdapter$ViewHolder;->v:Landroid/view/View;

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUiAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUiAdapter$ViewHolder;->title:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method getIcon()Landroid/widget/ImageView;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUiAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUiAdapter$ViewHolder;->v:Landroid/view/View;

    const v1, 0x7f0a00c3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUiAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUiAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    return-object v0
.end method

.method getTitle()Landroid/widget/TextView;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUiAdapter$ViewHolder;->title:Landroid/widget/TextView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUiAdapter$ViewHolder;->v:Landroid/view/View;

    const v1, 0x7f0a00c4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUiAdapter$ViewHolder;->title:Landroid/widget/TextView;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUiAdapter$ViewHolder;->title:Landroid/widget/TextView;

    return-object v0
.end method
