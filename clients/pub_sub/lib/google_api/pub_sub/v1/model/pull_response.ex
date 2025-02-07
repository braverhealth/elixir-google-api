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

defmodule GoogleApi.PubSub.V1.Model.PullResponse do
  @moduledoc """
  Response for the `Pull` method.

  ## Attributes

  *   `receivedMessages` (*type:* `list(GoogleApi.PubSub.V1.Model.ReceivedMessage.t)`, *default:* `nil`) - Received Pub/Sub messages. The list will be empty if there are no more messages available in the backlog, or if no messages could be returned before the request timeout. For JSON, the response can be entirely empty. The Pub/Sub system may return fewer than the `maxMessages` requested even if there are more messages available in the backlog.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :receivedMessages => list(GoogleApi.PubSub.V1.Model.ReceivedMessage.t()) | nil
        }

  field(:receivedMessages, as: GoogleApi.PubSub.V1.Model.ReceivedMessage, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.PubSub.V1.Model.PullResponse do
  def decode(value, options) do
    GoogleApi.PubSub.V1.Model.PullResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.PubSub.V1.Model.PullResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
