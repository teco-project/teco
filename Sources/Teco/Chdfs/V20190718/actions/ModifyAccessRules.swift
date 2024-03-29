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

extension Chdfs {
    /// ModifyAccessRules请求参数结构体
    public struct ModifyAccessRulesRequest: TCRequest {
        /// 多个权限规则，上限为10
        public let accessRules: [AccessRule]

        public init(accessRules: [AccessRule]) {
            self.accessRules = accessRules
        }

        enum CodingKeys: String, CodingKey {
            case accessRules = "AccessRules"
        }
    }

    /// ModifyAccessRules返回参数结构体
    public struct ModifyAccessRulesResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 批量修改权限规则属性
    ///
    /// 批量修改权限规则属性，需要指定权限规则ID，支持修改权限规则地址、访问模式和优先级。
    @available(*, deprecated, message: "云API旧版本2019-07-18预下线，所有功能由新版本2020-11-12替代，目前云API主要用作控制台使用。")
    @inlinable @discardableResult
    public func modifyAccessRules(_ input: ModifyAccessRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyAccessRulesResponse> {
        self.client.execute(action: "ModifyAccessRules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 批量修改权限规则属性
    ///
    /// 批量修改权限规则属性，需要指定权限规则ID，支持修改权限规则地址、访问模式和优先级。
    @available(*, deprecated, message: "云API旧版本2019-07-18预下线，所有功能由新版本2020-11-12替代，目前云API主要用作控制台使用。")
    @inlinable @discardableResult
    public func modifyAccessRules(_ input: ModifyAccessRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyAccessRulesResponse {
        try await self.client.execute(action: "ModifyAccessRules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 批量修改权限规则属性
    ///
    /// 批量修改权限规则属性，需要指定权限规则ID，支持修改权限规则地址、访问模式和优先级。
    @available(*, deprecated, message: "云API旧版本2019-07-18预下线，所有功能由新版本2020-11-12替代，目前云API主要用作控制台使用。")
    @inlinable @discardableResult
    public func modifyAccessRules(accessRules: [AccessRule], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyAccessRulesResponse> {
        self.modifyAccessRules(.init(accessRules: accessRules), region: region, logger: logger, on: eventLoop)
    }

    /// 批量修改权限规则属性
    ///
    /// 批量修改权限规则属性，需要指定权限规则ID，支持修改权限规则地址、访问模式和优先级。
    @available(*, deprecated, message: "云API旧版本2019-07-18预下线，所有功能由新版本2020-11-12替代，目前云API主要用作控制台使用。")
    @inlinable @discardableResult
    public func modifyAccessRules(accessRules: [AccessRule], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyAccessRulesResponse {
        try await self.modifyAccessRules(.init(accessRules: accessRules), region: region, logger: logger, on: eventLoop)
    }
}
