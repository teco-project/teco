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

extension Kms {
    /// ListKeys请求参数结构体
    public struct ListKeysRequest: TCPaginatedRequest {
        /// 含义跟 SQL 查询的 Offset 一致，表示本次获取从按一定顺序排列数组的第 Offset 个元素开始，缺省为0
        public let offset: UInt64?

        /// 含义跟 SQL 查询的 Limit 一致，表示本次获最多获取 Limit 个元素。缺省值为10，最大值为200
        public let limit: UInt64?

        /// 根据创建者角色筛选，默认 0 表示用户自己创建的cmk， 1 表示授权其它云产品自动创建的cmk
        public let role: UInt64?

        /// KMS 高级版对应的 HSM 集群 ID（仅对 KMS 独占版/托管版服务实例有效）。
        public let hsmClusterId: String?

        public init(offset: UInt64? = nil, limit: UInt64? = nil, role: UInt64? = nil, hsmClusterId: String? = nil) {
            self.offset = offset
            self.limit = limit
            self.role = role
            self.hsmClusterId = hsmClusterId
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case role = "Role"
            case hsmClusterId = "HsmClusterId"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: ListKeysResponse) -> ListKeysRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), (self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, role: self.role, hsmClusterId: self.hsmClusterId)
        }
    }

    /// ListKeys返回参数结构体
    public struct ListKeysResponse: TCPaginatedResponse {
        /// CMK列表数组
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let keys: [Key]?

        /// CMK的总数量
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case keys = "Keys"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned ``Key`` list from the paginated response.
        public func getItems() -> [Key] {
            self.keys ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 获取主密钥列表
    ///
    /// 列出账号下面状态为Enabled， Disabled 和 PendingImport 的CMK KeyId 列表
    @inlinable
    public func listKeys(_ input: ListKeysRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListKeysResponse> {
        self.client.execute(action: "ListKeys", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取主密钥列表
    ///
    /// 列出账号下面状态为Enabled， Disabled 和 PendingImport 的CMK KeyId 列表
    @inlinable
    public func listKeys(_ input: ListKeysRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListKeysResponse {
        try await self.client.execute(action: "ListKeys", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取主密钥列表
    ///
    /// 列出账号下面状态为Enabled， Disabled 和 PendingImport 的CMK KeyId 列表
    @inlinable
    public func listKeys(offset: UInt64? = nil, limit: UInt64? = nil, role: UInt64? = nil, hsmClusterId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListKeysResponse> {
        self.listKeys(.init(offset: offset, limit: limit, role: role, hsmClusterId: hsmClusterId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取主密钥列表
    ///
    /// 列出账号下面状态为Enabled， Disabled 和 PendingImport 的CMK KeyId 列表
    @inlinable
    public func listKeys(offset: UInt64? = nil, limit: UInt64? = nil, role: UInt64? = nil, hsmClusterId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListKeysResponse {
        try await self.listKeys(.init(offset: offset, limit: limit, role: role, hsmClusterId: hsmClusterId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取主密钥列表
    ///
    /// 列出账号下面状态为Enabled， Disabled 和 PendingImport 的CMK KeyId 列表
    @inlinable
    public func listKeysPaginated(_ input: ListKeysRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [Key])> {
        self.client.paginate(input: input, region: region, command: self.listKeys, logger: logger, on: eventLoop)
    }

    /// 获取主密钥列表
    ///
    /// 列出账号下面状态为Enabled， Disabled 和 PendingImport 的CMK KeyId 列表
    @inlinable @discardableResult
    public func listKeysPaginated(_ input: ListKeysRequest, region: TCRegion? = nil, onResponse: @escaping (ListKeysResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.listKeys, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取主密钥列表
    ///
    /// 列出账号下面状态为Enabled， Disabled 和 PendingImport 的CMK KeyId 列表
    ///
    /// - Returns: `AsyncSequence`s of ``Key`` and ``ListKeysResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func listKeysPaginator(_ input: ListKeysRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<ListKeysRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.listKeys, logger: logger, on: eventLoop)
    }
}
