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

extension Btoe {
    /// CreateWebpageDeposit请求参数结构体
    public struct CreateWebpageDepositRequest: TCRequest {
        /// 存证名称(长度最大30)
        public let evidenceName: String

        /// 网页链接
        public let evidenceUrl: String

        /// 业务ID 透传 长度最大不超过64
        public let businessId: String?

        /// 算法类型 0 SM3, 1 SHA256, 2 SHA384 默认0
        public let hashType: UInt64?

        /// 存证描述
        public let evidenceDescription: String?

        public init(evidenceName: String, evidenceUrl: String, businessId: String? = nil, hashType: UInt64? = nil, evidenceDescription: String? = nil) {
            self.evidenceName = evidenceName
            self.evidenceUrl = evidenceUrl
            self.businessId = businessId
            self.hashType = hashType
            self.evidenceDescription = evidenceDescription
        }

        enum CodingKeys: String, CodingKey {
            case evidenceName = "EvidenceName"
            case evidenceUrl = "EvidenceUrl"
            case businessId = "BusinessId"
            case hashType = "HashType"
            case evidenceDescription = "EvidenceDescription"
        }
    }

    /// CreateWebpageDeposit返回参数结构体
    public struct CreateWebpageDepositResponse: TCResponse {
        /// 业务ID 透传 长度最大不超过64
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let businessId: String?

        /// 请求成功，返回存证编码,用于查询存证后续业务数据
        public let evidenceId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case businessId = "BusinessId"
            case evidenceId = "EvidenceId"
            case requestId = "RequestId"
        }
    }

    /// 网页快照存证
    ///
    /// 用户通过本接口向BTOE提交待存证网页的URL，BTOE对URL进行网页快照，并将快照图片存储，将网页快照Hash值存证上链，并生成含有电子签章的区块链存证电子凭证。URL格式必须以http、https开头。
    @available(*, unavailable, message: "功能迭代，已上线更高版本的接口2021-05-14")
    @inlinable
    public func createWebpageDeposit(_ input: CreateWebpageDepositRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateWebpageDepositResponse> {
        fatalError("'CreateWebpageDeposit' is no longer available.")
    }

    /// 网页快照存证
    ///
    /// 用户通过本接口向BTOE提交待存证网页的URL，BTOE对URL进行网页快照，并将快照图片存储，将网页快照Hash值存证上链，并生成含有电子签章的区块链存证电子凭证。URL格式必须以http、https开头。
    @available(*, unavailable, message: "功能迭代，已上线更高版本的接口2021-05-14")
    @inlinable
    public func createWebpageDeposit(_ input: CreateWebpageDepositRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateWebpageDepositResponse {
        fatalError("'CreateWebpageDeposit' is no longer available.")
    }

    /// 网页快照存证
    ///
    /// 用户通过本接口向BTOE提交待存证网页的URL，BTOE对URL进行网页快照，并将快照图片存储，将网页快照Hash值存证上链，并生成含有电子签章的区块链存证电子凭证。URL格式必须以http、https开头。
    @available(*, unavailable, message: "功能迭代，已上线更高版本的接口2021-05-14")
    @inlinable
    public func createWebpageDeposit(evidenceName: String, evidenceUrl: String, businessId: String? = nil, hashType: UInt64? = nil, evidenceDescription: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateWebpageDepositResponse> {
        fatalError("'CreateWebpageDeposit' is no longer available.")
    }

    /// 网页快照存证
    ///
    /// 用户通过本接口向BTOE提交待存证网页的URL，BTOE对URL进行网页快照，并将快照图片存储，将网页快照Hash值存证上链，并生成含有电子签章的区块链存证电子凭证。URL格式必须以http、https开头。
    @available(*, unavailable, message: "功能迭代，已上线更高版本的接口2021-05-14")
    @inlinable
    public func createWebpageDeposit(evidenceName: String, evidenceUrl: String, businessId: String? = nil, hashType: UInt64? = nil, evidenceDescription: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateWebpageDepositResponse {
        fatalError("'CreateWebpageDeposit' is no longer available.")
    }
}
