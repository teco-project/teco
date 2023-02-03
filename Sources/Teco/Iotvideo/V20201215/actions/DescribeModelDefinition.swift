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

extension Iotvideo {
    /// DescribeModelDefinition请求参数结构体
    public struct DescribeModelDefinitionRequest: TCRequestModel {
        /// 产品ID
        public let productId: String

        public init(productId: String) {
            self.productId = productId
        }

        enum CodingKeys: String, CodingKey {
            case productId = "ProductId"
        }
    }

    /// DescribeModelDefinition返回参数结构体
    public struct DescribeModelDefinitionResponse: TCResponseModel {
        /// 产品数据模板
        public let model: ProductModelDefinition

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case model = "Model"
            case requestId = "RequestId"
        }
    }

    /// 查询产品数据模板
    ///
    /// 查询产品配置的数据模板信息
    @inlinable
    public func describeModelDefinition(_ input: DescribeModelDefinitionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeModelDefinitionResponse> {
        self.client.execute(action: "DescribeModelDefinition", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询产品数据模板
    ///
    /// 查询产品配置的数据模板信息
    @inlinable
    public func describeModelDefinition(_ input: DescribeModelDefinitionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeModelDefinitionResponse {
        try await self.client.execute(action: "DescribeModelDefinition", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询产品数据模板
    ///
    /// 查询产品配置的数据模板信息
    @inlinable
    public func describeModelDefinition(productId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeModelDefinitionResponse> {
        let input = DescribeModelDefinitionRequest(productId: productId)
        return self.client.execute(action: "DescribeModelDefinition", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询产品数据模板
    ///
    /// 查询产品配置的数据模板信息
    @inlinable
    public func describeModelDefinition(productId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeModelDefinitionResponse {
        let input = DescribeModelDefinitionRequest(productId: productId)
        return try await self.client.execute(action: "DescribeModelDefinition", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
