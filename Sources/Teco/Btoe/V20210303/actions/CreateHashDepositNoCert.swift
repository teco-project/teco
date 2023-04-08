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

import TecoCore

extension Btoe {
    /// CreateHashDepositNoCert请求参数结构体
    public struct CreateHashDepositNoCertRequest: TCRequestModel {
        /// 数据hash
        public let evidenceHash: String

        /// 该字段为透传字段，方便调用方做业务处理， 长度最大不超过64
        public let businessId: String?

        /// 算法类型 0 SM3, 1 SHA256, 2 SHA384 默认0
        public let hashType: UInt64?

        /// 业务扩展信息
        public let evidenceInfo: String?

        public init(evidenceHash: String, businessId: String? = nil, hashType: UInt64? = nil, evidenceInfo: String? = nil) {
            self.evidenceHash = evidenceHash
            self.businessId = businessId
            self.hashType = hashType
            self.evidenceInfo = evidenceInfo
        }

        enum CodingKeys: String, CodingKey {
            case evidenceHash = "EvidenceHash"
            case businessId = "BusinessId"
            case hashType = "HashType"
            case evidenceInfo = "EvidenceInfo"
        }
    }

    /// CreateHashDepositNoCert返回参数结构体
    public struct CreateHashDepositNoCertResponse: TCResponseModel {
        /// 透传字段
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let businessId: String?

        /// 存证编码
        public let evidenceId: String

        /// 上链时间
        public let evidenceTime: String

        /// 区块链交易哈希
        public let evidenceTxHash: String

        /// 区块高度
        public let blockchainHeight: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case businessId = "BusinessId"
            case evidenceId = "EvidenceId"
            case evidenceTime = "EvidenceTime"
            case evidenceTxHash = "EvidenceTxHash"
            case blockchainHeight = "BlockchainHeight"
            case requestId = "RequestId"
        }
    }

    /// 哈希上链存证(无证书)
    ///
    /// 用户通过本接口向BTOE写入待存证的原文数据Hash值，BTOE对业务数据Hash值存证上链，本接口不生成区块链存证电子凭证。
    @available(*, unavailable, message: "功能迭代，已上线更高版本的接口2021-05-14")
    @inlinable
    public func createHashDepositNoCert(_ input: CreateHashDepositNoCertRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateHashDepositNoCertResponse> {
        fatalError("CreateHashDepositNoCert is no longer available.")
    }

    /// 哈希上链存证(无证书)
    ///
    /// 用户通过本接口向BTOE写入待存证的原文数据Hash值，BTOE对业务数据Hash值存证上链，本接口不生成区块链存证电子凭证。
    @available(*, unavailable, message: "功能迭代，已上线更高版本的接口2021-05-14")
    @inlinable
    public func createHashDepositNoCert(_ input: CreateHashDepositNoCertRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateHashDepositNoCertResponse {
        fatalError("CreateHashDepositNoCert is no longer available.")
    }

    /// 哈希上链存证(无证书)
    ///
    /// 用户通过本接口向BTOE写入待存证的原文数据Hash值，BTOE对业务数据Hash值存证上链，本接口不生成区块链存证电子凭证。
    @available(*, unavailable, message: "功能迭代，已上线更高版本的接口2021-05-14")
    @inlinable
    public func createHashDepositNoCert(evidenceHash: String, businessId: String? = nil, hashType: UInt64? = nil, evidenceInfo: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateHashDepositNoCertResponse> {
        fatalError("CreateHashDepositNoCert is no longer available.")
    }

    /// 哈希上链存证(无证书)
    ///
    /// 用户通过本接口向BTOE写入待存证的原文数据Hash值，BTOE对业务数据Hash值存证上链，本接口不生成区块链存证电子凭证。
    @available(*, unavailable, message: "功能迭代，已上线更高版本的接口2021-05-14")
    @inlinable
    public func createHashDepositNoCert(evidenceHash: String, businessId: String? = nil, hashType: UInt64? = nil, evidenceInfo: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateHashDepositNoCertResponse {
        fatalError("CreateHashDepositNoCert is no longer available.")
    }
}
