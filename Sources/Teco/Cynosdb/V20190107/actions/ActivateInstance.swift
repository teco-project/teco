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

extension Cynosdb {
    /// ActivateInstance请求参数结构体
    public struct ActivateInstanceRequest: TCRequestModel {
        /// 集群ID
        public let clusterId: String

        /// 实例 ID 列表，单个实例 ID 格式如：cynosdbmysql-ins-n7ocdslw，与TDSQL-C MySQL数据库控制台页面中显示的实例 ID 相同，可使用 查询实例列表 接口获取，其值为输出参数中字段 InstanceId 的值。
        public let instanceIdList: [String]

        public init(clusterId: String, instanceIdList: [String]) {
            self.clusterId = clusterId
            self.instanceIdList = instanceIdList
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case instanceIdList = "InstanceIdList"
        }
    }

    /// ActivateInstance返回参数结构体
    public struct ActivateInstanceResponse: TCResponseModel {
        /// 任务流id
        public let flowId: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case flowId = "FlowId"
            case requestId = "RequestId"
        }
    }

    /// 恢复实例访问
    ///
    /// 本接口(ActivateInstance)用于恢复已隔离的实例访问。
    @inlinable
    public func activateInstance(_ input: ActivateInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ActivateInstanceResponse> {
        self.client.execute(action: "ActivateInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 恢复实例访问
    ///
    /// 本接口(ActivateInstance)用于恢复已隔离的实例访问。
    @inlinable
    public func activateInstance(_ input: ActivateInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ActivateInstanceResponse {
        try await self.client.execute(action: "ActivateInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 恢复实例访问
    ///
    /// 本接口(ActivateInstance)用于恢复已隔离的实例访问。
    @inlinable
    public func activateInstance(clusterId: String, instanceIdList: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ActivateInstanceResponse> {
        self.activateInstance(.init(clusterId: clusterId, instanceIdList: instanceIdList), region: region, logger: logger, on: eventLoop)
    }

    /// 恢复实例访问
    ///
    /// 本接口(ActivateInstance)用于恢复已隔离的实例访问。
    @inlinable
    public func activateInstance(clusterId: String, instanceIdList: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ActivateInstanceResponse {
        try await self.activateInstance(.init(clusterId: clusterId, instanceIdList: instanceIdList), region: region, logger: logger, on: eventLoop)
    }
}
