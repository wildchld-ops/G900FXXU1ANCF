.class public Lcom/samsung/contacts/menu/people/keypad/MessageCallMenu;
.super Lcom/samsung/contacts/menu/people/keypad/CMFCallMenu;
.source "MessageCallMenu.java"


# instance fields
.field private final PREFIX_MESSAGE_CALL:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/contacts/menu/people/keypad/CMFCallMenu;-><init>(Landroid/content/Context;)V

    const-string v0, "#"

    iput-object v0, p0, Lcom/samsung/contacts/menu/people/keypad/MessageCallMenu;->PREFIX_MESSAGE_CALL:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public execute()Z
    .locals 1

    const-string v0, "#"

    invoke-virtual {p0, v0}, Lcom/samsung/contacts/menu/people/keypad/MessageCallMenu;->placeCallExtraService(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method
