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

defmodule GoogleApi.DFAReporting.V35.Model.Metro do
  @moduledoc """
  Contains information about a metro region that can be targeted by ads.

  ## Attributes

  *   `countryCode` (*type:* `String.t`, *default:* `nil`) - Country code of the country to which this metro region belongs.
  *   `countryDartId` (*type:* `String.t`, *default:* `nil`) - DART ID of the country to which this metro region belongs.
  *   `dartId` (*type:* `String.t`, *default:* `nil`) - DART ID of this metro region.
  *   `dmaId` (*type:* `String.t`, *default:* `nil`) - DMA ID of this metro region. This is the ID used for targeting and generating reports, and is equivalent to metro_code.
  *   `kind` (*type:* `String.t`, *default:* `nil`) - Identifies what kind of resource this is. Value: the fixed string "dfareporting#metro".
  *   `metroCode` (*type:* `String.t`, *default:* `nil`) - Metro code of this metro region. This is equivalent to dma_id.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Name of this metro region.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :countryCode => String.t() | nil,
          :countryDartId => String.t() | nil,
          :dartId => String.t() | nil,
          :dmaId => String.t() | nil,
          :kind => String.t() | nil,
          :metroCode => String.t() | nil,
          :name => String.t() | nil
        }

  field(:countryCode)
  field(:countryDartId)
  field(:dartId)
  field(:dmaId)
  field(:kind)
  field(:metroCode)
  field(:name)
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V35.Model.Metro do
  def decode(value, options) do
    GoogleApi.DFAReporting.V35.Model.Metro.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DFAReporting.V35.Model.Metro do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
