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

extension Casb {
    /// CopyCryptoColumnPolicy请求参数结构体
    public struct CopyCryptoColumnPolicyRequest: TCRequestModel {
        /// 实例Id
        public let casbId: String

        /// 元数据id
        public let metaDataId: String

        /// 目标实例Id 如果和实例Id相同则为同CasbId下的策略复制
        public let dstCasbId: String

        /// 目标实例Id 如果和[元数据id]相同则为同元数据下的策略复制
        public let dstMetaDataId: String

        /// 筛选来源数据库的表
        public let srcTableFilter: [CryptoCopyColumnPolicyTableFilter]?

        /// 复制同元数据下的策略，需要填写目标数据库名
        public let dstDatabaseName: String?

        public init(casbId: String, metaDataId: String, dstCasbId: String, dstMetaDataId: String, srcTableFilter: [CryptoCopyColumnPolicyTableFilter]? = nil, dstDatabaseName: String? = nil) {
            self.casbId = casbId
            self.metaDataId = metaDataId
            self.dstCasbId = dstCasbId
            self.dstMetaDataId = dstMetaDataId
            self.srcTableFilter = srcTableFilter
            self.dstDatabaseName = dstDatabaseName
        }

        enum CodingKeys: String, CodingKey {
            case casbId = "CasbId"
            case metaDataId = "MetaDataId"
            case dstCasbId = "DstCasbId"
            case dstMetaDataId = "DstMetaDataId"
            case srcTableFilter = "SrcTableFilter"
            case dstDatabaseName = "DstDatabaseName"
        }
    }

    /// CopyCryptoColumnPolicy返回参数结构体
    public struct CopyCryptoColumnPolicyResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 复制字段策略
    ///
    /// 同region下 根据用户输入的CasbId,MetaDataId 复制策略到DstCasbId,MetaDataId中。
    /// 场景1：
    /// 相同CasbId，不同MetadataId 下策略复制
    /// 场景2：
    /// 不同Casbid,不同MetaDataId 下策略复制
    /// 场景3:
    /// 相同CasbId,相同MetaDataId 且 DatabaseName不同 策略复制
    @inlinable @discardableResult
    public func copyCryptoColumnPolicy(_ input: CopyCryptoColumnPolicyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CopyCryptoColumnPolicyResponse> {
        self.client.execute(action: "CopyCryptoColumnPolicy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 复制字段策略
    ///
    /// 同region下 根据用户输入的CasbId,MetaDataId 复制策略到DstCasbId,MetaDataId中。
    /// 场景1：
    /// 相同CasbId，不同MetadataId 下策略复制
    /// 场景2：
    /// 不同Casbid,不同MetaDataId 下策略复制
    /// 场景3:
    /// 相同CasbId,相同MetaDataId 且 DatabaseName不同 策略复制
    @inlinable @discardableResult
    public func copyCryptoColumnPolicy(_ input: CopyCryptoColumnPolicyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CopyCryptoColumnPolicyResponse {
        try await self.client.execute(action: "CopyCryptoColumnPolicy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 复制字段策略
    ///
    /// 同region下 根据用户输入的CasbId,MetaDataId 复制策略到DstCasbId,MetaDataId中。
    /// 场景1：
    /// 相同CasbId，不同MetadataId 下策略复制
    /// 场景2：
    /// 不同Casbid,不同MetaDataId 下策略复制
    /// 场景3:
    /// 相同CasbId,相同MetaDataId 且 DatabaseName不同 策略复制
    @inlinable @discardableResult
    public func copyCryptoColumnPolicy(casbId: String, metaDataId: String, dstCasbId: String, dstMetaDataId: String, srcTableFilter: [CryptoCopyColumnPolicyTableFilter]? = nil, dstDatabaseName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CopyCryptoColumnPolicyResponse> {
        self.copyCryptoColumnPolicy(CopyCryptoColumnPolicyRequest(casbId: casbId, metaDataId: metaDataId, dstCasbId: dstCasbId, dstMetaDataId: dstMetaDataId, srcTableFilter: srcTableFilter, dstDatabaseName: dstDatabaseName), region: region, logger: logger, on: eventLoop)
    }

    /// 复制字段策略
    ///
    /// 同region下 根据用户输入的CasbId,MetaDataId 复制策略到DstCasbId,MetaDataId中。
    /// 场景1：
    /// 相同CasbId，不同MetadataId 下策略复制
    /// 场景2：
    /// 不同Casbid,不同MetaDataId 下策略复制
    /// 场景3:
    /// 相同CasbId,相同MetaDataId 且 DatabaseName不同 策略复制
    @inlinable @discardableResult
    public func copyCryptoColumnPolicy(casbId: String, metaDataId: String, dstCasbId: String, dstMetaDataId: String, srcTableFilter: [CryptoCopyColumnPolicyTableFilter]? = nil, dstDatabaseName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CopyCryptoColumnPolicyResponse {
        try await self.copyCryptoColumnPolicy(CopyCryptoColumnPolicyRequest(casbId: casbId, metaDataId: metaDataId, dstCasbId: dstCasbId, dstMetaDataId: dstMetaDataId, srcTableFilter: srcTableFilter, dstDatabaseName: dstDatabaseName), region: region, logger: logger, on: eventLoop)
    }
}
