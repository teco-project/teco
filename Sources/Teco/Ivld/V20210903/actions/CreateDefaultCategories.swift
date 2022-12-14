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

extension Ivld {
    /// CreateDefaultCategories请求参数结构体
    public struct CreateDefaultCategoriesRequest: TCRequestModel {
        public init() {
        }
    }

    /// CreateDefaultCategories返回参数结构体
    public struct CreateDefaultCategoriesResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 创建默认自定义人物类型
    @inlinable
    public func createDefaultCategories(_ input: CreateDefaultCategoriesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateDefaultCategoriesResponse > {
        self.client.execute(action: "CreateDefaultCategories", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建默认自定义人物类型
    @inlinable
    public func createDefaultCategories(_ input: CreateDefaultCategoriesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDefaultCategoriesResponse {
        try await self.client.execute(action: "CreateDefaultCategories", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建默认自定义人物类型
    @inlinable
    public func createDefaultCategories(logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateDefaultCategoriesResponse > {
        self.createDefaultCategories(CreateDefaultCategoriesRequest(), logger: logger, on: eventLoop)
    }

    /// 创建默认自定义人物类型
    @inlinable
    public func createDefaultCategories(logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDefaultCategoriesResponse {
        try await self.createDefaultCategories(CreateDefaultCategoriesRequest(), logger: logger, on: eventLoop)
    }
}
