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

extension Ecm {
    /// DeleteModule请求参数结构体
    public struct DeleteModuleRequest: TCRequestModel {
        /// 模块ID。如：em-qn46snq8
        public let moduleId: String

        public init(moduleId: String) {
            self.moduleId = moduleId
        }

        enum CodingKeys: String, CodingKey {
            case moduleId = "ModuleId"
        }
    }

    /// DeleteModule返回参数结构体
    public struct DeleteModuleResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除业务模块
    @inlinable @discardableResult
    public func deleteModule(_ input: DeleteModuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteModuleResponse> {
        self.client.execute(action: "DeleteModule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除业务模块
    @inlinable @discardableResult
    public func deleteModule(_ input: DeleteModuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteModuleResponse {
        try await self.client.execute(action: "DeleteModule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除业务模块
    @inlinable @discardableResult
    public func deleteModule(moduleId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteModuleResponse> {
        let input = DeleteModuleRequest(moduleId: moduleId)
        return self.client.execute(action: "DeleteModule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除业务模块
    @inlinable @discardableResult
    public func deleteModule(moduleId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteModuleResponse {
        let input = DeleteModuleRequest(moduleId: moduleId)
        return try await self.client.execute(action: "DeleteModule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
