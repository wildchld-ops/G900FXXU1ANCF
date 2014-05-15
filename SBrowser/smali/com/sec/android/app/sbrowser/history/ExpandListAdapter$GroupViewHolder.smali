.class public Lcom/sec/android/app/sbrowser/history/ExpandListAdapter$GroupViewHolder;
.super Ljava/lang/Object;
.source "ExpandListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GroupViewHolder"
.end annotation


# instance fields
.field expandArrow:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;

.field tvGroup:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter$GroupViewHolder;->this$0:Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
