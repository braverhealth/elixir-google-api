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

defmodule GoogleApi.RealTimeBidding.V1.Model.DomainCallEvidence do
  @moduledoc """
  Number of HTTP calls made by a creative, broken down by domain.

  ## Attributes

  *   `topHttpCallDomains` (*type:* `list(GoogleApi.RealTimeBidding.V1.Model.DomainCalls.t)`, *default:* `nil`) - Breakdown of the most frequent domains called through HTTP by the creative.
  *   `totalHttpCallCount` (*type:* `integer()`, *default:* `nil`) - The total number of HTTP calls made by the creative, including but not limited to the number of calls in the top_http_call_domains.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :topHttpCallDomains => list(GoogleApi.RealTimeBidding.V1.Model.DomainCalls.t()) | nil,
          :totalHttpCallCount => integer() | nil
        }

  field(:topHttpCallDomains, as: GoogleApi.RealTimeBidding.V1.Model.DomainCalls, type: :list)
  field(:totalHttpCallCount)
end

defimpl Poison.Decoder, for: GoogleApi.RealTimeBidding.V1.Model.DomainCallEvidence do
  def decode(value, options) do
    GoogleApi.RealTimeBidding.V1.Model.DomainCallEvidence.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.RealTimeBidding.V1.Model.DomainCallEvidence do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
