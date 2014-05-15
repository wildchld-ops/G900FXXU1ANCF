.class Lcom/samsung/contacts/detail/LinkedContactAdapter$1;
.super Ljava/lang/Object;
.source "LinkedContactAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/contacts/detail/LinkedContactAdapter;->bindView(Landroid/view/View;Lcom/samsung/contacts/detail/LinkedContactEntry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/detail/LinkedContactAdapter;

.field final synthetic val$cache:Lcom/samsung/contacts/detail/LinkedContactAdapter$LinkedContactItemCache;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/detail/LinkedContactAdapter;Lcom/samsung/contacts/detail/LinkedContactAdapter$LinkedContactItemCache;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/detail/LinkedContactAdapter$1;->this$0:Lcom/samsung/contacts/detail/LinkedContactAdapter;

    iput-object p2, p0, Lcom/samsung/contacts/detail/LinkedContactAdapter$1;->val$cache:Lcom/samsung/contacts/detail/LinkedContactAdapter$LinkedContactItemCache;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    iget-object v2, p0, Lcom/samsung/contacts/detail/LinkedContactAdapter$1;->this$0:Lcom/samsung/contacts/detail/LinkedContactAdapter;

    #getter for: Lcom/samsung/contacts/detail/LinkedContactAdapter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/samsung/contacts/detail/LinkedContactAdapter;->access$000(Lcom/samsung/contacts/detail/LinkedContactAdapter;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/contacts/detail/LinkedContactAdapter$1;->val$cache:Lcom/samsung/contacts/detail/LinkedContactAdapter$LinkedContactItemCache;

    iget-wide v3, v3, Lcom/samsung/contacts/detail/LinkedContactAdapter$LinkedContactItemCache;->targetRawContactId:J

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/android/contacts/ContactsUtils;->loadProfileIntentWithRawContactId(Landroid/content/Context;JLcom/android/contacts/common/model/account/AccountType;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/contacts/detail/LinkedContactAdapter$1;->this$0:Lcom/samsung/contacts/detail/LinkedContactAdapter;

    #getter for: Lcom/samsung/contacts/detail/LinkedContactAdapter;->mFragment:Lcom/samsung/contacts/detail/LinkedContactFragment;
    invoke-static {v2}, Lcom/samsung/contacts/detail/LinkedContactAdapter;->access$100(Lcom/samsung/contacts/detail/LinkedContactAdapter;)Lcom/samsung/contacts/detail/LinkedContactFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/contacts/detail/LinkedContactFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
