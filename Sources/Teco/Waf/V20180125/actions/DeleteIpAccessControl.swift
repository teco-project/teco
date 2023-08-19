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

extension Waf {
    /// DeleteIpAccessControl请求参数结构体
    public struct DeleteIpAccessControlRequest: TCRequest {
        /// 域名
        public let domain: String

        /// 删除的ip数组
        public let items: [String]

        /// 是否删除对应的域名下的所有黑/白IP名单，true表示全部删除，false表示只删除指定ip名单
        public let deleteAll: Bool?

        /// 是否为多域名黑白名单
        public let sourceType: String?

        public init(domain: String, items: [String], deleteAll: Bool? = nil, sourceType: String? = nil) {
            self.domain = domain
            self.items = items
            self.deleteAll = deleteAll
            self.sourceType = sourceType
        }

        enum CodingKeys: String, CodingKey {
            case domain = "Domain"
            case items = "Items"
            case deleteAll = "DeleteAll"
            case sourceType = "SourceType"
        }
    }

    /// DeleteIpAccessControl返回参数结构体
    public struct DeleteIpAccessControlResponse: TCResponse {
        /// 删除失败的条目
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let failedItems: String?

        /// 删除失败的条目数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let failedCount: Int64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case failedItems = "FailedItems"
            case failedCount = "FailedCount"
            case requestId = "RequestId"
        }
    }

    /// Waf IP黑白名单Delete接口
    @inlinable
    public func deleteIpAccessControl(_ input: DeleteIpAccessControlRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteIpAccessControlResponse> {
        self.client.execute(action: "DeleteIpAccessControl", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Waf IP黑白名单Delete接口
    @inlinable
    public func deleteIpAccessControl(_ input: DeleteIpAccessControlRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteIpAccessControlResponse {
        try await self.client.execute(action: "DeleteIpAccessControl", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// Waf IP黑白名单Delete接口
    @inlinable
    public func deleteIpAccessControl(domain: String, items: [String], deleteAll: Bool? = nil, sourceType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteIpAccessControlResponse> {
        self.deleteIpAccessControl(.init(domain: domain, items: items, deleteAll: deleteAll, sourceType: sourceType), region: region, logger: logger, on: eventLoop)
    }

    /// Waf IP黑白名单Delete接口
    @inlinable
    public func deleteIpAccessControl(domain: String, items: [String], deleteAll: Bool? = nil, sourceType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteIpAccessControlResponse {
        try await self.deleteIpAccessControl(.init(domain: domain, items: items, deleteAll: deleteAll, sourceType: sourceType), region: region, logger: logger, on: eventLoop)
    }
}
