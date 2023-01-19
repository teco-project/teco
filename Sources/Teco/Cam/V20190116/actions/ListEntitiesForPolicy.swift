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

extension Cam {
    /// ListEntitiesForPolicy请求参数结构体
    public struct ListEntitiesForPolicyRequest: TCRequestModel {
        /// 策略 id
        public let policyId: UInt64

        /// 页码，默认值是 1，从 1 开始
        public let page: UInt64?

        /// 每页大小，默认值是 20
        public let rp: UInt64?

        /// 可取值 'All'、'User'、'Group' 和 'Role'，'All' 表示获取所有实体类型，'User' 表示只获取子账号，'Group' 表示只获取用户组，'Role' 表示只获取角色，默认取 'All'
        public let entityFilter: String?

        public init(policyId: UInt64, page: UInt64? = nil, rp: UInt64? = nil, entityFilter: String? = nil) {
            self.policyId = policyId
            self.page = page
            self.rp = rp
            self.entityFilter = entityFilter
        }

        enum CodingKeys: String, CodingKey {
            case policyId = "PolicyId"
            case page = "Page"
            case rp = "Rp"
            case entityFilter = "EntityFilter"
        }
    }

    /// ListEntitiesForPolicy返回参数结构体
    public struct ListEntitiesForPolicyResponse: TCResponseModel {
        /// 实体总数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalNum: UInt64?

        /// 实体列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let list: [AttachEntityOfPolicy]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalNum = "TotalNum"
            case list = "List"
            case requestId = "RequestId"
        }
    }

    /// 查询策略关联的实体列表
    ///
    /// 本接口（ListEntitiesForPolicy）可用于查询策略关联的实体列表。
    @inlinable
    public func listEntitiesForPolicy(_ input: ListEntitiesForPolicyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListEntitiesForPolicyResponse> {
        self.client.execute(action: "ListEntitiesForPolicy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询策略关联的实体列表
    ///
    /// 本接口（ListEntitiesForPolicy）可用于查询策略关联的实体列表。
    @inlinable
    public func listEntitiesForPolicy(_ input: ListEntitiesForPolicyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListEntitiesForPolicyResponse {
        try await self.client.execute(action: "ListEntitiesForPolicy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询策略关联的实体列表
    ///
    /// 本接口（ListEntitiesForPolicy）可用于查询策略关联的实体列表。
    @inlinable
    public func listEntitiesForPolicy(policyId: UInt64, page: UInt64? = nil, rp: UInt64? = nil, entityFilter: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListEntitiesForPolicyResponse> {
        self.listEntitiesForPolicy(ListEntitiesForPolicyRequest(policyId: policyId, page: page, rp: rp, entityFilter: entityFilter), region: region, logger: logger, on: eventLoop)
    }

    /// 查询策略关联的实体列表
    ///
    /// 本接口（ListEntitiesForPolicy）可用于查询策略关联的实体列表。
    @inlinable
    public func listEntitiesForPolicy(policyId: UInt64, page: UInt64? = nil, rp: UInt64? = nil, entityFilter: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListEntitiesForPolicyResponse {
        try await self.listEntitiesForPolicy(ListEntitiesForPolicyRequest(policyId: policyId, page: page, rp: rp, entityFilter: entityFilter), region: region, logger: logger, on: eventLoop)
    }
}
