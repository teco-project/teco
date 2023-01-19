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

extension Kms {
    /// ListKeyDetail请求参数结构体
    public struct ListKeyDetailRequest: TCRequestModel {
        /// 含义跟 SQL 查询的 Offset 一致，表示本次获取从按一定顺序排列数组的第 Offset 个元素开始，缺省为0
        public let offset: UInt64?

        /// 含义跟 SQL 查询的 Limit 一致，表示本次最多获取 Limit 个元素。缺省值为10，最大值为200
        public let limit: UInt64?

        /// 根据创建者角色筛选，默认 0 表示用户自己创建的cmk， 1 表示授权其它云产品自动创建的cmk
        public let role: UInt64?

        /// 根据CMK创建时间排序， 0 表示按照降序排序，1表示按照升序排序
        public let orderType: UInt64?

        /// 根据CMK状态筛选， 0表示全部CMK， 1 表示仅查询Enabled CMK， 2 表示仅查询Disabled CMK，3 表示查询PendingDelete 状态的CMK(处于计划删除状态的Key)，4 表示查询 PendingImport 状态的CMK，5 表示查询 Archived 状态的 CMK
        public let keyState: UInt64?

        /// 根据KeyId或者Alias进行模糊匹配查询
        public let searchKeyAlias: String?

        /// 根据CMK类型筛选， "TENCENT_KMS" 表示筛选密钥材料由KMS创建的CMK， "EXTERNAL" 表示筛选密钥材料需要用户导入的 EXTERNAL类型CMK，"ALL" 或者不设置表示两种类型都查询，大小写敏感。
        public let origin: String?

        /// 根据CMK的KeyUsage筛选，ALL表示筛选全部，可使用的参数为：ALL 或 ENCRYPT_DECRYPT 或 ASYMMETRIC_DECRYPT_RSA_2048 或 ASYMMETRIC_DECRYPT_SM2 或 ASYMMETRIC_SIGN_VERIFY_SM2 或 ASYMMETRIC_SIGN_VERIFY_RSA_2048 或 ASYMMETRIC_SIGN_VERIFY_ECC，为空则默认筛选ENCRYPT_DECRYPT类型
        public let keyUsage: String?

        /// 标签过滤条件
        public let tagFilters: [TagFilter]?

        /// KMS 高级版对应的 HSM 集群 ID（仅对 KMS 独占版/托管版服务实例有效）。
        public let hsmClusterId: String?

        public init(offset: UInt64? = nil, limit: UInt64? = nil, role: UInt64? = nil, orderType: UInt64? = nil, keyState: UInt64? = nil, searchKeyAlias: String? = nil, origin: String? = nil, keyUsage: String? = nil, tagFilters: [TagFilter]? = nil, hsmClusterId: String? = nil) {
            self.offset = offset
            self.limit = limit
            self.role = role
            self.orderType = orderType
            self.keyState = keyState
            self.searchKeyAlias = searchKeyAlias
            self.origin = origin
            self.keyUsage = keyUsage
            self.tagFilters = tagFilters
            self.hsmClusterId = hsmClusterId
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case role = "Role"
            case orderType = "OrderType"
            case keyState = "KeyState"
            case searchKeyAlias = "SearchKeyAlias"
            case origin = "Origin"
            case keyUsage = "KeyUsage"
            case tagFilters = "TagFilters"
            case hsmClusterId = "HsmClusterId"
        }
    }

    /// ListKeyDetail返回参数结构体
    public struct ListKeyDetailResponse: TCResponseModel {
        /// CMK的总数量
        public let totalCount: UInt64

        /// 返回的属性信息列表。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let keyMetadatas: [KeyMetadata]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case keyMetadatas = "KeyMetadatas"
            case requestId = "RequestId"
        }
    }

    /// 获取主密钥列表详情
    ///
    /// 根据指定Offset和Limit获取主密钥列表详情。
    @inlinable
    public func listKeyDetail(_ input: ListKeyDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListKeyDetailResponse> {
        self.client.execute(action: "ListKeyDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取主密钥列表详情
    ///
    /// 根据指定Offset和Limit获取主密钥列表详情。
    @inlinable
    public func listKeyDetail(_ input: ListKeyDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListKeyDetailResponse {
        try await self.client.execute(action: "ListKeyDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取主密钥列表详情
    ///
    /// 根据指定Offset和Limit获取主密钥列表详情。
    @inlinable
    public func listKeyDetail(offset: UInt64? = nil, limit: UInt64? = nil, role: UInt64? = nil, orderType: UInt64? = nil, keyState: UInt64? = nil, searchKeyAlias: String? = nil, origin: String? = nil, keyUsage: String? = nil, tagFilters: [TagFilter]? = nil, hsmClusterId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListKeyDetailResponse> {
        self.listKeyDetail(ListKeyDetailRequest(offset: offset, limit: limit, role: role, orderType: orderType, keyState: keyState, searchKeyAlias: searchKeyAlias, origin: origin, keyUsage: keyUsage, tagFilters: tagFilters, hsmClusterId: hsmClusterId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取主密钥列表详情
    ///
    /// 根据指定Offset和Limit获取主密钥列表详情。
    @inlinable
    public func listKeyDetail(offset: UInt64? = nil, limit: UInt64? = nil, role: UInt64? = nil, orderType: UInt64? = nil, keyState: UInt64? = nil, searchKeyAlias: String? = nil, origin: String? = nil, keyUsage: String? = nil, tagFilters: [TagFilter]? = nil, hsmClusterId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListKeyDetailResponse {
        try await self.listKeyDetail(ListKeyDetailRequest(offset: offset, limit: limit, role: role, orderType: orderType, keyState: keyState, searchKeyAlias: searchKeyAlias, origin: origin, keyUsage: keyUsage, tagFilters: tagFilters, hsmClusterId: hsmClusterId), region: region, logger: logger, on: eventLoop)
    }
}
