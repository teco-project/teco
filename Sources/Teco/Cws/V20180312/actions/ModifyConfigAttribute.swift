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

extension Cws {
    /// ModifyConfigAttribute请求参数结构体
    public struct ModifyConfigAttributeRequest: TCRequest {
        /// 漏洞告警通知等级，4位分别代表：高危、中危、低危、提示
        public let noticeLevel: String?

        public init(noticeLevel: String? = nil) {
            self.noticeLevel = noticeLevel
        }

        enum CodingKeys: String, CodingKey {
            case noticeLevel = "NoticeLevel"
        }
    }

    /// ModifyConfigAttribute返回参数结构体
    public struct ModifyConfigAttributeResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改用户配置的属性
    ///
    /// 本接口 (ModifyConfigAttribute) 用于修改用户配置的属性。
    @inlinable @discardableResult
    public func modifyConfigAttribute(_ input: ModifyConfigAttributeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyConfigAttributeResponse> {
        self.client.execute(action: "ModifyConfigAttribute", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改用户配置的属性
    ///
    /// 本接口 (ModifyConfigAttribute) 用于修改用户配置的属性。
    @inlinable @discardableResult
    public func modifyConfigAttribute(_ input: ModifyConfigAttributeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyConfigAttributeResponse {
        try await self.client.execute(action: "ModifyConfigAttribute", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改用户配置的属性
    ///
    /// 本接口 (ModifyConfigAttribute) 用于修改用户配置的属性。
    @inlinable @discardableResult
    public func modifyConfigAttribute(noticeLevel: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyConfigAttributeResponse> {
        self.modifyConfigAttribute(.init(noticeLevel: noticeLevel), region: region, logger: logger, on: eventLoop)
    }

    /// 修改用户配置的属性
    ///
    /// 本接口 (ModifyConfigAttribute) 用于修改用户配置的属性。
    @inlinable @discardableResult
    public func modifyConfigAttribute(noticeLevel: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyConfigAttributeResponse {
        try await self.modifyConfigAttribute(.init(noticeLevel: noticeLevel), region: region, logger: logger, on: eventLoop)
    }
}
