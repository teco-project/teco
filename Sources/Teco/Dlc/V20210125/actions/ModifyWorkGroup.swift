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

extension Dlc {
    /// ModifyWorkGroup请求参数结构体
    public struct ModifyWorkGroupRequest: TCRequestModel {
        /// 工作组Id
        public let workGroupId: Int64

        /// 工作组描述
        public let workGroupDescription: String

        public init(workGroupId: Int64, workGroupDescription: String) {
            self.workGroupId = workGroupId
            self.workGroupDescription = workGroupDescription
        }

        enum CodingKeys: String, CodingKey {
            case workGroupId = "WorkGroupId"
            case workGroupDescription = "WorkGroupDescription"
        }
    }

    /// ModifyWorkGroup返回参数结构体
    public struct ModifyWorkGroupResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改工作组信息
    @inlinable @discardableResult
    public func modifyWorkGroup(_ input: ModifyWorkGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyWorkGroupResponse> {
        self.client.execute(action: "ModifyWorkGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改工作组信息
    @inlinable @discardableResult
    public func modifyWorkGroup(_ input: ModifyWorkGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyWorkGroupResponse {
        try await self.client.execute(action: "ModifyWorkGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改工作组信息
    @inlinable @discardableResult
    public func modifyWorkGroup(workGroupId: Int64, workGroupDescription: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyWorkGroupResponse> {
        self.modifyWorkGroup(.init(workGroupId: workGroupId, workGroupDescription: workGroupDescription), region: region, logger: logger, on: eventLoop)
    }

    /// 修改工作组信息
    @inlinable @discardableResult
    public func modifyWorkGroup(workGroupId: Int64, workGroupDescription: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyWorkGroupResponse {
        try await self.modifyWorkGroup(.init(workGroupId: workGroupId, workGroupDescription: workGroupDescription), region: region, logger: logger, on: eventLoop)
    }
}
