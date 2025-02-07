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

defmodule GoogleApi.Chat.V1.Model.GoogleAppsCardV1CardFixedFooter do
  @moduledoc """
  A persistent (sticky) footer that that appears at the bottom of the card. Setting `fixedFooter` without specifying a `primaryButton` or a `secondaryButton` causes an error. Chat apps support `fixedFooter` in [dialogs](https://developers.google.com/chat/how-tos/dialogs), but not in [card messages](https://developers.google.com/chat/api/guides/message-formats/cards).

  ## Attributes

  *   `primaryButton` (*type:* `GoogleApi.Chat.V1.Model.GoogleAppsCardV1Button.t`, *default:* `nil`) - The primary button of the fixed footer. The button must be a text button with text and color set.
  *   `secondaryButton` (*type:* `GoogleApi.Chat.V1.Model.GoogleAppsCardV1Button.t`, *default:* `nil`) - The secondary button of the fixed footer. The button must be a text button with text and color set. `primaryButton` must be set if `secondaryButton` is set.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :primaryButton => GoogleApi.Chat.V1.Model.GoogleAppsCardV1Button.t() | nil,
          :secondaryButton => GoogleApi.Chat.V1.Model.GoogleAppsCardV1Button.t() | nil
        }

  field(:primaryButton, as: GoogleApi.Chat.V1.Model.GoogleAppsCardV1Button)
  field(:secondaryButton, as: GoogleApi.Chat.V1.Model.GoogleAppsCardV1Button)
end

defimpl Poison.Decoder, for: GoogleApi.Chat.V1.Model.GoogleAppsCardV1CardFixedFooter do
  def decode(value, options) do
    GoogleApi.Chat.V1.Model.GoogleAppsCardV1CardFixedFooter.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Chat.V1.Model.GoogleAppsCardV1CardFixedFooter do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
