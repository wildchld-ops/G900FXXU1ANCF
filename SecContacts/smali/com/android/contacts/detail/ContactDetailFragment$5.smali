.class Lcom/android/contacts/detail/ContactDetailFragment$5;
.super Ljava/lang/Object;
.source "ContactDetailFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/detail/ContactDetailFragment;->sortSnsFeeds()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/detail/ContactDetailFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/detail/ContactDetailFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment$5;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;)I
    .locals 10

    const-wide/16 v8, 0x0

    move-object v0, p1

    check-cast v0, Lcom/android/contacts/detail/ContactDetailFragment$SnsViewEntry;

    move-object v1, p2

    check-cast v1, Lcom/android/contacts/detail/ContactDetailFragment$SnsViewEntry;

    iget-wide v4, v1, Lcom/android/contacts/detail/ContactDetailFragment$SnsViewEntry;->timeStampInMs:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-wide v6, v0, Lcom/android/contacts/detail/ContactDetailFragment$SnsViewEntry;->timeStampInMs:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long v2, v4, v6

    cmp-long v4, v2, v8

    if-lez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    cmp-long v4, v2, v8

    if-nez v4, :cond_1

    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    const/4 v4, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;

    check-cast p2, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;

    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/detail/ContactDetailFragment$5;->compare(Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;)I

    move-result v0

    return v0
.end method
