//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Tke {
    /// DescribePrometheusGlobalConfig请求参数结构体
    public struct DescribePrometheusGlobalConfigRequest: TCRequestModel {
        /// 实例级别抓取配置
        public let instanceId: String
        
        /// 是否禁用统计
        public let disableStatistics: Bool?
        
        public init (instanceId: String, disableStatistics: Bool? = nil) {
            self.instanceId = instanceId
            self.disableStatistics = disableStatistics
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case disableStatistics = "DisableStatistics"
        }
    }
    
    /// DescribePrometheusGlobalConfig返回参数结构体
    public struct DescribePrometheusGlobalConfigResponse: TCResponseModel {
        /// 配置内容
        public let config: String
        
        /// ServiceMonitors列表以及对应targets信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let serviceMonitors: [PrometheusConfigItem]?
        
        /// PodMonitors列表以及对应targets信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let podMonitors: [PrometheusConfigItem]?
        
        /// RawJobs列表以及对应targets信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let rawJobs: [PrometheusConfigItem]?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case config = "Config"
            case serviceMonitors = "ServiceMonitors"
            case podMonitors = "PodMonitors"
            case rawJobs = "RawJobs"
            case requestId = "RequestId"
        }
    }
    
    /// 获得实例级别抓取配置
    @inlinable
    public func describePrometheusGlobalConfig(_ input: DescribePrometheusGlobalConfigRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribePrometheusGlobalConfigResponse > {
        self.client.execute(action: "DescribePrometheusGlobalConfig", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获得实例级别抓取配置
    @inlinable
    public func describePrometheusGlobalConfig(_ input: DescribePrometheusGlobalConfigRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePrometheusGlobalConfigResponse {
        try await self.client.execute(action: "DescribePrometheusGlobalConfig", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
