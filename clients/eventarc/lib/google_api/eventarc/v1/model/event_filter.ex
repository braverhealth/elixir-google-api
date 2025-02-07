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

defmodule GoogleApi.Eventarc.V1.Model.EventFilter do
  @moduledoc """
  Filters events based on exact matches on the CloudEvents attributes.

  ## Attributes

  *   `attribute` (*type:* `String.t`, *default:* `nil`) - Required. The name of a CloudEvents attribute. Currently, only a subset of attributes are supported for filtering. All triggers MUST provide a filter for the 'type' attribute.
  *   `operator` (*type:* `String.t`, *default:* `nil`) - Optional. The operator used for matching the events with the value of the filter. If not specified, only events that have an exact key-value pair specified in the filter are matched. The only allowed value is `match-path-pattern`.
  *   `value` (*type:* `String.t`, *default:* `nil`) - Required. The value for the attribute.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :attribute => String.t() | nil,
          :operator => String.t() | nil,
          :value => String.t() | nil
        }

  field(:attribute)
  field(:operator)
  field(:value)
end

defimpl Poison.Decoder, for: GoogleApi.Eventarc.V1.Model.EventFilter do
  def decode(value, options) do
    GoogleApi.Eventarc.V1.Model.EventFilter.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Eventarc.V1.Model.EventFilter do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
