.class Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryHeaderView;
.super Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryView;
.source "ContactHistoryListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/contacts/detail/ContactHistoryListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HistoryHeaderView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/detail/ContactHistoryListAdapter;

.field private final title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/detail/ContactHistoryListAdapter;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryHeaderView;->this$0:Lcom/samsung/contacts/detail/ContactHistoryListAdapter;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryView;-><init>(Lcom/samsung/contacts/detail/ContactHistoryListAdapter;I)V

    iput-object p2, p0, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryHeaderView;->title:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryView;->isEnabled:Z

    return-void
.end method

.method static synthetic access$1600(Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryHeaderView;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryHeaderView;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryHeaderView;->title:Ljava/lang/String;

    return-object v0
.end method
