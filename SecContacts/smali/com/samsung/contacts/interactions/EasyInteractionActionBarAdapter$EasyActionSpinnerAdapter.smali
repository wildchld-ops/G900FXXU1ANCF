.class Lcom/samsung/contacts/interactions/EasyInteractionActionBarAdapter$EasyActionSpinnerAdapter;
.super Lcom/samsung/contacts/interactions/InteractionActionBarAdapter$ActionSpinnerAdapter;
.source "EasyInteractionActionBarAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/contacts/interactions/EasyInteractionActionBarAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EasyActionSpinnerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/interactions/EasyInteractionActionBarAdapter;


# direct methods
.method public constructor <init>(Lcom/samsung/contacts/interactions/EasyInteractionActionBarAdapter;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/interactions/EasyInteractionActionBarAdapter$EasyActionSpinnerAdapter;->this$0:Lcom/samsung/contacts/interactions/EasyInteractionActionBarAdapter;

    invoke-direct {p0, p1, p2}, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter$ActionSpinnerAdapter;-><init>(Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected getDisplayValue(I)Ljava/lang/String;
    .locals 3

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/EasyInteractionActionBarAdapter$EasyActionSpinnerAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e006e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_1
    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/EasyInteractionActionBarAdapter$EasyActionSpinnerAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e01ad

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
