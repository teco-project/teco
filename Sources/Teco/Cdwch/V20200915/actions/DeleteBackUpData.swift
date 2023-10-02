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

extension Cdwch {
    /// DeleteBackUpData请求参数结构体
    public struct DeleteBackUpDataRequest: TCRequest {
        /// 集群id
        public let instanceId: String

        /// 任务id
        public let backUpJobId: Int64?

        /// 是否删除所有数据
        public let isDeleteAll: Bool?

        public init(instanceId: String, backUpJobId: Int64? = nil, isDeleteAll: Bool? = nil) {
            self.instanceId = instanceId
            self.backUpJobId = backUpJobId
            self.isDeleteAll = isDeleteAll
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case backUpJobId = "BackUpJobId"
            case isDeleteAll = "IsDeleteAll"
        }
    }

    /// DeleteBackUpData返回参数结构体
    public struct DeleteBackUpDataResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除备份数据
    @inlinable @discardableResult
    public func deleteBackUpData(_ input: DeleteBackUpDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteBackUpDataResponse> {
        self.client.execute(action: "DeleteBackUpData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除备份数据
    @inlinable @discardableResult
    public func deleteBackUpData(_ input: DeleteBackUpDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteBackUpDataResponse {
        try await self.client.execute(action: "DeleteBackUpData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除备份数据
    @inlinable @discardableResult
    public func deleteBackUpData(instanceId: String, backUpJobId: Int64? = nil, isDeleteAll: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteBackUpDataResponse> {
        self.deleteBackUpData(.init(instanceId: instanceId, backUpJobId: backUpJobId, isDeleteAll: isDeleteAll), region: region, logger: logger, on: eventLoop)
    }

    /// 删除备份数据
    @inlinable @discardableResult
    public func deleteBackUpData(instanceId: String, backUpJobId: Int64? = nil, isDeleteAll: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteBackUpDataResponse {
        try await self.deleteBackUpData(.init(instanceId: instanceId, backUpJobId: backUpJobId, isDeleteAll: isDeleteAll), region: region, logger: logger, on: eventLoop)
    }
}
