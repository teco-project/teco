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

import TecoCore

extension Ecm {
    /// ModifyModuleName请求参数结构体
    public struct ModifyModuleNameRequest: TCRequestModel {
        /// 模块ID。
        public let moduleId: String

        /// 模块名称。
        public let moduleName: String

        public init(moduleId: String, moduleName: String) {
            self.moduleId = moduleId
            self.moduleName = moduleName
        }

        enum CodingKeys: String, CodingKey {
            case moduleId = "ModuleId"
            case moduleName = "ModuleName"
        }
    }

    /// ModifyModuleName返回参数结构体
    public struct ModifyModuleNameResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改模块名称
    @inlinable @discardableResult
    public func modifyModuleName(_ input: ModifyModuleNameRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyModuleNameResponse> {
        self.client.execute(action: "ModifyModuleName", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改模块名称
    @inlinable @discardableResult
    public func modifyModuleName(_ input: ModifyModuleNameRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyModuleNameResponse {
        try await self.client.execute(action: "ModifyModuleName", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改模块名称
    @inlinable @discardableResult
    public func modifyModuleName(moduleId: String, moduleName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyModuleNameResponse> {
        self.modifyModuleName(.init(moduleId: moduleId, moduleName: moduleName), region: region, logger: logger, on: eventLoop)
    }

    /// 修改模块名称
    @inlinable @discardableResult
    public func modifyModuleName(moduleId: String, moduleName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyModuleNameResponse {
        try await self.modifyModuleName(.init(moduleId: moduleId, moduleName: moduleName), region: region, logger: logger, on: eventLoop)
    }
}
