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
    /// DeleteCustomCategory请求参数结构体
    public struct DeleteCustomCategoryRequest: TCRequestModel {
        /// 自定义分类ID
        public let categoryId: String

        public init(categoryId: String) {
            self.categoryId = categoryId
        }

        enum CodingKeys: String, CodingKey {
            case categoryId = "CategoryId"
        }
    }

    /// DeleteCustomCategory返回参数结构体
    public struct DeleteCustomCategoryResponse: TCResponseModel {
        /// 123
        public let categoryId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case categoryId = "CategoryId"
            case requestId = "RequestId"
        }
    }

    /// 删除自定义分类
    ///
    /// 删除自定义分类信息
    @inlinable
    public func deleteCustomCategory(_ input: DeleteCustomCategoryRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteCustomCategoryResponse > {
        self.client.execute(action: "DeleteCustomCategory", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除自定义分类
    ///
    /// 删除自定义分类信息
    @inlinable
    public func deleteCustomCategory(_ input: DeleteCustomCategoryRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteCustomCategoryResponse {
        try await self.client.execute(action: "DeleteCustomCategory", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除自定义分类
    ///
    /// 删除自定义分类信息
    @inlinable
    public func deleteCustomCategory(categoryId: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteCustomCategoryResponse > {
        self.deleteCustomCategory(DeleteCustomCategoryRequest(categoryId: categoryId), logger: logger, on: eventLoop)
    }

    /// 删除自定义分类
    ///
    /// 删除自定义分类信息
    @inlinable
    public func deleteCustomCategory(categoryId: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteCustomCategoryResponse {
        try await self.deleteCustomCategory(DeleteCustomCategoryRequest(categoryId: categoryId), logger: logger, on: eventLoop)
    }
}
