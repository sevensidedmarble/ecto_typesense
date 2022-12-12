defmodule EctoTypesense.Collections do
  @moduledoc """
  Interact with Typesense collections from an Ecto schema.
  """

  def create(module) do
    collection(module)
    |> Typesense.Collections.create()
  end

  def retrieve(module) do
    collection(module)
    |> Typesense.Collections.retrieve()
  end

  def delete(module) do
    collection(module)
    |> Typesense.Collections.delete()
  end

  def collection(module) do
    module.__typesense_schema__(:name)
  end
end
