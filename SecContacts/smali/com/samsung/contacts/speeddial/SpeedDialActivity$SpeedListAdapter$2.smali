.class Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$2;
.super Ljava/lang/Object;
.source "SpeedDialActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$2;->this$1:Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$2;->this$1:Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;

    iget-object v2, v2, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;->this$0:Lcom/samsung/contacts/speeddial/SpeedDialActivity;

    invoke-virtual {v2, v1}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->deleteSpdl(I)Z
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
