//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
//
// Copyright (c) 2022-2023 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

import Logging
import NIOCore
import TecoCore

extension Cynosdb {
    /// ModifyInstanceParam请求参数结构体
    public struct ModifyInstanceParamRequest: TCRequest {
        /// 集群ID
        public let clusterId: String

        /// 实例ID
        public let instanceIds: [String]?

        /// 集群参数列表，例如 [{           "CurrentValue":"2",        "ParamName":"auto_increment_increment"}]
        public let clusterParamList: [ModifyParamItem]?

        /// 实例参数列表，例如[{           "CurrentValue":"2",        "ParamName":"innodb_stats_transient_sample_pages"}]
        public let instanceParamList: [ModifyParamItem]?

        /// yes：在运维时间窗内修改，no：立即执行（默认值）
        public let isInMaintainPeriod: String?

        public init(clusterId: String, instanceIds: [String]? = nil, clusterParamList: [ModifyParamItem]? = nil, instanceParamList: [ModifyParamItem]? = nil, isInMaintainPeriod: String? = nil) {
            self.clusterId = clusterId
            self.instanceIds = instanceIds
            self.clusterParamList = clusterParamList
            self.instanceParamList = instanceParamList
            self.isInMaintainPeriod = isInMaintainPeriod
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case instanceIds = "InstanceIds"
            case clusterParamList = "ClusterParamList"
            case instanceParamList = "InstanceParamList"
            case isInMaintainPeriod = "IsInMaintainPeriod"
        }
    }

    /// ModifyInstanceParam返回参数结构体
    public struct ModifyInstanceParamResponse: TCResponse {
        /// 任务ID
        public let flowId: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case flowId = "FlowId"
            case requestId = "RequestId"
        }
    }

    /// 修改实例参数
    ///
    /// 本接口（ModifyInstanceParam）用于修改实例参数。
    @inlinable
    public func modifyInstanceParam(_ input: ModifyInstanceParamRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyInstanceParamResponse> {
        self.client.execute(action: "ModifyInstanceParam", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改实例参数
    ///
    /// 本接口（ModifyInstanceParam）用于修改实例参数。
    @inlinable
    public func modifyInstanceParam(_ input: ModifyInstanceParamRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyInstanceParamResponse {
        try await self.client.execute(action: "ModifyInstanceParam", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改实例参数
    ///
    /// 本接口（ModifyInstanceParam）用于修改实例参数。
    @inlinable
    public func modifyInstanceParam(clusterId: String, instanceIds: [String]? = nil, clusterParamList: [ModifyParamItem]? = nil, instanceParamList: [ModifyParamItem]? = nil, isInMaintainPeriod: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyInstanceParamResponse> {
        self.modifyInstanceParam(.init(clusterId: clusterId, instanceIds: instanceIds, clusterParamList: clusterParamList, instanceParamList: instanceParamList, isInMaintainPeriod: isInMaintainPeriod), region: region, logger: logger, on: eventLoop)
    }

    /// 修改实例参数
    ///
    /// 本接口（ModifyInstanceParam）用于修改实例参数。
    @inlinable
    public func modifyInstanceParam(clusterId: String, instanceIds: [String]? = nil, clusterParamList: [ModifyParamItem]? = nil, instanceParamList: [ModifyParamItem]? = nil, isInMaintainPeriod: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyInstanceParamResponse {
        try await self.modifyInstanceParam(.init(clusterId: clusterId, instanceIds: instanceIds, clusterParamList: clusterParamList, instanceParamList: instanceParamList, isInMaintainPeriod: isInMaintainPeriod), region: region, logger: logger, on: eventLoop)
    }
}
