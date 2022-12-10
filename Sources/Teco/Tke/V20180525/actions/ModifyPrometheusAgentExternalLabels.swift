//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Tke {
    /// 修改被关联集群的external labels
    ///
    /// 修改被关联集群的external labels
    @inlinable
    public func modifyPrometheusAgentExternalLabels(_ input: ModifyPrometheusAgentExternalLabelsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyPrometheusAgentExternalLabelsResponse > {
        self.client.execute(action: "ModifyPrometheusAgentExternalLabels", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 修改被关联集群的external labels
    ///
    /// 修改被关联集群的external labels
    @inlinable
    public func modifyPrometheusAgentExternalLabels(_ input: ModifyPrometheusAgentExternalLabelsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyPrometheusAgentExternalLabelsResponse {
        try await self.client.execute(action: "ModifyPrometheusAgentExternalLabels", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// ModifyPrometheusAgentExternalLabels请求参数结构体
    public struct ModifyPrometheusAgentExternalLabelsRequest: TCRequestModel {
        /// 实例ID
        public let instanceId: String
        
        /// 集群ID
        public let clusterId: String
        
        /// 新的external_labels
        public let externalLabels: [Label]
        
        public init (instanceId: String, clusterId: String, externalLabels: [Label]) {
            self.instanceId = instanceId
            self.clusterId = clusterId
            self.externalLabels = externalLabels
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case clusterId = "ClusterId"
            case externalLabels = "ExternalLabels"
        }
    }
    
    /// ModifyPrometheusAgentExternalLabels返回参数结构体
    public struct ModifyPrometheusAgentExternalLabelsResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}