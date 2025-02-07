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

defmodule GoogleApi.BigQuery.V2.Model.SparkStatistics do
  @moduledoc """


  ## Attributes

  *   `endpoints` (*type:* `map()`, *default:* `nil`) - [Output-only] Endpoints generated for the Spark job.
  *   `logging_info` (*type:* `GoogleApi.BigQuery.V2.Model.SparkLoggingInfo.t`, *default:* `nil`) - [Output-only] Logging info is used to generate a link to Cloud Logging.
  *   `spark_job_id` (*type:* `String.t`, *default:* `nil`) - [Output-only] Spark job id if a Spark job is created successfully.
  *   `spark_job_location` (*type:* `String.t`, *default:* `nil`) - [Output-only] Location where the Spark job is executed.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :endpoints => map() | nil,
          :logging_info => GoogleApi.BigQuery.V2.Model.SparkLoggingInfo.t() | nil,
          :spark_job_id => String.t() | nil,
          :spark_job_location => String.t() | nil
        }

  field(:endpoints, type: :map)
  field(:logging_info, as: GoogleApi.BigQuery.V2.Model.SparkLoggingInfo)
  field(:spark_job_id)
  field(:spark_job_location)
end

defimpl Poison.Decoder, for: GoogleApi.BigQuery.V2.Model.SparkStatistics do
  def decode(value, options) do
    GoogleApi.BigQuery.V2.Model.SparkStatistics.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigQuery.V2.Model.SparkStatistics do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
