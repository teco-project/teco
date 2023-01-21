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

extension Trp {
    /// DescribeMerchantById请求参数结构体
    public struct DescribeMerchantByIdRequest: TCRequestModel {
        /// 商户标识码
        public let merchantId: String

        /// 企业ID
        public let corpId: UInt64?

        public init(merchantId: String, corpId: UInt64? = nil) {
            self.merchantId = merchantId
            self.corpId = corpId
        }

        enum CodingKeys: String, CodingKey {
            case merchantId = "MerchantId"
            case corpId = "CorpId"
        }
    }

    /// DescribeMerchantById返回参数结构体
    public struct DescribeMerchantByIdResponse: TCResponseModel {
        /// 商户信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let merchant: Merchant?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case merchant = "Merchant"
            case requestId = "RequestId"
        }
    }

    /// 查询商户信息
    @inlinable
    public func describeMerchantById(_ input: DescribeMerchantByIdRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeMerchantByIdResponse> {
        self.client.execute(action: "DescribeMerchantById", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询商户信息
    @inlinable
    public func describeMerchantById(_ input: DescribeMerchantByIdRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMerchantByIdResponse {
        try await self.client.execute(action: "DescribeMerchantById", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询商户信息
    @inlinable
    public func describeMerchantById(merchantId: String, corpId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeMerchantByIdResponse> {
        self.describeMerchantById(DescribeMerchantByIdRequest(merchantId: merchantId, corpId: corpId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询商户信息
    @inlinable
    public func describeMerchantById(merchantId: String, corpId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMerchantByIdResponse {
        try await self.describeMerchantById(DescribeMerchantByIdRequest(merchantId: merchantId, corpId: corpId), region: region, logger: logger, on: eventLoop)
    }
}
