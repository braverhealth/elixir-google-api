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

defmodule GoogleApi.CloudSearch.V1.Model.LabelUpdate do
  @moduledoc """
  HistoryRecord for changes associated with a label, namely: LABEL_CREATED LABEL_DELETED LABEL_RENAMED LABEL_UPDATED

  ## Attributes

  *   `canonicalName` (*type:* `String.t`, *default:* `nil`) - 
  *   `labelCreated` (*type:* `GoogleApi.CloudSearch.V1.Model.LabelCreated.t`, *default:* `nil`) - 
  *   `labelDeleted` (*type:* `GoogleApi.CloudSearch.V1.Model.LabelDeleted.t`, *default:* `nil`) - 
  *   `labelId` (*type:* `String.t`, *default:* `nil`) - 
  *   `labelRenamed` (*type:* `GoogleApi.CloudSearch.V1.Model.LabelRenamed.t`, *default:* `nil`) - 
  *   `labelUpdated` (*type:* `GoogleApi.CloudSearch.V1.Model.LabelUpdated.t`, *default:* `nil`) - 
  *   `syncId` (*type:* `integer()`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :canonicalName => String.t() | nil,
          :labelCreated => GoogleApi.CloudSearch.V1.Model.LabelCreated.t() | nil,
          :labelDeleted => GoogleApi.CloudSearch.V1.Model.LabelDeleted.t() | nil,
          :labelId => String.t() | nil,
          :labelRenamed => GoogleApi.CloudSearch.V1.Model.LabelRenamed.t() | nil,
          :labelUpdated => GoogleApi.CloudSearch.V1.Model.LabelUpdated.t() | nil,
          :syncId => integer() | nil
        }

  field(:canonicalName)
  field(:labelCreated, as: GoogleApi.CloudSearch.V1.Model.LabelCreated)
  field(:labelDeleted, as: GoogleApi.CloudSearch.V1.Model.LabelDeleted)
  field(:labelId)
  field(:labelRenamed, as: GoogleApi.CloudSearch.V1.Model.LabelRenamed)
  field(:labelUpdated, as: GoogleApi.CloudSearch.V1.Model.LabelUpdated)
  field(:syncId)
end

defimpl Poison.Decoder, for: GoogleApi.CloudSearch.V1.Model.LabelUpdate do
  def decode(value, options) do
    GoogleApi.CloudSearch.V1.Model.LabelUpdate.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudSearch.V1.Model.LabelUpdate do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
