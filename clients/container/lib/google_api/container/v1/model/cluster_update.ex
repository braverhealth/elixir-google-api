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

defmodule GoogleApi.Container.V1.Model.ClusterUpdate do
  @moduledoc """
  ClusterUpdate describes an update to the cluster. Exactly one update can be applied to a cluster with each request, so at most one field can be provided.

  ## Attributes

  *   `desiredAddonsConfig` (*type:* `GoogleApi.Container.V1.Model.AddonsConfig.t`, *default:* `nil`) - Configurations for the various addons available to run in the cluster.
  *   `desiredAuthenticatorGroupsConfig` (*type:* `GoogleApi.Container.V1.Model.AuthenticatorGroupsConfig.t`, *default:* `nil`) - The desired authenticator groups config for the cluster.
  *   `desiredAutopilot` (*type:* `GoogleApi.Container.V1.Model.Autopilot.t`, *default:* `nil`) - The desired Autopilot configuration for the cluster.
  *   `desiredBinaryAuthorization` (*type:* `GoogleApi.Container.V1.Model.BinaryAuthorization.t`, *default:* `nil`) - The desired configuration options for the Binary Authorization feature.
  *   `desiredClusterAutoscaling` (*type:* `GoogleApi.Container.V1.Model.ClusterAutoscaling.t`, *default:* `nil`) - Cluster-level autoscaling configuration.
  *   `desiredDatabaseEncryption` (*type:* `GoogleApi.Container.V1.Model.DatabaseEncryption.t`, *default:* `nil`) - Configuration of etcd encryption.
  *   `desiredDatapathProvider` (*type:* `String.t`, *default:* `nil`) - The desired datapath provider for the cluster.
  *   `desiredDefaultSnatStatus` (*type:* `GoogleApi.Container.V1.Model.DefaultSnatStatus.t`, *default:* `nil`) - The desired status of whether to disable default sNAT for this cluster.
  *   `desiredImageType` (*type:* `String.t`, *default:* `nil`) - The desired image type for the node pool. NOTE: Set the "desired_node_pool" field as well.
  *   `desiredIntraNodeVisibilityConfig` (*type:* `GoogleApi.Container.V1.Model.IntraNodeVisibilityConfig.t`, *default:* `nil`) - The desired config of Intra-node visibility.
  *   `desiredL4ilbSubsettingConfig` (*type:* `GoogleApi.Container.V1.Model.ILBSubsettingConfig.t`, *default:* `nil`) - The desired L4 Internal Load Balancer Subsetting configuration.
  *   `desiredLocations` (*type:* `list(String.t)`, *default:* `nil`) - The desired list of Google Compute Engine [zones](https://cloud.google.com/compute/docs/zones#available) in which the cluster's nodes should be located. This list must always include the cluster's primary zone. Warning: changing cluster locations will update the locations of all node pools and will result in nodes being added and/or removed.
  *   `desiredLoggingConfig` (*type:* `GoogleApi.Container.V1.Model.LoggingConfig.t`, *default:* `nil`) - The desired logging configuration.
  *   `desiredLoggingService` (*type:* `String.t`, *default:* `nil`) - The logging service the cluster should use to write logs. Currently available options: * `logging.googleapis.com/kubernetes` - The Cloud Logging service with a Kubernetes-native resource model * `logging.googleapis.com` - The legacy Cloud Logging service (no longer available as of GKE 1.15). * `none` - no logs will be exported from the cluster. If left as an empty string,`logging.googleapis.com/kubernetes` will be used for GKE 1.14+ or `logging.googleapis.com` for earlier versions.
  *   `desiredMasterAuthorizedNetworksConfig` (*type:* `GoogleApi.Container.V1.Model.MasterAuthorizedNetworksConfig.t`, *default:* `nil`) - The desired configuration options for master authorized networks feature.
  *   `desiredMasterVersion` (*type:* `String.t`, *default:* `nil`) - The Kubernetes version to change the master to. Users may specify either explicit versions offered by Kubernetes Engine or version aliases, which have the following behavior: - "latest": picks the highest valid Kubernetes version - "1.X": picks the highest valid patch+gke.N patch in the 1.X version - "1.X.Y": picks the highest valid gke.N patch in the 1.X.Y version - "1.X.Y-gke.N": picks an explicit Kubernetes version - "-": picks the default Kubernetes version
  *   `desiredMeshCertificates` (*type:* `GoogleApi.Container.V1.Model.MeshCertificates.t`, *default:* `nil`) - Configuration for issuance of mTLS keys and certificates to Kubernetes pods.
  *   `desiredMonitoringConfig` (*type:* `GoogleApi.Container.V1.Model.MonitoringConfig.t`, *default:* `nil`) - The desired monitoring configuration.
  *   `desiredMonitoringService` (*type:* `String.t`, *default:* `nil`) - The monitoring service the cluster should use to write metrics. Currently available options: * "monitoring.googleapis.com/kubernetes" - The Cloud Monitoring service with a Kubernetes-native resource model * `monitoring.googleapis.com` - The legacy Cloud Monitoring service (no longer available as of GKE 1.15). * `none` - No metrics will be exported from the cluster. If left as an empty string,`monitoring.googleapis.com/kubernetes` will be used for GKE 1.14+ or `monitoring.googleapis.com` for earlier versions.
  *   `desiredNodePoolAutoscaling` (*type:* `GoogleApi.Container.V1.Model.NodePoolAutoscaling.t`, *default:* `nil`) - Autoscaler configuration for the node pool specified in desired_node_pool_id. If there is only one pool in the cluster and desired_node_pool_id is not provided then the change applies to that single node pool.
  *   `desiredNodePoolId` (*type:* `String.t`, *default:* `nil`) - The node pool to be upgraded. This field is mandatory if "desired_node_version", "desired_image_family" or "desired_node_pool_autoscaling" is specified and there is more than one node pool on the cluster.
  *   `desiredNodeVersion` (*type:* `String.t`, *default:* `nil`) - The Kubernetes version to change the nodes to (typically an upgrade). Users may specify either explicit versions offered by Kubernetes Engine or version aliases, which have the following behavior: - "latest": picks the highest valid Kubernetes version - "1.X": picks the highest valid patch+gke.N patch in the 1.X version - "1.X.Y": picks the highest valid gke.N patch in the 1.X.Y version - "1.X.Y-gke.N": picks an explicit Kubernetes version - "-": picks the Kubernetes master version
  *   `desiredNotificationConfig` (*type:* `GoogleApi.Container.V1.Model.NotificationConfig.t`, *default:* `nil`) - The desired notification configuration.
  *   `desiredPrivateClusterConfig` (*type:* `GoogleApi.Container.V1.Model.PrivateClusterConfig.t`, *default:* `nil`) - The desired private cluster configuration.
  *   `desiredPrivateIpv6GoogleAccess` (*type:* `String.t`, *default:* `nil`) - The desired state of IPv6 connectivity to Google Services.
  *   `desiredReleaseChannel` (*type:* `GoogleApi.Container.V1.Model.ReleaseChannel.t`, *default:* `nil`) - The desired release channel configuration.
  *   `desiredResourceUsageExportConfig` (*type:* `GoogleApi.Container.V1.Model.ResourceUsageExportConfig.t`, *default:* `nil`) - The desired configuration for exporting resource usage.
  *   `desiredShieldedNodes` (*type:* `GoogleApi.Container.V1.Model.ShieldedNodes.t`, *default:* `nil`) - Configuration for Shielded Nodes.
  *   `desiredVerticalPodAutoscaling` (*type:* `GoogleApi.Container.V1.Model.VerticalPodAutoscaling.t`, *default:* `nil`) - Cluster-level Vertical Pod Autoscaling configuration.
  *   `desiredWorkloadIdentityConfig` (*type:* `GoogleApi.Container.V1.Model.WorkloadIdentityConfig.t`, *default:* `nil`) - Configuration for Workload Identity.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :desiredAddonsConfig => GoogleApi.Container.V1.Model.AddonsConfig.t() | nil,
          :desiredAuthenticatorGroupsConfig =>
            GoogleApi.Container.V1.Model.AuthenticatorGroupsConfig.t() | nil,
          :desiredAutopilot => GoogleApi.Container.V1.Model.Autopilot.t() | nil,
          :desiredBinaryAuthorization =>
            GoogleApi.Container.V1.Model.BinaryAuthorization.t() | nil,
          :desiredClusterAutoscaling => GoogleApi.Container.V1.Model.ClusterAutoscaling.t() | nil,
          :desiredDatabaseEncryption => GoogleApi.Container.V1.Model.DatabaseEncryption.t() | nil,
          :desiredDatapathProvider => String.t() | nil,
          :desiredDefaultSnatStatus => GoogleApi.Container.V1.Model.DefaultSnatStatus.t() | nil,
          :desiredImageType => String.t() | nil,
          :desiredIntraNodeVisibilityConfig =>
            GoogleApi.Container.V1.Model.IntraNodeVisibilityConfig.t() | nil,
          :desiredL4ilbSubsettingConfig =>
            GoogleApi.Container.V1.Model.ILBSubsettingConfig.t() | nil,
          :desiredLocations => list(String.t()) | nil,
          :desiredLoggingConfig => GoogleApi.Container.V1.Model.LoggingConfig.t() | nil,
          :desiredLoggingService => String.t() | nil,
          :desiredMasterAuthorizedNetworksConfig =>
            GoogleApi.Container.V1.Model.MasterAuthorizedNetworksConfig.t() | nil,
          :desiredMasterVersion => String.t() | nil,
          :desiredMeshCertificates => GoogleApi.Container.V1.Model.MeshCertificates.t() | nil,
          :desiredMonitoringConfig => GoogleApi.Container.V1.Model.MonitoringConfig.t() | nil,
          :desiredMonitoringService => String.t() | nil,
          :desiredNodePoolAutoscaling =>
            GoogleApi.Container.V1.Model.NodePoolAutoscaling.t() | nil,
          :desiredNodePoolId => String.t() | nil,
          :desiredNodeVersion => String.t() | nil,
          :desiredNotificationConfig => GoogleApi.Container.V1.Model.NotificationConfig.t() | nil,
          :desiredPrivateClusterConfig =>
            GoogleApi.Container.V1.Model.PrivateClusterConfig.t() | nil,
          :desiredPrivateIpv6GoogleAccess => String.t() | nil,
          :desiredReleaseChannel => GoogleApi.Container.V1.Model.ReleaseChannel.t() | nil,
          :desiredResourceUsageExportConfig =>
            GoogleApi.Container.V1.Model.ResourceUsageExportConfig.t() | nil,
          :desiredShieldedNodes => GoogleApi.Container.V1.Model.ShieldedNodes.t() | nil,
          :desiredVerticalPodAutoscaling =>
            GoogleApi.Container.V1.Model.VerticalPodAutoscaling.t() | nil,
          :desiredWorkloadIdentityConfig =>
            GoogleApi.Container.V1.Model.WorkloadIdentityConfig.t() | nil
        }

  field(:desiredAddonsConfig, as: GoogleApi.Container.V1.Model.AddonsConfig)

  field(:desiredAuthenticatorGroupsConfig,
    as: GoogleApi.Container.V1.Model.AuthenticatorGroupsConfig
  )

  field(:desiredAutopilot, as: GoogleApi.Container.V1.Model.Autopilot)
  field(:desiredBinaryAuthorization, as: GoogleApi.Container.V1.Model.BinaryAuthorization)
  field(:desiredClusterAutoscaling, as: GoogleApi.Container.V1.Model.ClusterAutoscaling)
  field(:desiredDatabaseEncryption, as: GoogleApi.Container.V1.Model.DatabaseEncryption)
  field(:desiredDatapathProvider)
  field(:desiredDefaultSnatStatus, as: GoogleApi.Container.V1.Model.DefaultSnatStatus)
  field(:desiredImageType)

  field(:desiredIntraNodeVisibilityConfig,
    as: GoogleApi.Container.V1.Model.IntraNodeVisibilityConfig
  )

  field(:desiredL4ilbSubsettingConfig, as: GoogleApi.Container.V1.Model.ILBSubsettingConfig)
  field(:desiredLocations, type: :list)
  field(:desiredLoggingConfig, as: GoogleApi.Container.V1.Model.LoggingConfig)
  field(:desiredLoggingService)

  field(:desiredMasterAuthorizedNetworksConfig,
    as: GoogleApi.Container.V1.Model.MasterAuthorizedNetworksConfig
  )

  field(:desiredMasterVersion)
  field(:desiredMeshCertificates, as: GoogleApi.Container.V1.Model.MeshCertificates)
  field(:desiredMonitoringConfig, as: GoogleApi.Container.V1.Model.MonitoringConfig)
  field(:desiredMonitoringService)
  field(:desiredNodePoolAutoscaling, as: GoogleApi.Container.V1.Model.NodePoolAutoscaling)
  field(:desiredNodePoolId)
  field(:desiredNodeVersion)
  field(:desiredNotificationConfig, as: GoogleApi.Container.V1.Model.NotificationConfig)
  field(:desiredPrivateClusterConfig, as: GoogleApi.Container.V1.Model.PrivateClusterConfig)
  field(:desiredPrivateIpv6GoogleAccess)
  field(:desiredReleaseChannel, as: GoogleApi.Container.V1.Model.ReleaseChannel)

  field(:desiredResourceUsageExportConfig,
    as: GoogleApi.Container.V1.Model.ResourceUsageExportConfig
  )

  field(:desiredShieldedNodes, as: GoogleApi.Container.V1.Model.ShieldedNodes)
  field(:desiredVerticalPodAutoscaling, as: GoogleApi.Container.V1.Model.VerticalPodAutoscaling)
  field(:desiredWorkloadIdentityConfig, as: GoogleApi.Container.V1.Model.WorkloadIdentityConfig)
end

defimpl Poison.Decoder, for: GoogleApi.Container.V1.Model.ClusterUpdate do
  def decode(value, options) do
    GoogleApi.Container.V1.Model.ClusterUpdate.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Container.V1.Model.ClusterUpdate do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
