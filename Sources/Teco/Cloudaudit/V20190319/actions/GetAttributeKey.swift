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

extension Cloudaudit {
    /// GetAttributeKey请求参数结构体
    public struct GetAttributeKeyRequest: TCRequest {
        /// 网站类型，取值范围是zh和en。如果不传值默认zh
        public let websiteType: String?

        public init(websiteType: String? = nil) {
            self.websiteType = websiteType
        }

        enum CodingKeys: String, CodingKey {
            case websiteType = "WebsiteType"
        }
    }

    /// GetAttributeKey返回参数结构体
    public struct GetAttributeKeyResponse: TCResponse {
        /// AttributeKey的有效取值范围
        public let attributeKeyDetails: [AttributeKeyDetail]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case attributeKeyDetails = "AttributeKeyDetails"
            case requestId = "RequestId"
        }
    }

    /// 查询AttributeKey的有效取值范围
    @inlinable
    public func getAttributeKey(_ input: GetAttributeKeyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetAttributeKeyResponse> {
        self.client.execute(action: "GetAttributeKey", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询AttributeKey的有效取值范围
    @inlinable
    public func getAttributeKey(_ input: GetAttributeKeyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetAttributeKeyResponse {
        try await self.client.execute(action: "GetAttributeKey", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询AttributeKey的有效取值范围
    @inlinable
    public func getAttributeKey(websiteType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetAttributeKeyResponse> {
        self.getAttributeKey(.init(websiteType: websiteType), region: region, logger: logger, on: eventLoop)
    }

    /// 查询AttributeKey的有效取值范围
    @inlinable
    public func getAttributeKey(websiteType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetAttributeKeyResponse {
        try await self.getAttributeKey(.init(websiteType: websiteType), region: region, logger: logger, on: eventLoop)
    }
}
