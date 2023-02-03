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
    /// IsolateDedicatedDBInstance请求参数结构体
    public struct IsolateDedicatedDBInstanceRequest: TCRequestModel {
        /// 实例 Id，形如：dcdbt-ow728lmc。
        public let instanceId: String

        public init(instanceId: String) {
            self.instanceId = instanceId
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
        }
    }

    /// IsolateDedicatedDBInstance返回参数结构体
    public struct IsolateDedicatedDBInstanceResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 隔离独享云数据库实例
    ///
    /// 本接口（IsolateDedicatedDBInstance）用于隔离独享云数据库实例。
    @inlinable @discardableResult
    public func isolateDedicatedDBInstance(_ input: IsolateDedicatedDBInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<IsolateDedicatedDBInstanceResponse> {
        self.client.execute(action: "IsolateDedicatedDBInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 隔离独享云数据库实例
    ///
    /// 本接口（IsolateDedicatedDBInstance）用于隔离独享云数据库实例。
    @inlinable @discardableResult
    public func isolateDedicatedDBInstance(_ input: IsolateDedicatedDBInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> IsolateDedicatedDBInstanceResponse {
        try await self.client.execute(action: "IsolateDedicatedDBInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 隔离独享云数据库实例
    ///
    /// 本接口（IsolateDedicatedDBInstance）用于隔离独享云数据库实例。
    @inlinable @discardableResult
    public func isolateDedicatedDBInstance(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<IsolateDedicatedDBInstanceResponse> {
        let input = IsolateDedicatedDBInstanceRequest(instanceId: instanceId)
        return self.client.execute(action: "IsolateDedicatedDBInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 隔离独享云数据库实例
    ///
    /// 本接口（IsolateDedicatedDBInstance）用于隔离独享云数据库实例。
    @inlinable @discardableResult
    public func isolateDedicatedDBInstance(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> IsolateDedicatedDBInstanceResponse {
        let input = IsolateDedicatedDBInstanceRequest(instanceId: instanceId)
        return try await self.client.execute(action: "IsolateDedicatedDBInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
