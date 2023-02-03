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

extension Btoe {
    /// CreateHashDepositNoSeal请求参数结构体
    public struct CreateHashDepositNoSealRequest: TCRequestModel {
        /// 数据hash
        public let evidenceHash: String

        /// 该字段为透传字段，方便调用方做业务处理， 长度最大不超过64
        public let businessId: String?

        /// 业务扩展信息
        public let evidenceInfo: String?

        public init(evidenceHash: String, businessId: String? = nil, evidenceInfo: String? = nil) {
            self.evidenceHash = evidenceHash
            self.businessId = businessId
            self.evidenceInfo = evidenceInfo
        }

        enum CodingKeys: String, CodingKey {
            case evidenceHash = "EvidenceHash"
            case businessId = "BusinessId"
            case evidenceInfo = "EvidenceInfo"
        }
    }

    /// CreateHashDepositNoSeal返回参数结构体
    public struct CreateHashDepositNoSealResponse: TCResponseModel {
        /// 透传字段
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let businessId: String?

        /// 存证编码
        public let evidenceId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case businessId = "BusinessId"
            case evidenceId = "EvidenceId"
            case requestId = "RequestId"
        }
    }

    /// 哈希上链存证(有证书，无签章)
    ///
    /// 用户通过本接口向BTOE写入待存证的原文数据Hash值，BTOE对业务数据Hash值存证上链，并生成无电子签章的区块链存证电子凭证。
    @inlinable
    public func createHashDepositNoSeal(_ input: CreateHashDepositNoSealRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateHashDepositNoSealResponse> {
        self.client.execute(action: "CreateHashDepositNoSeal", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 哈希上链存证(有证书，无签章)
    ///
    /// 用户通过本接口向BTOE写入待存证的原文数据Hash值，BTOE对业务数据Hash值存证上链，并生成无电子签章的区块链存证电子凭证。
    @inlinable
    public func createHashDepositNoSeal(_ input: CreateHashDepositNoSealRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateHashDepositNoSealResponse {
        try await self.client.execute(action: "CreateHashDepositNoSeal", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 哈希上链存证(有证书，无签章)
    ///
    /// 用户通过本接口向BTOE写入待存证的原文数据Hash值，BTOE对业务数据Hash值存证上链，并生成无电子签章的区块链存证电子凭证。
    @inlinable
    public func createHashDepositNoSeal(evidenceHash: String, businessId: String? = nil, evidenceInfo: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateHashDepositNoSealResponse> {
        let input = CreateHashDepositNoSealRequest(evidenceHash: evidenceHash, businessId: businessId, evidenceInfo: evidenceInfo)
        return self.client.execute(action: "CreateHashDepositNoSeal", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 哈希上链存证(有证书，无签章)
    ///
    /// 用户通过本接口向BTOE写入待存证的原文数据Hash值，BTOE对业务数据Hash值存证上链，并生成无电子签章的区块链存证电子凭证。
    @inlinable
    public func createHashDepositNoSeal(evidenceHash: String, businessId: String? = nil, evidenceInfo: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateHashDepositNoSealResponse {
        let input = CreateHashDepositNoSealRequest(evidenceHash: evidenceHash, businessId: businessId, evidenceInfo: evidenceInfo)
        return try await self.client.execute(action: "CreateHashDepositNoSeal", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
