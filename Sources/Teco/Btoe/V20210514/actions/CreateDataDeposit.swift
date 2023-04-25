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

extension Btoe {
    /// CreateDataDeposit请求参数结构体
    public struct CreateDataDepositRequest: TCRequestModel {
        /// 业务数据明文(json格式字符串)，最大256kb
        public let evidenceInfo: String

        /// 存证名称(长度最大30)
        public let evidenceName: String

        /// 业务ID 透传 长度最大不超过64
        public let businessId: String?

        /// 算法类型 0 SM3, 1 SHA256, 2 SHA384 默认0
        public let hashType: UInt64?

        /// 存证描述
        public let evidenceDescription: String?

        public init(evidenceInfo: String, evidenceName: String, businessId: String? = nil, hashType: UInt64? = nil, evidenceDescription: String? = nil) {
            self.evidenceInfo = evidenceInfo
            self.evidenceName = evidenceName
            self.businessId = businessId
            self.hashType = hashType
            self.evidenceDescription = evidenceDescription
        }

        enum CodingKeys: String, CodingKey {
            case evidenceInfo = "EvidenceInfo"
            case evidenceName = "EvidenceName"
            case businessId = "BusinessId"
            case hashType = "HashType"
            case evidenceDescription = "EvidenceDescription"
        }
    }

    /// CreateDataDeposit返回参数结构体
    public struct CreateDataDepositResponse: TCResponseModel {
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

    /// 业务数据明文存证
    ///
    /// 用户通过本接口向BTOE写入待存证的业务数据明文，业务数据明文存证写入后不可修改，BTOE对业务数据明文存证生成含有电子签章的区块链存证电子凭证。
    @inlinable
    public func createDataDeposit(_ input: CreateDataDepositRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDataDepositResponse> {
        self.client.execute(action: "CreateDataDeposit", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 业务数据明文存证
    ///
    /// 用户通过本接口向BTOE写入待存证的业务数据明文，业务数据明文存证写入后不可修改，BTOE对业务数据明文存证生成含有电子签章的区块链存证电子凭证。
    @inlinable
    public func createDataDeposit(_ input: CreateDataDepositRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDataDepositResponse {
        try await self.client.execute(action: "CreateDataDeposit", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 业务数据明文存证
    ///
    /// 用户通过本接口向BTOE写入待存证的业务数据明文，业务数据明文存证写入后不可修改，BTOE对业务数据明文存证生成含有电子签章的区块链存证电子凭证。
    @inlinable
    public func createDataDeposit(evidenceInfo: String, evidenceName: String, businessId: String? = nil, hashType: UInt64? = nil, evidenceDescription: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDataDepositResponse> {
        self.createDataDeposit(.init(evidenceInfo: evidenceInfo, evidenceName: evidenceName, businessId: businessId, hashType: hashType, evidenceDescription: evidenceDescription), region: region, logger: logger, on: eventLoop)
    }

    /// 业务数据明文存证
    ///
    /// 用户通过本接口向BTOE写入待存证的业务数据明文，业务数据明文存证写入后不可修改，BTOE对业务数据明文存证生成含有电子签章的区块链存证电子凭证。
    @inlinable
    public func createDataDeposit(evidenceInfo: String, evidenceName: String, businessId: String? = nil, hashType: UInt64? = nil, evidenceDescription: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDataDepositResponse {
        try await self.createDataDeposit(.init(evidenceInfo: evidenceInfo, evidenceName: evidenceName, businessId: businessId, hashType: hashType, evidenceDescription: evidenceDescription), region: region, logger: logger, on: eventLoop)
    }
}
