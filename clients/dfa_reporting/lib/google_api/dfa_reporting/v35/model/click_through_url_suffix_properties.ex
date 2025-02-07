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

defmodule GoogleApi.DFAReporting.V35.Model.ClickThroughUrlSuffixProperties do
  @moduledoc """
  Click Through URL Suffix settings.

  ## Attributes

  *   `clickThroughUrlSuffix` (*type:* `String.t`, *default:* `nil`) - Click-through URL suffix to apply to all ads in this entity's scope. Must be less than 128 characters long.
  *   `overrideInheritedSuffix` (*type:* `boolean()`, *default:* `nil`) - Whether this entity should override the inherited click-through URL suffix with its own defined value.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :clickThroughUrlSuffix => String.t() | nil,
          :overrideInheritedSuffix => boolean() | nil
        }

  field(:clickThroughUrlSuffix)
  field(:overrideInheritedSuffix)
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V35.Model.ClickThroughUrlSuffixProperties do
  def decode(value, options) do
    GoogleApi.DFAReporting.V35.Model.ClickThroughUrlSuffixProperties.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DFAReporting.V35.Model.ClickThroughUrlSuffixProperties do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
