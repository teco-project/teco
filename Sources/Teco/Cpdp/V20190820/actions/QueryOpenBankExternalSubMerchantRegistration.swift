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

extension Cpdp {
    /// QueryOpenBankExternalSubMerchantRegistration请求参数结构体
    public struct QueryOpenBankExternalSubMerchantRegistrationRequest: TCRequestModel {
        /// 渠道商户号。
        public let channelMerchantId: String

        /// 渠道进件号，与外部进件号二者选填其一。
        public let channelRegistrationNo: String?

        /// 外部进件号，与渠道进件号二者选填其一。
        public let outRegistrationNo: String?

        /// 环境类型
        /// __release__:生产环境
        /// __sandbox__:沙箱环境
        /// _不填默认为生产环境_
        public let environment: String?

        public init(channelMerchantId: String, channelRegistrationNo: String? = nil, outRegistrationNo: String? = nil, environment: String? = nil) {
            self.channelMerchantId = channelMerchantId
            self.channelRegistrationNo = channelRegistrationNo
            self.outRegistrationNo = outRegistrationNo
            self.environment = environment
        }

        enum CodingKeys: String, CodingKey {
            case channelMerchantId = "ChannelMerchantId"
            case channelRegistrationNo = "ChannelRegistrationNo"
            case outRegistrationNo = "OutRegistrationNo"
            case environment = "Environment"
        }
    }

    /// QueryOpenBankExternalSubMerchantRegistration返回参数结构体
    public struct QueryOpenBankExternalSubMerchantRegistrationResponse: TCResponseModel {
        /// 错误码。
        /// __SUCCESS__: 成功
        /// __其他__: 见附录-错误码表
        public let errCode: String

        /// 错误消息。
        public let errMessage: String

        /// 返回结果。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: QueryOpenBankExternalSubMerchantRegistrationResult?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case errCode = "ErrCode"
            case errMessage = "ErrMessage"
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 云企付-子商户进件结果查询
    @inlinable
    public func queryOpenBankExternalSubMerchantRegistration(_ input: QueryOpenBankExternalSubMerchantRegistrationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryOpenBankExternalSubMerchantRegistrationResponse> {
        self.client.execute(action: "QueryOpenBankExternalSubMerchantRegistration", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 云企付-子商户进件结果查询
    @inlinable
    public func queryOpenBankExternalSubMerchantRegistration(_ input: QueryOpenBankExternalSubMerchantRegistrationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryOpenBankExternalSubMerchantRegistrationResponse {
        try await self.client.execute(action: "QueryOpenBankExternalSubMerchantRegistration", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 云企付-子商户进件结果查询
    @inlinable
    public func queryOpenBankExternalSubMerchantRegistration(channelMerchantId: String, channelRegistrationNo: String? = nil, outRegistrationNo: String? = nil, environment: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryOpenBankExternalSubMerchantRegistrationResponse> {
        self.queryOpenBankExternalSubMerchantRegistration(.init(channelMerchantId: channelMerchantId, channelRegistrationNo: channelRegistrationNo, outRegistrationNo: outRegistrationNo, environment: environment), region: region, logger: logger, on: eventLoop)
    }

    /// 云企付-子商户进件结果查询
    @inlinable
    public func queryOpenBankExternalSubMerchantRegistration(channelMerchantId: String, channelRegistrationNo: String? = nil, outRegistrationNo: String? = nil, environment: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryOpenBankExternalSubMerchantRegistrationResponse {
        try await self.queryOpenBankExternalSubMerchantRegistration(.init(channelMerchantId: channelMerchantId, channelRegistrationNo: channelRegistrationNo, outRegistrationNo: outRegistrationNo, environment: environment), region: region, logger: logger, on: eventLoop)
    }
}
