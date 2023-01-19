//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Ivld {
    /// DescribeCustomCategories请求参数结构体
    public struct DescribeCustomCategoriesRequest: TCRequestModel {
        public init() {
        }
    }

    /// DescribeCustomCategories返回参数结构体
    public struct DescribeCustomCategoriesResponse: TCResponseModel {
        /// 自定义人物类型数组
        public let categorySet: [CustomCategory]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case categorySet = "CategorySet"
            case requestId = "RequestId"
        }
    }

    /// 批量描述自定义人物分类
    ///
    /// 批量描述自定义人物分类信息
    @inlinable
    public func describeCustomCategories(_ input: DescribeCustomCategoriesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCustomCategoriesResponse> {
        self.client.execute(action: "DescribeCustomCategories", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 批量描述自定义人物分类
    ///
    /// 批量描述自定义人物分类信息
    @inlinable
    public func describeCustomCategories(_ input: DescribeCustomCategoriesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCustomCategoriesResponse {
        try await self.client.execute(action: "DescribeCustomCategories", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 批量描述自定义人物分类
    ///
    /// 批量描述自定义人物分类信息
    @inlinable
    public func describeCustomCategories(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCustomCategoriesResponse> {
        self.describeCustomCategories(DescribeCustomCategoriesRequest(), region: region, logger: logger, on: eventLoop)
    }

    /// 批量描述自定义人物分类
    ///
    /// 批量描述自定义人物分类信息
    @inlinable
    public func describeCustomCategories(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCustomCategoriesResponse {
        try await self.describeCustomCategories(DescribeCustomCategoriesRequest(), region: region, logger: logger, on: eventLoop)
    }
}
