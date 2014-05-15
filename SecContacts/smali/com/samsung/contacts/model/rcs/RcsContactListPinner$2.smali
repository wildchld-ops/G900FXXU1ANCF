.class Lcom/samsung/contacts/model/rcs/RcsContactListPinner$2;
.super Landroid/content/AsyncQueryHandler;
.source "RcsContactListPinner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/contacts/model/rcs/RcsContactListPinner;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/model/rcs/RcsContactListPinner;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/model/rcs/RcsContactListPinner;Landroid/content/ContentResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/model/rcs/RcsContactListPinner$2;->this$0:Lcom/samsung/contacts/model/rcs/RcsContactListPinner;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 5

    const-string v3, "RcsContactListPinner"

    const-string v4, "mQueryHandler, onQueryComplete"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, p2

    check-cast v1, Landroid/net/Uri;

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_1
    iget-object v3, p0, Lcom/samsung/contacts/model/rcs/RcsContactListPinner$2;->this$0:Lcom/samsung/contacts/model/rcs/RcsContactListPinner;

    iget-object v3, v3, Lcom/samsung/contacts/model/rcs/RcsContactListPinner;->mIsRcsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/samsung/contacts/model/rcs/RcsContactListPinner$2;->this$0:Lcom/samsung/contacts/model/rcs/RcsContactListPinner;

    iget-object v3, v3, Lcom/samsung/contacts/model/rcs/RcsContactListPinner;->mUriToViewMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/samsung/contacts/model/rcs/RcsContactListPinner$2;->this$0:Lcom/samsung/contacts/model/rcs/RcsContactListPinner;

    invoke-virtual {v3, v2}, Lcom/samsung/contacts/model/rcs/RcsContactListPinner;->updateView(Landroid/view/View;)V

    :cond_2
    return-void
.end method
