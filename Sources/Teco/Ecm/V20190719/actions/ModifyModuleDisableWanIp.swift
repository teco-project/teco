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

extension Ecm {
    /// ModifyModuleDisableWanIp请求参数结构体
    public struct ModifyModuleDisableWanIpRequest: TCRequestModel {
        /// 模块ID
        public let moduleId: String

        /// 是否禁止分配外网ip,true：统一分配外网ip，false：禁止分配外网ip.
        public let disableWanIp: Bool

        public init(moduleId: String, disableWanIp: Bool) {
            self.moduleId = moduleId
            self.disableWanIp = disableWanIp
        }

        enum CodingKeys: String, CodingKey {
            case moduleId = "ModuleId"
            case disableWanIp = "DisableWanIp"
        }
    }

    /// ModifyModuleDisableWanIp返回参数结构体
    public struct ModifyModuleDisableWanIpResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改模块是否禁止分配外网ip
    ///
    /// 修改模块是否禁止分配外网ip的属性。
    @inlinable @discardableResult
    public func modifyModuleDisableWanIp(_ input: ModifyModuleDisableWanIpRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyModuleDisableWanIpResponse> {
        self.client.execute(action: "ModifyModuleDisableWanIp", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改模块是否禁止分配外网ip
    ///
    /// 修改模块是否禁止分配外网ip的属性。
    @inlinable @discardableResult
    public func modifyModuleDisableWanIp(_ input: ModifyModuleDisableWanIpRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyModuleDisableWanIpResponse {
        try await self.client.execute(action: "ModifyModuleDisableWanIp", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改模块是否禁止分配外网ip
    ///
    /// 修改模块是否禁止分配外网ip的属性。
    @inlinable @discardableResult
    public func modifyModuleDisableWanIp(moduleId: String, disableWanIp: Bool, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyModuleDisableWanIpResponse> {
        self.modifyModuleDisableWanIp(.init(moduleId: moduleId, disableWanIp: disableWanIp), region: region, logger: logger, on: eventLoop)
    }

    /// 修改模块是否禁止分配外网ip
    ///
    /// 修改模块是否禁止分配外网ip的属性。
    @inlinable @discardableResult
    public func modifyModuleDisableWanIp(moduleId: String, disableWanIp: Bool, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyModuleDisableWanIpResponse {
        try await self.modifyModuleDisableWanIp(.init(moduleId: moduleId, disableWanIp: disableWanIp), region: region, logger: logger, on: eventLoop)
    }
}
