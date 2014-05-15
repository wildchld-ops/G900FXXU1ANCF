.class public Lcom/fido/android/framework/types/JsonObjectAdapter;
.super Ljava/lang/Object;
.source "JsonObjectAdapter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GsonBuilder()Lcom/google/gson/GsonBuilder;
    .locals 3

    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    const-class v1, Lcom/google/gson/JsonObject;

    new-instance v2, Lcom/fido/android/framework/types/JsonObjectAdapter$1;

    invoke-direct {v2}, Lcom/fido/android/framework/types/JsonObjectAdapter$1;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    const-class v1, Lcom/google/gson/JsonObject;

    new-instance v2, Lcom/fido/android/framework/types/JsonObjectAdapter$2;

    invoke-direct {v2}, Lcom/fido/android/framework/types/JsonObjectAdapter$2;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->disableHtmlEscaping()Lcom/google/gson/GsonBuilder;

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->excludeFieldsWithoutExposeAnnotation()Lcom/google/gson/GsonBuilder;

    return-object v0
.end method
