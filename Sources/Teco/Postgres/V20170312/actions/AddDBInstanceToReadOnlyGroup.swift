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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Postgres {
    /// AddDBInstanceToReadOnlyGroup请求参数结构体
    public struct AddDBInstanceToReadOnlyGroupRequest: TCRequestModel {
        /// 实例ID
        public let dbInstanceId: String

        /// 只读组ID
        public let readOnlyGroupId: String

        public init(dbInstanceId: String, readOnlyGroupId: String) {
            self.dbInstanceId = dbInstanceId
            self.readOnlyGroupId = readOnlyGroupId
        }

        enum CodingKeys: String, CodingKey {
            case dbInstanceId = "DBInstanceId"
            case readOnlyGroupId = "ReadOnlyGroupId"
        }
    }

    /// AddDBInstanceToReadOnlyGroup返回参数结构体
    public struct AddDBInstanceToReadOnlyGroupResponse: TCResponseModel {
        /// 流程ID
        public let flowId: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case flowId = "FlowId"
            case requestId = "RequestId"
        }
    }

    /// 添加只读实例到只读组
    ///
    /// 本接口（AddDBInstanceToReadOnlyGroup）用于添加只读实例到只读组
    @inlinable
    public func addDBInstanceToReadOnlyGroup(_ input: AddDBInstanceToReadOnlyGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddDBInstanceToReadOnlyGroupResponse> {
        self.client.execute(action: "AddDBInstanceToReadOnlyGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 添加只读实例到只读组
    ///
    /// 本接口（AddDBInstanceToReadOnlyGroup）用于添加只读实例到只读组
    @inlinable
    public func addDBInstanceToReadOnlyGroup(_ input: AddDBInstanceToReadOnlyGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AddDBInstanceToReadOnlyGroupResponse {
        try await self.client.execute(action: "AddDBInstanceToReadOnlyGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 添加只读实例到只读组
    ///
    /// 本接口（AddDBInstanceToReadOnlyGroup）用于添加只读实例到只读组
    @inlinable
    public func addDBInstanceToReadOnlyGroup(dbInstanceId: String, readOnlyGroupId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddDBInstanceToReadOnlyGroupResponse> {
        self.addDBInstanceToReadOnlyGroup(.init(dbInstanceId: dbInstanceId, readOnlyGroupId: readOnlyGroupId), region: region, logger: logger, on: eventLoop)
    }

    /// 添加只读实例到只读组
    ///
    /// 本接口（AddDBInstanceToReadOnlyGroup）用于添加只读实例到只读组
    @inlinable
    public func addDBInstanceToReadOnlyGroup(dbInstanceId: String, readOnlyGroupId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AddDBInstanceToReadOnlyGroupResponse {
        try await self.addDBInstanceToReadOnlyGroup(.init(dbInstanceId: dbInstanceId, readOnlyGroupId: readOnlyGroupId), region: region, logger: logger, on: eventLoop)
    }
}
