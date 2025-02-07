# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.Language.V1.Model.Features do
  @moduledoc """
  All available features for sentiment, syntax, and semantic analysis. Setting each one to true will enable that specific analysis for the input.

  ## Attributes

  *   `classificationModelOptions` (*type:* `GoogleApi.Language.V1.Model.ClassificationModelOptions.t`, *default:* `nil`) - The model options to use for classification. Defaults to v1 options if not specified. Only used if `classify_text` is set to true.
  *   `classifyText` (*type:* `boolean()`, *default:* `nil`) - Classify the full document into categories.
  *   `extractDocumentSentiment` (*type:* `boolean()`, *default:* `nil`) - Extract document-level sentiment.
  *   `extractEntities` (*type:* `boolean()`, *default:* `nil`) - Extract entities.
  *   `extractEntitySentiment` (*type:* `boolean()`, *default:* `nil`) - Extract entities and their associated sentiment.
  *   `extractSyntax` (*type:* `boolean()`, *default:* `nil`) - Extract syntax information.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :classificationModelOptions =>
            GoogleApi.Language.V1.Model.ClassificationModelOptions.t() | nil,
          :classifyText => boolean() | nil,
          :extractDocumentSentiment => boolean() | nil,
          :extractEntities => boolean() | nil,
          :extractEntitySentiment => boolean() | nil,
          :extractSyntax => boolean() | nil
        }

  field(:classificationModelOptions, as: GoogleApi.Language.V1.Model.ClassificationModelOptions)
  field(:classifyText)
  field(:extractDocumentSentiment)
  field(:extractEntities)
  field(:extractEntitySentiment)
  field(:extractSyntax)
end

defimpl Poison.Decoder, for: GoogleApi.Language.V1.Model.Features do
  def decode(value, options) do
    GoogleApi.Language.V1.Model.Features.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Language.V1.Model.Features do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
