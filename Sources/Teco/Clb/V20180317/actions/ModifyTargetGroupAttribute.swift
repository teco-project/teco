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

extension Clb {
    /// ModifyTargetGroupAttribute请求参数结构体
    public struct ModifyTargetGroupAttributeRequest: TCRequest {
        /// 目标组的ID。
        public let targetGroupId: String

        /// 目标组的新名称。
        public let targetGroupName: String?

        /// 目标组的新默认端口。
        public let port: UInt64?

        public init(targetGroupId: String, targetGroupName: String? = nil, port: UInt64? = nil) {
            self.targetGroupId = targetGroupId
            self.targetGroupName = targetGroupName
            self.port = port
        }

        enum CodingKeys: String, CodingKey {
            case targetGroupId = "TargetGroupId"
            case targetGroupName = "TargetGroupName"
            case port = "Port"
        }
    }

    /// ModifyTargetGroupAttribute返回参数结构体
    public struct ModifyTargetGroupAttributeResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改目标组属性
    ///
    /// 修改目标组的名称或者默认端口属性
    @inlinable @discardableResult
    public func modifyTargetGroupAttribute(_ input: ModifyTargetGroupAttributeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyTargetGroupAttributeResponse> {
        self.client.execute(action: "ModifyTargetGroupAttribute", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改目标组属性
    ///
    /// 修改目标组的名称或者默认端口属性
    @inlinable @discardableResult
    public func modifyTargetGroupAttribute(_ input: ModifyTargetGroupAttributeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyTargetGroupAttributeResponse {
        try await self.client.execute(action: "ModifyTargetGroupAttribute", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改目标组属性
    ///
    /// 修改目标组的名称或者默认端口属性
    @inlinable @discardableResult
    public func modifyTargetGroupAttribute(targetGroupId: String, targetGroupName: String? = nil, port: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyTargetGroupAttributeResponse> {
        self.modifyTargetGroupAttribute(.init(targetGroupId: targetGroupId, targetGroupName: targetGroupName, port: port), region: region, logger: logger, on: eventLoop)
    }

    /// 修改目标组属性
    ///
    /// 修改目标组的名称或者默认端口属性
    @inlinable @discardableResult
    public func modifyTargetGroupAttribute(targetGroupId: String, targetGroupName: String? = nil, port: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyTargetGroupAttributeResponse {
        try await self.modifyTargetGroupAttribute(.init(targetGroupId: targetGroupId, targetGroupName: targetGroupName, port: port), region: region, logger: logger, on: eventLoop)
    }
}
