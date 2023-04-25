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

extension Cloudaudit {
    /// ListCosEnableRegion请求参数结构体
    public struct ListCosEnableRegionRequest: TCRequestModel {
        /// 站点类型。zh表示中国区，en表示国际区。默认中国区。
        public let websiteType: String?

        public init(websiteType: String? = nil) {
            self.websiteType = websiteType
        }

        enum CodingKeys: String, CodingKey {
            case websiteType = "WebsiteType"
        }
    }

    /// ListCosEnableRegion返回参数结构体
    public struct ListCosEnableRegionResponse: TCResponseModel {
        /// 云审计支持的cos可用区
        public let enableRegions: [CosRegionInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case enableRegions = "EnableRegions"
            case requestId = "RequestId"
        }
    }

    /// 查询云审计支持的cos可用区
    @inlinable
    public func listCosEnableRegion(_ input: ListCosEnableRegionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListCosEnableRegionResponse> {
        self.client.execute(action: "ListCosEnableRegion", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询云审计支持的cos可用区
    @inlinable
    public func listCosEnableRegion(_ input: ListCosEnableRegionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListCosEnableRegionResponse {
        try await self.client.execute(action: "ListCosEnableRegion", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询云审计支持的cos可用区
    @inlinable
    public func listCosEnableRegion(websiteType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListCosEnableRegionResponse> {
        self.listCosEnableRegion(.init(websiteType: websiteType), region: region, logger: logger, on: eventLoop)
    }

    /// 查询云审计支持的cos可用区
    @inlinable
    public func listCosEnableRegion(websiteType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListCosEnableRegionResponse {
        try await self.listCosEnableRegion(.init(websiteType: websiteType), region: region, logger: logger, on: eventLoop)
    }
}
