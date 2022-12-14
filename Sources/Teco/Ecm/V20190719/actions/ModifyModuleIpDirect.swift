//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Ecm {
    /// ModifyModuleIpDirect请求参数结构体
    public struct ModifyModuleIpDirectRequest: TCRequestModel {
        /// 模块ID。
        public let moduleId: String

        /// 是否关闭IP直通。取值范围：
        /// true：表示关闭IP直通
        /// false：表示开通IP直通
        public let closeIpDirect: Bool

        public init(moduleId: String, closeIpDirect: Bool) {
            self.moduleId = moduleId
            self.closeIpDirect = closeIpDirect
        }

        enum CodingKeys: String, CodingKey {
            case moduleId = "ModuleId"
            case closeIpDirect = "CloseIpDirect"
        }
    }

    /// ModifyModuleIpDirect返回参数结构体
    public struct ModifyModuleIpDirectResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改模块IP直通
    ///
    /// 修改模块IP直通。
    @inlinable
    public func modifyModuleIpDirect(_ input: ModifyModuleIpDirectRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyModuleIpDirectResponse > {
        self.client.execute(action: "ModifyModuleIpDirect", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改模块IP直通
    ///
    /// 修改模块IP直通。
    @inlinable
    public func modifyModuleIpDirect(_ input: ModifyModuleIpDirectRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyModuleIpDirectResponse {
        try await self.client.execute(action: "ModifyModuleIpDirect", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改模块IP直通
    ///
    /// 修改模块IP直通。
    @inlinable
    public func modifyModuleIpDirect(moduleId: String, closeIpDirect: Bool, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyModuleIpDirectResponse > {
        self.modifyModuleIpDirect(ModifyModuleIpDirectRequest(moduleId: moduleId, closeIpDirect: closeIpDirect), logger: logger, on: eventLoop)
    }

    /// 修改模块IP直通
    ///
    /// 修改模块IP直通。
    @inlinable
    public func modifyModuleIpDirect(moduleId: String, closeIpDirect: Bool, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyModuleIpDirectResponse {
        try await self.modifyModuleIpDirect(ModifyModuleIpDirectRequest(moduleId: moduleId, closeIpDirect: closeIpDirect), logger: logger, on: eventLoop)
    }
}
