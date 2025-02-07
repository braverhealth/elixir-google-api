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

defmodule GoogleApi.CloudSearch.V1.Model.WidgetMarkup do
  @moduledoc """


  ## Attributes

  *   `buttons` (*type:* `list(GoogleApi.CloudSearch.V1.Model.Button.t)`, *default:* `nil`) - buttons is also oneof data and only one of these fields should be set.
  *   `dateTimePicker` (*type:* `GoogleApi.CloudSearch.V1.Model.DateTimePicker.t`, *default:* `nil`) - 
  *   `divider` (*type:* `GoogleApi.CloudSearch.V1.Model.Divider.t`, *default:* `nil`) - 
  *   `grid` (*type:* `GoogleApi.CloudSearch.V1.Model.Grid.t`, *default:* `nil`) - 
  *   `horizontalAlignment` (*type:* `String.t`, *default:* `nil`) - The horizontal alignment of this widget.
  *   `image` (*type:* `GoogleApi.CloudSearch.V1.Model.Image.t`, *default:* `nil`) - 
  *   `imageKeyValue` (*type:* `GoogleApi.CloudSearch.V1.Model.ImageKeyValue.t`, *default:* `nil`) - 
  *   `keyValue` (*type:* `GoogleApi.CloudSearch.V1.Model.KeyValue.t`, *default:* `nil`) - 
  *   `menu` (*type:* `GoogleApi.CloudSearch.V1.Model.Menu.t`, *default:* `nil`) - Input Widgets
  *   `selectionControl` (*type:* `GoogleApi.CloudSearch.V1.Model.SelectionControl.t`, *default:* `nil`) - 
  *   `textField` (*type:* `GoogleApi.CloudSearch.V1.Model.TextField.t`, *default:* `nil`) - 
  *   `textKeyValue` (*type:* `GoogleApi.CloudSearch.V1.Model.TextKeyValue.t`, *default:* `nil`) - 
  *   `textParagraph` (*type:* `GoogleApi.CloudSearch.V1.Model.TextParagraph.t`, *default:* `nil`) - Read-only Widgets
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :buttons => list(GoogleApi.CloudSearch.V1.Model.Button.t()) | nil,
          :dateTimePicker => GoogleApi.CloudSearch.V1.Model.DateTimePicker.t() | nil,
          :divider => GoogleApi.CloudSearch.V1.Model.Divider.t() | nil,
          :grid => GoogleApi.CloudSearch.V1.Model.Grid.t() | nil,
          :horizontalAlignment => String.t() | nil,
          :image => GoogleApi.CloudSearch.V1.Model.Image.t() | nil,
          :imageKeyValue => GoogleApi.CloudSearch.V1.Model.ImageKeyValue.t() | nil,
          :keyValue => GoogleApi.CloudSearch.V1.Model.KeyValue.t() | nil,
          :menu => GoogleApi.CloudSearch.V1.Model.Menu.t() | nil,
          :selectionControl => GoogleApi.CloudSearch.V1.Model.SelectionControl.t() | nil,
          :textField => GoogleApi.CloudSearch.V1.Model.TextField.t() | nil,
          :textKeyValue => GoogleApi.CloudSearch.V1.Model.TextKeyValue.t() | nil,
          :textParagraph => GoogleApi.CloudSearch.V1.Model.TextParagraph.t() | nil
        }

  field(:buttons, as: GoogleApi.CloudSearch.V1.Model.Button, type: :list)
  field(:dateTimePicker, as: GoogleApi.CloudSearch.V1.Model.DateTimePicker)
  field(:divider, as: GoogleApi.CloudSearch.V1.Model.Divider)
  field(:grid, as: GoogleApi.CloudSearch.V1.Model.Grid)
  field(:horizontalAlignment)
  field(:image, as: GoogleApi.CloudSearch.V1.Model.Image)
  field(:imageKeyValue, as: GoogleApi.CloudSearch.V1.Model.ImageKeyValue)
  field(:keyValue, as: GoogleApi.CloudSearch.V1.Model.KeyValue)
  field(:menu, as: GoogleApi.CloudSearch.V1.Model.Menu)
  field(:selectionControl, as: GoogleApi.CloudSearch.V1.Model.SelectionControl)
  field(:textField, as: GoogleApi.CloudSearch.V1.Model.TextField)
  field(:textKeyValue, as: GoogleApi.CloudSearch.V1.Model.TextKeyValue)
  field(:textParagraph, as: GoogleApi.CloudSearch.V1.Model.TextParagraph)
end

defimpl Poison.Decoder, for: GoogleApi.CloudSearch.V1.Model.WidgetMarkup do
  def decode(value, options) do
    GoogleApi.CloudSearch.V1.Model.WidgetMarkup.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudSearch.V1.Model.WidgetMarkup do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
