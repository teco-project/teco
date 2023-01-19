//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Mariadb {
    /// DestroyHourDBInstance请求参数结构体
    public struct DestroyHourDBInstanceRequest: TCRequestModel {
        /// 实例 ID，格式如：tdsql-avw0207d，与云数据库控制台页面中显示的实例 ID 相同。
        public let instanceId: String

        public init(instanceId: String) {
            self.instanceId = instanceId
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
        }
    }

    /// DestroyHourDBInstance返回参数结构体
    public struct DestroyHourDBInstanceResponse: TCResponseModel {
        /// 异步任务的请求 ID，可使用此 ID [查询异步任务的执行结果](https://cloud.tencent.com/document/product/237/16177)。
        public let flowId: Int64

        /// 实例 ID，与入参InstanceId一致。
        public let instanceId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case flowId = "FlowId"
            case instanceId = "InstanceId"
            case requestId = "RequestId"
        }
    }

    /// 销毁按量计费实例
    ///
    /// 本接口（DestroyHourDBInstance）用于销毁按量计费实例。
    @inlinable
    public func destroyHourDBInstance(_ input: DestroyHourDBInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DestroyHourDBInstanceResponse> {
        self.client.execute(action: "DestroyHourDBInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 销毁按量计费实例
    ///
    /// 本接口（DestroyHourDBInstance）用于销毁按量计费实例。
    @inlinable
    public func destroyHourDBInstance(_ input: DestroyHourDBInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DestroyHourDBInstanceResponse {
        try await self.client.execute(action: "DestroyHourDBInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 销毁按量计费实例
    ///
    /// 本接口（DestroyHourDBInstance）用于销毁按量计费实例。
    @inlinable
    public func destroyHourDBInstance(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DestroyHourDBInstanceResponse> {
        self.destroyHourDBInstance(DestroyHourDBInstanceRequest(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }

    /// 销毁按量计费实例
    ///
    /// 本接口（DestroyHourDBInstance）用于销毁按量计费实例。
    @inlinable
    public func destroyHourDBInstance(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DestroyHourDBInstanceResponse {
        try await self.destroyHourDBInstance(DestroyHourDBInstanceRequest(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }
}
