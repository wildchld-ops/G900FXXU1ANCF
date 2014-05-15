.class Lcom/samsung/contacts/businesscard/BusinesscardListAdapter$5;
.super Ljava/lang/Object;
.source "BusinesscardListAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;->buildDialog(Ljava/util/ArrayList;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;

.field final synthetic val$dataList:[Ljava/lang/CharSequence;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;[Ljava/lang/CharSequence;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter$5;->this$0:Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;

    iput-object p2, p0, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter$5;->val$dataList:[Ljava/lang/CharSequence;

    iput p3, p0, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter$5;->val$type:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 11

    :try_start_0
    iget-object v6, p0, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter$5;->val$dataList:[Ljava/lang/CharSequence;

    aget-object v6, v6, p2

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget v6, p0, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter$5;->val$type:I

    packed-switch v6, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v6, p0, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter$5;->this$0:Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;

    #getter for: Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;->access$1400(Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/android/contacts/common/CallUtil;->getCallIntent(Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v4

    iget-object v6, p0, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter$5;->this$0:Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;

    #getter for: Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;->access$1500(Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v6, "BusinesscardListAdapter"

    const-string v7, "ActivityNotFoundException"

    invoke-static {v6, v7, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :pswitch_1
    :try_start_1
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.SENDTO"

    const-string v7, "smsto"

    const-string v8, ","

    const-string v9, "P"

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    const-string v9, ";"

    const-string v10, "W"

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {}, Lcom/android/contacts/ContactsUtils;->isKnoxMode()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Contact_EnableCallerIdSearch4Korea"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "com.android.mms"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    iget-object v6, p0, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter$5;->this$0:Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;

    #getter for: Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;->access$1600(Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_2
    const-string v6, "mailto"

    const/4 v7, 0x0

    invoke-static {v6, v0, v7}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.SENDTO"

    invoke-direct {v2, v6, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v6, p0, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter$5;->this$0:Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;

    #getter for: Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;->access$1700(Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
