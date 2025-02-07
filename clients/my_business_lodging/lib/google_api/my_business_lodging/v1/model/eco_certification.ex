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

defmodule GoogleApi.MyBusinessLodging.V1.Model.EcoCertification do
  @moduledoc """
  An eco certificate awarded to the hotel.

  ## Attributes

  *   `awarded` (*type:* `boolean()`, *default:* `nil`) - Whether the eco certificate was awarded or not.
  *   `awardedException` (*type:* `String.t`, *default:* `nil`) - Awarded exception.
  *   `ecoCertificate` (*type:* `String.t`, *default:* `nil`) - Required. The eco certificate.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :awarded => boolean() | nil,
          :awardedException => String.t() | nil,
          :ecoCertificate => String.t() | nil
        }

  field(:awarded)
  field(:awardedException)
  field(:ecoCertificate)
end

defimpl Poison.Decoder, for: GoogleApi.MyBusinessLodging.V1.Model.EcoCertification do
  def decode(value, options) do
    GoogleApi.MyBusinessLodging.V1.Model.EcoCertification.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.MyBusinessLodging.V1.Model.EcoCertification do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
