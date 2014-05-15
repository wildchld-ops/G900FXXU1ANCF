.class Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryHeaderCache;
.super Ljava/lang/Object;
.source "ContactHistoryListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/contacts/detail/ContactHistoryListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HistoryHeaderCache"
.end annotation


# instance fields
.field private headerViewTitle:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/samsung/contacts/detail/ContactHistoryListAdapter;


# direct methods
.method private constructor <init>(Lcom/samsung/contacts/detail/ContactHistoryListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryHeaderCache;->this$0:Lcom/samsung/contacts/detail/ContactHistoryListAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/contacts/detail/ContactHistoryListAdapter;Lcom/samsung/contacts/detail/ContactHistoryListAdapter$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryHeaderCache;-><init>(Lcom/samsung/contacts/detail/ContactHistoryListAdapter;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryHeaderCache;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryHeaderCache;->headerViewTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryHeaderCache;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryHeaderCache;->headerViewTitle:Landroid/widget/TextView;

    return-object p1
.end method
