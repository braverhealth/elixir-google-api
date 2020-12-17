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

defmodule GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2StorageConfig do
  @moduledoc """
  Shared message indicating Cloud storage type.

  ## Attributes

  *   `bigQueryOptions` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2BigQueryOptions.t`, *default:* `nil`) - BigQuery options.
  *   `cloudStorageOptions` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2CloudStorageOptions.t`, *default:* `nil`) - Google Cloud Storage options.
  *   `datastoreOptions` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DatastoreOptions.t`, *default:* `nil`) - Google Cloud Datastore options.
  *   `hybridOptions` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2HybridOptions.t`, *default:* `nil`) - Hybrid inspection options.
  *   `timespanConfig` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2TimespanConfig.t`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :bigQueryOptions => GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2BigQueryOptions.t(),
          :cloudStorageOptions =>
            GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2CloudStorageOptions.t(),
          :datastoreOptions => GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DatastoreOptions.t(),
          :hybridOptions => GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2HybridOptions.t(),
          :timespanConfig => GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2TimespanConfig.t()
        }

  field(:bigQueryOptions, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2BigQueryOptions)
  field(:cloudStorageOptions, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2CloudStorageOptions)
  field(:datastoreOptions, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DatastoreOptions)
  field(:hybridOptions, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2HybridOptions)
  field(:timespanConfig, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2TimespanConfig)
end

defimpl Poison.Decoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2StorageConfig do
  def decode(value, options) do
    GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2StorageConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2StorageConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
