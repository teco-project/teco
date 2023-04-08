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

extension Ecm {
    /// ModifyModuleImage请求参数结构体
    public struct ModifyModuleImageRequest: TCRequestModel {
        /// 默认镜像ID
        public let defaultImageId: String

        /// 模块ID
        public let moduleId: String

        public init(defaultImageId: String, moduleId: String) {
            self.defaultImageId = defaultImageId
            self.moduleId = moduleId
        }

        enum CodingKeys: String, CodingKey {
            case defaultImageId = "DefaultImageId"
            case moduleId = "ModuleId"
        }
    }

    /// ModifyModuleImage返回参数结构体
    public struct ModifyModuleImageResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改模块默认镜像
    ///
    /// 修改模块的默认镜像
    @inlinable @discardableResult
    public func modifyModuleImage(_ input: ModifyModuleImageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyModuleImageResponse> {
        self.client.execute(action: "ModifyModuleImage", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改模块默认镜像
    ///
    /// 修改模块的默认镜像
    @inlinable @discardableResult
    public func modifyModuleImage(_ input: ModifyModuleImageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyModuleImageResponse {
        try await self.client.execute(action: "ModifyModuleImage", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改模块默认镜像
    ///
    /// 修改模块的默认镜像
    @inlinable @discardableResult
    public func modifyModuleImage(defaultImageId: String, moduleId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyModuleImageResponse> {
        self.modifyModuleImage(.init(defaultImageId: defaultImageId, moduleId: moduleId), region: region, logger: logger, on: eventLoop)
    }

    /// 修改模块默认镜像
    ///
    /// 修改模块的默认镜像
    @inlinable @discardableResult
    public func modifyModuleImage(defaultImageId: String, moduleId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyModuleImageResponse {
        try await self.modifyModuleImage(.init(defaultImageId: defaultImageId, moduleId: moduleId), region: region, logger: logger, on: eventLoop)
    }
}
