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

extension Iotexplorer {
    /// DescribeBatchProduction请求参数结构体
    public struct DescribeBatchProductionRequest: TCRequest {
        /// 产品ID
        public let productId: String

        /// 量产ID
        public let batchProductionId: String

        public init(productId: String, batchProductionId: String) {
            self.productId = productId
            self.batchProductionId = batchProductionId
        }

        enum CodingKeys: String, CodingKey {
            case productId = "ProductId"
            case batchProductionId = "BatchProductionId"
        }
    }

    /// DescribeBatchProduction返回参数结构体
    public struct DescribeBatchProductionResponse: TCResponse {
        /// 量产数量。
        public let batchCnt: Int64

        /// 烧录方式。
        public let burnMethod: Int64

        /// 创建时间。
        public let createTime: Int64

        /// 下载URL。
        public let downloadUrl: String

        /// 生成方式。
        public let generationMethod: Int64

        /// 上传URL。
        public let uploadUrl: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case batchCnt = "BatchCnt"
            case burnMethod = "BurnMethod"
            case createTime = "CreateTime"
            case downloadUrl = "DownloadUrl"
            case generationMethod = "GenerationMethod"
            case uploadUrl = "UploadUrl"
            case requestId = "RequestId"
        }
    }

    /// 获取量产详情
    ///
    /// 获取量产详情信息。
    @inlinable
    public func describeBatchProduction(_ input: DescribeBatchProductionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBatchProductionResponse> {
        self.client.execute(action: "DescribeBatchProduction", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取量产详情
    ///
    /// 获取量产详情信息。
    @inlinable
    public func describeBatchProduction(_ input: DescribeBatchProductionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBatchProductionResponse {
        try await self.client.execute(action: "DescribeBatchProduction", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取量产详情
    ///
    /// 获取量产详情信息。
    @inlinable
    public func describeBatchProduction(productId: String, batchProductionId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBatchProductionResponse> {
        self.describeBatchProduction(.init(productId: productId, batchProductionId: batchProductionId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取量产详情
    ///
    /// 获取量产详情信息。
    @inlinable
    public func describeBatchProduction(productId: String, batchProductionId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBatchProductionResponse {
        try await self.describeBatchProduction(.init(productId: productId, batchProductionId: batchProductionId), region: region, logger: logger, on: eventLoop)
    }
}
