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

extension Iotvideo {
    /// DescribeIotModels请求参数结构体
    public struct DescribeIotModelsRequest: TCRequestModel {
        /// 产品ID
        public let productId: String

        public init(productId: String) {
            self.productId = productId
        }

        enum CodingKeys: String, CodingKey {
            case productId = "ProductId"
        }
    }

    /// DescribeIotModels返回参数结构体
    public struct DescribeIotModelsResponse: TCResponseModel {
        /// 历史版本列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: [IotModelData]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 获取物模型历史版本列表
    ///
    /// 本接口（DescribeIotModels）用于列出物模型历史版本列表。
    @inlinable
    public func describeIotModels(_ input: DescribeIotModelsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeIotModelsResponse> {
        self.client.execute(action: "DescribeIotModels", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取物模型历史版本列表
    ///
    /// 本接口（DescribeIotModels）用于列出物模型历史版本列表。
    @inlinable
    public func describeIotModels(_ input: DescribeIotModelsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeIotModelsResponse {
        try await self.client.execute(action: "DescribeIotModels", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取物模型历史版本列表
    ///
    /// 本接口（DescribeIotModels）用于列出物模型历史版本列表。
    @inlinable
    public func describeIotModels(productId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeIotModelsResponse> {
        self.describeIotModels(.init(productId: productId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取物模型历史版本列表
    ///
    /// 本接口（DescribeIotModels）用于列出物模型历史版本列表。
    @inlinable
    public func describeIotModels(productId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeIotModelsResponse {
        try await self.describeIotModels(.init(productId: productId), region: region, logger: logger, on: eventLoop)
    }
}
