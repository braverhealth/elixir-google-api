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

defmodule GoogleApi.Firestore.V1beta1.Model.RunQueryResponse do
  @moduledoc """
  The response for Firestore.RunQuery.

  ## Attributes

  *   `document` (*type:* `GoogleApi.Firestore.V1beta1.Model.Document.t`, *default:* `nil`) - A query result, not set when reporting partial progress.
  *   `done` (*type:* `boolean()`, *default:* `nil`) - If present, Firestore has completely finished the request and no more documents will be returned.
  *   `readTime` (*type:* `DateTime.t`, *default:* `nil`) - The time at which the document was read. This may be monotonically increasing; in this case, the previous documents in the result stream are guaranteed not to have changed between their `read_time` and this one. If the query returns no results, a response with `read_time` and no `document` will be sent, and this represents the time at which the query was run.
  *   `skippedResults` (*type:* `integer()`, *default:* `nil`) - The number of results that have been skipped due to an offset between the last response and the current response.
  *   `transaction` (*type:* `String.t`, *default:* `nil`) - The transaction that was started as part of this request. Can only be set in the first response, and only if RunQueryRequest.new_transaction was set in the request. If set, no other fields will be set in this response.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :document => GoogleApi.Firestore.V1beta1.Model.Document.t() | nil,
          :done => boolean() | nil,
          :readTime => DateTime.t() | nil,
          :skippedResults => integer() | nil,
          :transaction => String.t() | nil
        }

  field(:document, as: GoogleApi.Firestore.V1beta1.Model.Document)
  field(:done)
  field(:readTime, as: DateTime)
  field(:skippedResults)
  field(:transaction)
end

defimpl Poison.Decoder, for: GoogleApi.Firestore.V1beta1.Model.RunQueryResponse do
  def decode(value, options) do
    GoogleApi.Firestore.V1beta1.Model.RunQueryResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Firestore.V1beta1.Model.RunQueryResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
