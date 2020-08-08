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

defmodule GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItem do
  @moduledoc """
  Browsing carousel tile

  ## Attributes

  *   `description` (*type:* `String.t`, *default:* `nil`) - Optional. Description of the carousel item. Maximum of four lines of text.
  *   `footer` (*type:* `String.t`, *default:* `nil`) - Optional. Text that appears at the bottom of the Browse Carousel Card. Maximum of one line of text.
  *   `image` (*type:* `GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentMessageImage.t`, *default:* `nil`) - Optional. Hero image for the carousel item.
  *   `openUriAction` (*type:* `GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction.t`, *default:* `nil`) - Required. Action to present to the user.
  *   `title` (*type:* `String.t`, *default:* `nil`) - Required. Title of the carousel item. Maximum of two lines of text.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :description => String.t(),
          :footer => String.t(),
          :image =>
            GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentMessageImage.t(),
          :openUriAction =>
            GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction.t(),
          :title => String.t()
        }

  field(:description)
  field(:footer)
  field(:image, as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentMessageImage)

  field(:openUriAction,
    as:
      GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction
  )

  field(:title)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItem do
  def decode(value, options) do
    GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItem.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItem do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
