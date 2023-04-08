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

extension Dcdb {
    /// DestroyHourDCDBInstance请求参数结构体
    public struct DestroyHourDCDBInstanceRequest: TCRequestModel {
        /// 实例 ID，格式如：tdsqlshard-c1nl9rpv，与云数据库控制台页面中显示的实例 ID 相同。
        public let instanceId: String

        public init(instanceId: String) {
            self.instanceId = instanceId
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
        }
    }

    /// DestroyHourDCDBInstance返回参数结构体
    public struct DestroyHourDCDBInstanceResponse: TCResponseModel {
        /// 异步任务的请求 ID，可使用此 ID [查询异步任务的执行结果](https://cloud.tencent.com/document/product/557/56485)。
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
    /// 本接口（DestroyHourDCDBInstance）用于销毁按量计费实例。
    @inlinable
    public func destroyHourDCDBInstance(_ input: DestroyHourDCDBInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DestroyHourDCDBInstanceResponse> {
        self.client.execute(action: "DestroyHourDCDBInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 销毁按量计费实例
    ///
    /// 本接口（DestroyHourDCDBInstance）用于销毁按量计费实例。
    @inlinable
    public func destroyHourDCDBInstance(_ input: DestroyHourDCDBInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DestroyHourDCDBInstanceResponse {
        try await self.client.execute(action: "DestroyHourDCDBInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 销毁按量计费实例
    ///
    /// 本接口（DestroyHourDCDBInstance）用于销毁按量计费实例。
    @inlinable
    public func destroyHourDCDBInstance(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DestroyHourDCDBInstanceResponse> {
        self.destroyHourDCDBInstance(.init(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }

    /// 销毁按量计费实例
    ///
    /// 本接口（DestroyHourDCDBInstance）用于销毁按量计费实例。
    @inlinable
    public func destroyHourDCDBInstance(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DestroyHourDCDBInstanceResponse {
        try await self.destroyHourDCDBInstance(.init(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }
}
