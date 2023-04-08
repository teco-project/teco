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

extension Rum {
    /// DeleteInstance请求参数结构体
    public struct DeleteInstanceRequest: TCRequestModel {
        /// 需要删除的实例id
        public let instanceId: String

        public init(instanceId: String) {
            self.instanceId = instanceId
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
        }
    }

    /// DeleteInstance返回参数结构体
    public struct DeleteInstanceResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除 RUM 业务系统
    ///
    /// 删除实例，谨慎操作，不可恢复
    @inlinable @discardableResult
    public func deleteInstance(_ input: DeleteInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteInstanceResponse> {
        self.client.execute(action: "DeleteInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除 RUM 业务系统
    ///
    /// 删除实例，谨慎操作，不可恢复
    @inlinable @discardableResult
    public func deleteInstance(_ input: DeleteInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteInstanceResponse {
        try await self.client.execute(action: "DeleteInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除 RUM 业务系统
    ///
    /// 删除实例，谨慎操作，不可恢复
    @inlinable @discardableResult
    public func deleteInstance(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteInstanceResponse> {
        self.deleteInstance(.init(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除 RUM 业务系统
    ///
    /// 删除实例，谨慎操作，不可恢复
    @inlinable @discardableResult
    public func deleteInstance(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteInstanceResponse {
        try await self.deleteInstance(.init(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }
}
