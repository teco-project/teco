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

extension Trp {
    /// CreateCorporationOrder请求参数结构体
    public struct CreateCorporationOrderRequest: TCRequestModel {
        /// 企业名称
        public let corpName: String

        /// 所有者ID
        public let owner: String

        /// 溯源码额度
        public let codeQuota: UInt64

        /// 额度过期时间
        public let expireTime: String

        /// 金额
        public let amount: Int64

        /// 企业ID
        public let corpId: UInt64?

        /// 联系人
        public let contactPerson: String?

        /// 联系电话
        public let contactNumber: String?

        /// 备注
        public let remark: String?

        public init(corpName: String, owner: String, codeQuota: UInt64, expireTime: String, amount: Int64, corpId: UInt64? = nil, contactPerson: String? = nil, contactNumber: String? = nil, remark: String? = nil) {
            self.corpName = corpName
            self.owner = owner
            self.codeQuota = codeQuota
            self.expireTime = expireTime
            self.amount = amount
            self.corpId = corpId
            self.contactPerson = contactPerson
            self.contactNumber = contactNumber
            self.remark = remark
        }

        enum CodingKeys: String, CodingKey {
            case corpName = "CorpName"
            case owner = "Owner"
            case codeQuota = "CodeQuota"
            case expireTime = "ExpireTime"
            case amount = "Amount"
            case corpId = "CorpId"
            case contactPerson = "ContactPerson"
            case contactNumber = "ContactNumber"
            case remark = "Remark"
        }
    }

    /// CreateCorporationOrder返回参数结构体
    public struct CreateCorporationOrderResponse: TCResponseModel {
        /// 企业ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let corpId: UInt64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case corpId = "CorpId"
            case requestId = "RequestId"
        }
    }

    /// 以订单方式新建企业
    ///
    /// 以订单方式新建企业信息/配额信息
    @inlinable
    public func createCorporationOrder(_ input: CreateCorporationOrderRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateCorporationOrderResponse> {
        self.client.execute(action: "CreateCorporationOrder", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 以订单方式新建企业
    ///
    /// 以订单方式新建企业信息/配额信息
    @inlinable
    public func createCorporationOrder(_ input: CreateCorporationOrderRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCorporationOrderResponse {
        try await self.client.execute(action: "CreateCorporationOrder", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 以订单方式新建企业
    ///
    /// 以订单方式新建企业信息/配额信息
    @inlinable
    public func createCorporationOrder(corpName: String, owner: String, codeQuota: UInt64, expireTime: String, amount: Int64, corpId: UInt64? = nil, contactPerson: String? = nil, contactNumber: String? = nil, remark: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateCorporationOrderResponse> {
        self.createCorporationOrder(.init(corpName: corpName, owner: owner, codeQuota: codeQuota, expireTime: expireTime, amount: amount, corpId: corpId, contactPerson: contactPerson, contactNumber: contactNumber, remark: remark), region: region, logger: logger, on: eventLoop)
    }

    /// 以订单方式新建企业
    ///
    /// 以订单方式新建企业信息/配额信息
    @inlinable
    public func createCorporationOrder(corpName: String, owner: String, codeQuota: UInt64, expireTime: String, amount: Int64, corpId: UInt64? = nil, contactPerson: String? = nil, contactNumber: String? = nil, remark: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCorporationOrderResponse {
        try await self.createCorporationOrder(.init(corpName: corpName, owner: owner, codeQuota: codeQuota, expireTime: expireTime, amount: amount, corpId: corpId, contactPerson: contactPerson, contactNumber: contactNumber, remark: remark), region: region, logger: logger, on: eventLoop)
    }
}
