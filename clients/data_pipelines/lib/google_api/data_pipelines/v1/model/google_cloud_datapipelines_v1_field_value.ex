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

defmodule GoogleApi.DataPipelines.V1.Model.GoogleCloudDatapipelinesV1FieldValue do
  @moduledoc """
  A single value in a row. The value set must correspond to the correct type from the row's schema.

  ## Attributes

  *   `arrayValue` (*type:* `GoogleApi.DataPipelines.V1.Model.GoogleCloudDatapipelinesV1ArrayValue.t`, *default:* `nil`) - The array value of this field. Corresponds to TYPE_NAME_ARRAY in the schema.
  *   `atomicValue` (*type:* `GoogleApi.DataPipelines.V1.Model.GoogleCloudDatapipelinesV1AtomicValue.t`, *default:* `nil`) - The atomic value of this field. Must correspond to the correct atomic type in the schema.
  *   `enumValue` (*type:* `GoogleApi.DataPipelines.V1.Model.GoogleCloudDatapipelinesV1EnumerationValue.t`, *default:* `nil`) - The enum value of this field. Corresponds to TYPE_NAME_LOGICAL_TYPE in the schema if that logical type represents an `EnumerationType` type.
  *   `fixedBytesValue` (*type:* `GoogleApi.DataPipelines.V1.Model.GoogleCloudDatapipelinesV1FixedBytesValue.t`, *default:* `nil`) - The fixed-length byte collection of this field. Corresponds to TYPE_NAME_LOGICAL_TYPE in the schema if that logical type represents a `FixedBytes` type.
  *   `iterableValue` (*type:* `GoogleApi.DataPipelines.V1.Model.GoogleCloudDatapipelinesV1IterableValue.t`, *default:* `nil`) - The iterable value of this field. Corresponds to TYPE_NAME_ITERABLE in the schema.
  *   `mapValue` (*type:* `GoogleApi.DataPipelines.V1.Model.GoogleCloudDatapipelinesV1MapValue.t`, *default:* `nil`) - The map value of this field. Corresponds to TYPE_NAME_MAP in the schema.
  *   `rowValue` (*type:* `GoogleApi.DataPipelines.V1.Model.GoogleCloudDatapipelinesV1Row.t`, *default:* `nil`) - The row value of this field. Corresponds to TYPE_NAME_ROW in the schema. This row also holds to its own schema.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :arrayValue =>
            GoogleApi.DataPipelines.V1.Model.GoogleCloudDatapipelinesV1ArrayValue.t() | nil,
          :atomicValue =>
            GoogleApi.DataPipelines.V1.Model.GoogleCloudDatapipelinesV1AtomicValue.t() | nil,
          :enumValue =>
            GoogleApi.DataPipelines.V1.Model.GoogleCloudDatapipelinesV1EnumerationValue.t() | nil,
          :fixedBytesValue =>
            GoogleApi.DataPipelines.V1.Model.GoogleCloudDatapipelinesV1FixedBytesValue.t() | nil,
          :iterableValue =>
            GoogleApi.DataPipelines.V1.Model.GoogleCloudDatapipelinesV1IterableValue.t() | nil,
          :mapValue =>
            GoogleApi.DataPipelines.V1.Model.GoogleCloudDatapipelinesV1MapValue.t() | nil,
          :rowValue => GoogleApi.DataPipelines.V1.Model.GoogleCloudDatapipelinesV1Row.t() | nil
        }

  field(:arrayValue, as: GoogleApi.DataPipelines.V1.Model.GoogleCloudDatapipelinesV1ArrayValue)
  field(:atomicValue, as: GoogleApi.DataPipelines.V1.Model.GoogleCloudDatapipelinesV1AtomicValue)

  field(:enumValue,
    as: GoogleApi.DataPipelines.V1.Model.GoogleCloudDatapipelinesV1EnumerationValue
  )

  field(:fixedBytesValue,
    as: GoogleApi.DataPipelines.V1.Model.GoogleCloudDatapipelinesV1FixedBytesValue
  )

  field(:iterableValue,
    as: GoogleApi.DataPipelines.V1.Model.GoogleCloudDatapipelinesV1IterableValue
  )

  field(:mapValue, as: GoogleApi.DataPipelines.V1.Model.GoogleCloudDatapipelinesV1MapValue)
  field(:rowValue, as: GoogleApi.DataPipelines.V1.Model.GoogleCloudDatapipelinesV1Row)
end

defimpl Poison.Decoder, for: GoogleApi.DataPipelines.V1.Model.GoogleCloudDatapipelinesV1FieldValue do
  def decode(value, options) do
    GoogleApi.DataPipelines.V1.Model.GoogleCloudDatapipelinesV1FieldValue.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DataPipelines.V1.Model.GoogleCloudDatapipelinesV1FieldValue do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
