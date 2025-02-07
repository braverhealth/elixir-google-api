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

defmodule GoogleApi.CloudSearch.V1.Model.CaribouAttributeValue do
  @moduledoc """


  ## Attributes

  *   `booleanValue` (*type:* `boolean()`, *default:* `nil`) - Tags 1 through 15 are reserved for the most commonly used fields.
  *   `intValue` (*type:* `integer()`, *default:* `nil`) - 
  *   `longValue` (*type:* `String.t`, *default:* `nil`) - 
  *   `rawByteValue` (*type:* `String.t`, *default:* `nil`) - Generally, applications should avoid storing raw bytes and instead store structured data as protocol buffer extensions. This both reduces the amount of ad-hoc attribute parsing code as well as eliminates an intermediate copy of the data when deserializing the value. The rawByteValue field is mainly provided for compatibility with attributes stored before the introduction of the Attribute.Value.
  *   `stringValue` (*type:* `String.t`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :booleanValue => boolean() | nil,
          :intValue => integer() | nil,
          :longValue => String.t() | nil,
          :rawByteValue => String.t() | nil,
          :stringValue => String.t() | nil
        }

  field(:booleanValue)
  field(:intValue)
  field(:longValue)
  field(:rawByteValue)
  field(:stringValue)
end

defimpl Poison.Decoder, for: GoogleApi.CloudSearch.V1.Model.CaribouAttributeValue do
  def decode(value, options) do
    GoogleApi.CloudSearch.V1.Model.CaribouAttributeValue.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudSearch.V1.Model.CaribouAttributeValue do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
