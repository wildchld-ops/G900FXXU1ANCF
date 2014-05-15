.class public final Lcom/samsung/contacts/interactions/InteractionContactTileLoaderFactory;
.super Lcom/android/contacts/common/ContactTileLoaderFactory;
.source "InteractionContactTileLoaderFactory.java"


# static fields
.field protected static final INTERACTION_COLUMNS_ALTERNATIVE:[Ljava/lang/String;

.field protected static final INTERACTION_COLUMNS_PRIMARY:[Ljava/lang/String;

.field private static mSelection:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v4

    const-string v1, "starred"

    aput-object v1, v0, v5

    const-string v1, "photo_uri"

    aput-object v1, v0, v6

    const-string v1, "lookup"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "contact_presence"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "contact_status"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "has_phone_number"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "has_email"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/contacts/interactions/InteractionContactTileLoaderFactory;->INTERACTION_COLUMNS_PRIMARY:[Ljava/lang/String;

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "display_name_alt"

    aput-object v1, v0, v4

    const-string v1, "starred"

    aput-object v1, v0, v5

    const-string v1, "photo_uri"

    aput-object v1, v0, v6

    const-string v1, "lookup"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "contact_presence"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "contact_status"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "has_phone_number"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "has_email"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/contacts/interactions/InteractionContactTileLoaderFactory;->INTERACTION_COLUMNS_ALTERNATIVE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/contacts/common/ContactTileLoaderFactory;-><init>()V

    return-void
.end method

.method public static createInteractionStrequentLoader(Landroid/content/Context;)Landroid/content/CursorLoader;
    .locals 8

    const/4 v5, 0x0

    new-instance v7, Lcom/android/contacts/common/preference/ContactsPreferences;

    invoke-direct {v7, p0}, Lcom/android/contacts/common/preference/ContactsPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7}, Lcom/android/contacts/common/preference/ContactsPreferences;->getDisplayOrder()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Landroid/content/CursorLoader;

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_STREQUENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/samsung/contacts/interactions/InteractionContactTileLoaderFactory;->INTERACTION_COLUMNS_PRIMARY:[Ljava/lang/String;

    sget-object v1, Lcom/samsung/contacts/interactions/InteractionContactTileLoaderFactory;->mSelection:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "display_name COLLATE NOCASE ASC"

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/content/CursorLoader;

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_STREQUENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/samsung/contacts/interactions/InteractionContactTileLoaderFactory;->INTERACTION_COLUMNS_ALTERNATIVE:[Ljava/lang/String;

    sget-object v1, Lcom/samsung/contacts/interactions/InteractionContactTileLoaderFactory;->mSelection:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "display_name_alt COLLATE NOCASE ASC"

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setSelection(I)V
    .locals 2

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/contacts/interactions/InteractionContactTileLoaderFactory;->mSelection:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/samsung/contacts/interactions/InteractionContactTileLoaderFactory;->mSelection:Ljava/lang/StringBuilder;

    sparse-switch p0, :sswitch_data_0

    sget-object v0, Lcom/samsung/contacts/interactions/InteractionContactTileLoaderFactory;->mSelection:Ljava/lang/StringBuilder;

    const-string v1, "(has_email>0 OR has_phone_number>0)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return-void

    :sswitch_0
    sget-object v0, Lcom/samsung/contacts/interactions/InteractionContactTileLoaderFactory;->mSelection:Ljava/lang/StringBuilder;

    const-string v1, "has_email>0 OR has_phone_number>0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :sswitch_1
    sget-object v0, Lcom/samsung/contacts/interactions/InteractionContactTileLoaderFactory;->mSelection:Ljava/lang/StringBuilder;

    const-string v1, "has_email>0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :sswitch_2
    sget-object v0, Lcom/samsung/contacts/interactions/InteractionContactTileLoaderFactory;->mSelection:Ljava/lang/StringBuilder;

    const-string v1, "has_phone_number>0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x96 -> :sswitch_0
        0xa0 -> :sswitch_1
        0xaa -> :sswitch_2
    .end sparse-switch
.end method
