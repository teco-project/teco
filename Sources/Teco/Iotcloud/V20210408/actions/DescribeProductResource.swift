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

extension Iotcloud {
    /// DescribeProductResource请求参数结构体
    public struct DescribeProductResourceRequest: TCRequestModel {
        /// 需要查看资源列表的产品 ID
        public let productID: String?

        /// 需要过滤的资源名称
        public let name: String?

        public init(productID: String? = nil, name: String? = nil) {
            self.productID = productID
            self.name = name
        }

        enum CodingKeys: String, CodingKey {
            case productID = "ProductID"
            case name = "Name"
        }
    }

    /// DescribeProductResource返回参数结构体
    public struct DescribeProductResourceResponse: TCResponseModel {
        /// 资源详情
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: ProductResourceInfo?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 查询产品资源详情
    ///
    /// 本接口（DescribeProductResource）用于查询产品资源详情。
    @inlinable
    public func describeProductResource(_ input: DescribeProductResourceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeProductResourceResponse> {
        self.client.execute(action: "DescribeProductResource", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询产品资源详情
    ///
    /// 本接口（DescribeProductResource）用于查询产品资源详情。
    @inlinable
    public func describeProductResource(_ input: DescribeProductResourceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProductResourceResponse {
        try await self.client.execute(action: "DescribeProductResource", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询产品资源详情
    ///
    /// 本接口（DescribeProductResource）用于查询产品资源详情。
    @inlinable
    public func describeProductResource(productID: String? = nil, name: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeProductResourceResponse> {
        self.describeProductResource(.init(productID: productID, name: name), region: region, logger: logger, on: eventLoop)
    }

    /// 查询产品资源详情
    ///
    /// 本接口（DescribeProductResource）用于查询产品资源详情。
    @inlinable
    public func describeProductResource(productID: String? = nil, name: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProductResourceResponse {
        try await self.describeProductResource(.init(productID: productID, name: name), region: region, logger: logger, on: eventLoop)
    }
}
