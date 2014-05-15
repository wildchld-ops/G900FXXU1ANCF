.class Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderBookmarksPhoneAdapter$1;
.super Ljava/lang/Object;
.source "MoveToFolderBookmarksPhoneAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderBookmarksPhoneAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderBookmarksPhoneAdapter;

.field final synthetic val$convertView:Landroid/view/View;

.field final synthetic val$obj:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderBookmarksPhoneAdapter;Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderBookmarksPhoneAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderBookmarksPhoneAdapter;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderBookmarksPhoneAdapter$1;->val$obj:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderBookmarksPhoneAdapter$1;->val$convertView:Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderBookmarksPhoneAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderBookmarksPhoneAdapter;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderBookmarksPhoneAdapter$1;->val$obj:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderBookmarksPhoneAdapter$1;->val$convertView:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderBookmarksPhoneAdapter;->handleRowClick(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;Landroid/view/View;)V

    return-void
.end method
